# Subset Sum bound

**Author:** Joshua Wharton, QFEX  
**Email:** [joshua@qfex.com](mailto:joshua@qfex.com)

A **conditional refinement to `O(2^(0.487676 n))`** of the claimed
`O(2^(0.4877 n))` construction in `a-kapila/maths-proofs`.

**Status:** The repository contains a written conditional argument, exact
rational Python checks, and a Lean 4 formalisation of specified components.
The original algorithmic lemmas and moment inequalities remain dependencies;
this is **not an end-to-end verified Subset Sum solver or a verified world
record**. See [the formalisation scope](FORMALIZATION.md) before interpreting
a successful Lean build.

## Paper and Lean proofs

[Read the paper (PDF)](paper.pdf) | [LaTeX source](paper.tex) |
[Lean source](SubsetSum.lean) | [Formalisation scope](FORMALIZATION.md)

The paper contains the conditional theorem, exact parameters, alias
constraints, certificate-transfer argument, error analysis and pinned
references. The internal work exponent is `0.48767595`; the final exponent
`0.487676` absorbs the stated subexponential and polynomial factors.

The Lean companion formalises the real-logarithm and entropy bounds, alias
side conditions, certificate-transfer inequalities and integral identities,
exact numerical margins, sublinear-exponent absorption, and deterministic
subset-sum decision identities. Original moment bounds are explicit
hypotheses where required. The companion does not change the full paper's
conditional status.

## Reproduce the Lean checks

With elan installed:

```sh
lake update
lake exe cache get
lake build
lake env lean Audit.lean
```

The toolchain is Lean `4.24.0`; mathlib is pinned to commit
`f897ebcf72cd16f89ab4577d0c826cd14afaafc7`. The
[Lean workflow](.github/workflows/lean.yml) records build and axiom-audit
results for the tested commit. The full theorem map and remaining
unformalised dependencies are in [FORMALIZATION.md](FORMALIZATION.md).

## Reproduce the independent Python checks

Requires Python 3.7 or later; no third-party packages or network access.

```sh
python3 verify.py
# Or:
make verify
```

The checked output is in [verification.txt](verification.txt).
[parameters.json](parameters.json) contains exact decimal-rational inputs.
[source_facts.json](source_facts.json) contains transcribed baseline data
and explicitly assumed original moment margins.

An optional finite-data audit accepts a local copy of the baseline source:

```sh
python3 verify.py --baseline /path/to/PROOF_0.4877.tex
```

Use the exact pinned source linked below. This option checks the
transcriptions and all 430 multiplier rows; it does **not** rerun their
integrals, prove the underlying algorithm, or authenticate file provenance.
The included Python verification run used the supplied transcriptions,
not this optional audit. The Lean numerical proofs do not use the Python
output as an oracle.

## Build the PDF

Requires a standard LaTeX installation with pdfLaTeX and the packages
listed in `paper.tex` (including Latin Modern, AMS, booktabs, microtype,
xurl, hyperref and fancyvrb).

```sh
make pdf
# Or, run twice:
pdflatex -interaction=nonstopmode -halt-on-error -no-shell-escape paper.tex
pdflatex -interaction=nonstopmode -halt-on-error -no-shell-escape paper.tex
```

The compiled [paper.pdf](paper.pdf) is included in the repository.
Intermediate LaTeX files remain ignored. `make clean` removes local build
outputs; run `make pdf` afterwards to regenerate the PDF. The Lean scope
is documented separately rather than silently changing the earlier paper.

## Pinned dependencies

- Baseline manuscript: [`subset-sum/PROOF_0.4877.tex`](https://github.com/a-kapila/maths-proofs/blob/44c34961b56784c220a6e913cc068d57dc37c5a3/subset-sum/PROOF_0.4877.tex),
  commit `44c34961b56784c220a6e913cc068d57dc37c5a3`.
- Foundational preprint: [OpenAI, *Subset Sum in Time O(2^(0.49n))*](https://github.com/openai/math/blob/fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb/preprints/Subset-Sum-in-Time-2-power-0-49n-October-4-2026/README.md),
  dated 4 October 2026, repository commit `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`.
- Intended specification: [Big O Speedrun Subset Sum benchmark](https://bigospeedrun.com/subset-sum).

## Provenance

Prepared with ChatGPT on 20 October 2026. The written derivation, Python
checker and Lean companion have distinct verification scopes, stated in
the paper and formalisation guide. No licence is added by this repository;
the baseline sources are linked, not redistributed.
