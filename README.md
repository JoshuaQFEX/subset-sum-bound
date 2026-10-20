# Subset Sum bound

A **conditional refinement to `O(2^(0.487676 n))`** of the claimed
`O(2^(0.4877 n))` construction in `a-kapila/maths-proofs`.

**Status:** The new scalar inequalities pass exact rational checks. The
underlying algorithmic lemmas and the original 430 moment inequalities
remain inherited assumptions. This is not a formal proof-assistant
verification, an independently verified world record, or a practical
speedup claim.

## Paper

[LaTeX source](paper.tex). Compile it with `make pdf` to produce `paper.pdf`.
The paper includes the conditional theorem, exact parameters, alias
constraints, the certificate-transfer lemma, the error analysis and
pinned references. The internal work exponent is `0.48767595`; the final
`0.487676` exponent absorbs the stated subexponential and polynomial factors.

## Reproduce the checks

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
The included verification run used the supplied transcriptions, not this
optional audit.

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

PDFs and intermediate LaTeX files are generated locally and ignored by Git.
`make clean` removes the generated paper files.

## Pinned dependencies

- Baseline manuscript: [`subset-sum/PROOF_0.4877.tex`](https://github.com/a-kapila/maths-proofs/blob/44c34961b56784c220a6e913cc068d57dc37c5a3/subset-sum/PROOF_0.4877.tex),
  commit `44c34961b56784c220a6e913cc068d57dc37c5a3`.
- Foundational preprint: [OpenAI, *Subset Sum in Time O(2^(0.49n))*](https://github.com/openai/math/blob/fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb/preprints/Subset-Sum-in-Time-2-power-0-49n-October-4-2026/README.md),
  dated 4 October 2026, repository commit `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`.
- Intended specification: [Big O Speedrun Subset Sum benchmark](https://bigospeedrun.com/subset-sum).

## Provenance

Prepared with ChatGPT on 20 October 2026. The written derivation and the
scalar checker have different verification scopes, stated in the paper.
No licence is added by this repository; the baseline sources are linked,
not redistributed.
