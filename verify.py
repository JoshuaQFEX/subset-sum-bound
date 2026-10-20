#!/usr/bin/env python3
"""Exact-arithmetic checks for a CONDITIONAL subset-sum exponent improvement.

No third-party packages. All decisions use fractions.Fraction. Entropies are
rigorously enclosed by the atanh series for logarithms with a rational tail
bound. Decimal conversion is for displaying results only.

This does NOT verify the baseline's 430 integral inequalities or its
algorithmic correctness. Those remain explicitly stated premises.
"""
from __future__ import annotations
import argparse
from dataclasses import dataclass
from decimal import Decimal, localcontext, ROUND_FLOOR, ROUND_CEILING
from fractions import Fraction as F
from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parent

def need(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)

@dataclass(frozen=True)
class I:
    lo: F
    hi: F
    def __post_init__(self):
        need(self.lo <= self.hi, 'Invalid interval')
    @staticmethod
    def point(x):
        return x if isinstance(x, I) else I(F(x), F(x))
    def __add__(self, other):
        b = I.point(other)
        return I(self.lo+b.lo, self.hi+b.hi)
    __radd__ = __add__
    def __neg__(self):
        return I(-self.hi, -self.lo)
    def __sub__(self, other):
        return self + (-I.point(other))
    def __rsub__(self, other):
        return I.point(other) + (-self)
    def __mul__(self, other):
        b = I.point(other)
        v = [self.lo*b.lo, self.lo*b.hi, self.hi*b.lo, self.hi*b.hi]
        return I(min(v), max(v))
    __rmul__ = __mul__
    def __truediv__(self, other):
        b = I.point(other)
        need(not b.lo <= 0 <= b.hi, 'Division by an interval containing zero')
        return self * I(1/b.hi, 1/b.lo)

def ln_unit(y: F, terms: int = 40) -> I:
    """Enclose ln(y) for 1 <= y <= 2 using exact rational arithmetic."""
    need(F(1) <= y <= F(2), 'Logarithm range-reduction error')
    z = (y-1)/(y+1)
    z2 = z*z
    power = z
    total = F(0)
    for j in range(terms):
        total += 2*power/(2*j+1)
        power *= z2
    # The remaining denominators are all >= 2*terms+1.
    tail = 2*power/((2*terms+1)*(1-z2))
    return I(total, total+tail)

LN2 = ln_unit(F(2))

def log2(x: F) -> I:
    need(x > 0, 'Logarithm of a nonpositive number')
    k = 0
    while x < 1:
        x *= 2
        k -= 1
    while x >= 2:
        x /= 2
        k += 1
    return k + ln_unit(x)/LN2

def h(x: F) -> I:
    need(0 < x < 1, 'Entropy argument outside (0,1)')
    return -x*log2(x) - (1-x)*log2(1-x)

def decimal(x: F, upper: bool = False) -> str:
    with localcontext() as c:
        c.prec = 25
        c.rounding = ROUND_CEILING if upper else ROUND_FLOOR
        return str(Decimal(x.numerator)/Decimal(x.denominator))

def show(name: str, v):
    q = I.point(v)
    print(f'{name}: [{decimal(q.lo)}, {decimal(q.hi, True)}]')

