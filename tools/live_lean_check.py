#!/usr/bin/env python3
"""Incrementally check this research branch during an active proof-development session.

Results are tied to exact source revisions and written to a separate results branch.
The job stops at a sentinel or its fixed deadline. It never modifies proof sources.
"""
from __future__ import annotations
import base64
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import re
import subprocess
import time
import urllib.error
import urllib.request

REPO = 'JoshuaQFEX/subset-sum-bound'
SOURCE = 'complete-isolation'
RESULTS = 'lean-check-results'
TOKEN = os.environ['GH_TOKEN']
API = 'https://api.github.com/repos/' + REPO
LOGDIR = Path('/tmp/live-proof-logs')
LOGDIR.mkdir(exist_ok=True)


def request(path, method='GET', payload=None):
    body = None if payload is None else json.dumps(payload).encode()
    req = urllib.request.Request(API + path, data=body, method=method, headers={
        'Authorization': 'Bearer ' + TOKEN,
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
        'Content-Type': 'application/json',
    })
    with urllib.request.urlopen(req, timeout=60) as response:
        return json.load(response)


def publish(path: str, text: str, source_sha: str) -> None:
    payload = {'message': 'Record proof check for ' + source_sha[:12],
               'content': base64.b64encode(text.encode()).decode(), 'branch': RESULTS}
    try:
        old = request('/contents/' + path + '?ref=' + RESULTS)
    except urllib.error.HTTPError as err:
        if err.code != 404:
            raise
    else:
        payload['sha'] = old['sha']
    request('/contents/' + path, 'PUT', payload)


def execute(command: list[str], log: list[str]) -> int:
    log.append('$ ' + ' '.join(command))
    result = subprocess.run(command, text=True, stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT, timeout=900)
    log.append(result.stdout)
    return result.returncode


def main() -> None:
    deadline = time.monotonic() + 6000
    previous = None
    while time.monotonic() < deadline:
        ref = request('/git/ref/heads/' + SOURCE)
        sha = ref['object']['sha']
        if sha == previous:
            time.sleep(5)
            continue
        subprocess.run(['git', 'fetch', '--depth=1', 'origin', SOURCE], check=True)
        subprocess.run(['git', 'reset', '--hard', sha], check=True)
        if Path('LIVE_PROOF_STOP').exists():
            publish('live-check/stopped.json', json.dumps({'source_sha': sha, 'stopped': True}), sha)
            print('Stopped by the source-branch sentinel.', flush=True)
            return
        log: list[str] = []
        build = execute(['lake', 'build'], log)
        scratch = execute(['lake', 'env', 'lean', 'Scratch.lean'], log) if Path('Scratch.lean').exists() else 0
        audit = execute(['lake', 'env', 'lean', 'Audit.lean'], log) if build == 0 else 1
        proof_files = [Path('SubsetSum.lean'), Path('Audit.lean'), *Path('SubsetSum').rglob('*.lean')]
        gaps = [str(p) for p in proof_files if p.exists() and re.search(r'\b(sorry|admit|axiom|native_decide)\b', p.read_text())]
        text = '\n'.join(log)
        clean = not gaps and 'sorryAx' not in text
        success = build == 0 and scratch == 0 and audit == 0 and clean
        report = {'source_sha': sha, 'build_exit': build, 'scratch_exit': scratch,
                  'audit_exit': audit, 'gap_files': gaps, 'success': success,
                  'checked_at': datetime.now(timezone.utc).isoformat(),
                  'run_id': os.environ.get('GITHUB_RUN_ID'), 'log_truncated': len(text) > 700000}
        LOGDIR.joinpath(sha + '.log').write_text(text)
        publish('live-check/latest.log', text[-700000:], sha)
        publish('live-check/latest.json', json.dumps(report, indent=2), sha)
        request('/statuses/' + sha, 'POST', {'state': 'success' if success else 'failure',
            'context': 'Incremental Lean kernel check',
            'description': 'Build, dependency audit and proof-gap scan',
            'target_url': 'https://github.com/' + REPO + '/actions/runs/' + os.environ['GITHUB_RUN_ID']})
        print(json.dumps(report), flush=True)
        previous = sha
    print('The bounded active development session has ended.', flush=True)


if __name__ == '__main__':
    main()