def audit_source(path: Path, facts: dict):
    """Check the transcribed finite data, but NOT the integral inequalities."""
    text = path.read_text(encoding='utf-8')
    rows = {}
    filters = {}
    for line in text.splitlines():
        parts = [x.strip() for x in line.split('&')]
        if len(parts) != 4 or not parts[0].isdigit():
            continue
        idx = int(parts[0])
        reg = re.fullmatch(r'\$\\rho_\{(\d+)\}\$', parts[1])
        if reg:
            z = [F(x.strip()) for x in parts[3].replace('\\', '').split(',')]
            key = (idx, int(reg.group(1)))
            need(key not in rows, f'Duplicate certificate {key}')
            rows[key] = z
        elif re.fullmatch(r'\d+\.\d+', parts[1]):
            coeff = [F(x.strip()) for p in parts[2:] for x in p.replace('\\', '').split(',')]
            need(len(coeff) == 16, f'Bad coefficient count for filter {idx}')
            need(idx not in filters, f'Duplicate filter {idx}')
            filters[idx] = (F(parts[1]), max(map(abs, coeff)))
    need(set(rows) == {(v, j) for v in range(43) for j in range(10)}, 'Expected all 430 certificate rows')
    need(set(filters) == set(range(43)), 'Expected all 43 filters')
    lo = [F(x) for x in ['1', '1.25', '1.6', '2', '2.6', '3.5', '5', '8', '15']]
    for (v, j), z in rows.items():
        need(all(t >= 0 for t in z), f'Negative multiplier at {(v,j)}')
        need(sum(z) <= F(facts['old_sum_multipliers_bound']), f'Multiplier sum too large at {(v,j)}')
        need(z[0] >= 1 if j == 0 else z[0]*lo[j-1] >= 1, f'Chernoff lower bound failed at {(v,j)}')
    for v in range(43):
        need(rows[v,0][0] == F(facts['rho0_chernoff_coefficients'][v]), f'rho0 transcription mismatch {v}')
        need(rows[v,1][0] == F(facts['rho1_chernoff_coefficients'][v]), f'rho1 transcription mismatch {v}')
        need(filters[v][0] == F(facts['filter_kappas'][v]), f'kappa transcription mismatch {v}')
        need(filters[v][1] == F(facts['filter_max_abs_coefficients'][v]), f'coefficient transcription mismatch {v}')
    print('PASS: baseline finite-data transcription and all 430 multiplier rows')

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--baseline', type=Path, help='Optional local copy of the pinned PROOF_0.4877.tex')
    args = parser.parse_args()
    p = {k: F(v) for k, v in json.loads((ROOT/'parameters.json').read_text()).items()}
    f = json.loads((ROOT/'source_facts.json').read_text())
    if args.baseline:
        audit_source(args.baseline, f)
    else:
        print('NOTE: using supplied source-data transcriptions; no local baseline source audit.')
    tau, eta, a, mu, gam, l = (p[k] for k in ['tau','eta','a','mu','gamma','l'])
    r = 1-mu-l
    half = F(1,2)
    ha, h2a, hb = h(a), h(2*a), h(half-a)
    slacks = {
        'C1 coverage': h2a/2-gam,
        'C2 left list': tau-l-(ha-gam)*mu,
        'C3 right classes': I.point(tau-r-(1-gam)*mu),
        'C4 pairs': tau-1+mu-(ha+hb-gam)*mu+eta,
        'C5 right masks': 2*tau-half-hb*mu,
        'C6 left value map': I.point(tau-l),
        'C6 right value map': I.point(tau-r),
        'C6 positive right block': I.point(r),
        'C7 left pays trials': I.point(l-mu*(1-2*a)),
        'C8 reduction': eta-mu*log2(F(3))/2,
        'S2 sampled set below half': I.point(half-mu*(1-2*a)),
        'S3 layer condition': 1-2*a-h2a/2-ha,
        'left masks cheaper than right': hb-ha,
    }
    need(0 < a < F(1,4) and 0 < mu < 1, 'Invalid block/mask parameters')
    print('\nALIAS INEQUALITY SLACKS (exact rational enclosures)')
    for name,v in slacks.items():
        show(name,v)
        need(v.lo > 0, f'Failed strict alias inequality: {name}')
    minimum = min(v.lo for v in slacks.values())
    guard_loss = p['zeta'] + 1/p['input_guard_coefficient']
    need(minimum > guard_loss, 'Input guard and preliminary slack exceed alias slack')
    show('minimum alias slack lower bound', minimum)
    show('guard plus preliminary loss', guard_loss)

    c0 = [F(x) for x in f['rho0_chernoff_coefficients']]
    c1 = [F(x) for x in f['rho1_chernoff_coefficients']]
    cf = [F(x) for x in f['filter_max_abs_coefficients']]
    kap = [F(x) for x in f['filter_kappas']]
    need(all(len(v)==43 for v in [c0,c1,cf,kap]), 'Expected 43 source-data entries')
    need(all(1 <= x <= 2 for x in kap) and max(cf) <= 2, 'Filter score bound prerequisites failed')
    need(min(c0) >= 1 and min(c1) >= 1, 'Wrong Chernoff lower bounds')
    old_tau, old_eta = F(f['old_tau']), F(f['old_eta'])
    D0, G0 = old_eta-old_tau, 2*old_tau-old_eta
    D, G = eta-tau, 2*tau-eta
    q = G/G0
    K = D/q-D0
    da = D/G-D0/G0
    Z = F(f['old_sum_multipliers_bound'])
    need(0 < q < 1 and K > 0 and 0 < D/G < F(1,4), 'Perturbation lemma hypotheses failed')
    need(K == G0*da, 'Certificate-transfer identity failed')
    margins0 = {k:F(v) for k,v in f['assumed_old_moment_margins'].items()}
    margins = {
        'rho0': margins0['rho0'] + eta-old_eta - max(c0)*K,
        'rho1': margins0['rho1'] + eta-old_eta - max(c1)*F(5,4)*K,
        'rho2_to_rho8': margins0['rho2_to_rho8'] + eta-old_eta - Z*15*K,
        'rho9': margins0['rho9'] + eta-old_eta - Z*256*da,
    }
    print('\nCHECKSUM CERTIFICATE TRANSFER (conditional on original moment bounds)')
    for name,value in [('Delta',D),('Gamma',G),('q',q),('K',K),('delta_a_Gamma',da),('max rho0 c',max(c0)),('max rho1 c',max(c1))]:
        show(name,value)
    for name,value in margins.items():
        show(name+' new continuous log2 margin lower bound', value)
        need(value > p['finite_circle_moment_margin'], f'Moment transfer failed: {name}')
    need(Z*(1+da) < 419, 'Adjusted multiplier sum exceeds the bound')
    # Finite-circle convergence is a baseline lemma, not a numeric test here.
    error_exponent = p['finite_circle_moment_margin']-(18+6*419)*p['epsilon']
    need(error_exponent > 0, 'Pattern errors consume the moment margin')
    work = tau+20*p['epsilon']
    need(work < p['target_exponent'], 'No strict exponent slack to absorb subexponential factors')
    show('remaining mean-square-error exponent', error_exponent)
    show('work exponent before subexponential factors', work)
    show('pure exponent gap', p['target_exponent']-work)
    print('\nPASS: every NEW scalar inequality, using exact rational arithmetic.')
    print('CONDITIONAL RESULT: O(2^(0.487676 n)), assuming the cited baseline lemmas and moment bounds.')
    print('Not a Lean proof; not an independent verification of the underlying subset-sum algorithm.')

if __name__ == '__main__':
    main()
