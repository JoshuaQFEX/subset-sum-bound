# Subset Sum bound

**Author:** Joshua Wharton, QFEX  
**Email:** [joshua@qfex.com](mailto:joshua@qfex.com)

A **conditional refinement to `O(2^(0.487676 n))`** of the claimed `O(2^(0.4877 n))` construction in `a-kapila/maths-proofs`.

**Latest verified milestone:** all 43 filters, all 430 finite certificate records and their complete filter/region coverage now have compiled Lean proofs. The full project build, dependency audits, proof-gap scan and independent Python checks passed in [run 39487903482](https://github.com/JoshuaQFEX/subset-sum-bound/actions/runs/39487903482). See [the milestone and evidence](FINITE_DATA_MILESTONE.md).

**Overall status:** this is not an end-to-end verified Subset Sum solver or a verified world record. The original continuous moment inequalities and remaining algorithmic guarantees still require proofs. The written paper remains conditional.

## Paper and proofs

[Paper (PDF)](paper.pdf) | [LaTeX source](paper.tex) | [Lean source](SubsetSum.lean) | [Current formalisation scope](FORMALIZATION.md) | [Finite-data theorem](SubsetSum/FilterData.lean)

The paper contains the conditional theorem, exact parameters, alias constraints, certificate-transfer argument, error analysis and pinned references. The internal work exponent is `0.48767595`; the displayed exponent `0.487676` absorbs the stated subexponential and polynomial factors.

The Lean development includes real-logarithm/entropy inequalities, transfer identities, exact numerical budgets, sublinear-exponent absorption, finite-subset decision identities, finite isolation and transformation proofs, supporting layer-counting arguments and the complete finite-data theorem. The integral-transfer results retain explicit original-moment hypotheses.

## Reproduce the Lean checks

With elan installed, the committed sources can be checked directly:

```sh
lake update
lake exe cache get
lake build
lake env lean Audit.lean
lake env lean FiniteDataAudit.lean
```

Lean is pinned to `4.24.0` and mathlib to `f897ebcf72cd16f89ab4577d0c826cd14afaafc7`. The generated finite-data sources are committed; they do not need to be regenerated for a normal build.

The [verification record](verification/finite-data.json) identifies the checked source revision and hashes every generated Lean file. [Build output](verification/finite-data-build.txt) and [finite-data dependencies](verification/finite-data-axioms.txt) are included. [LEAN_VERIFICATION.md](LEAN_VERIFICATION.md) records the earlier core milestone.

## Independent numerical checks

```sh
python3 verify.py
# Or:
make verify
```

The checker uses standard-library exact rational intervals. [parameters.json](parameters.json) contains exact inputs; [source_facts.json](source_facts.json) contains transcribed baseline data and explicitly assumed moment margins. [verification.txt](verification.txt) retains the original checker output.

The optional command below checks finite-data transcriptions against a local baseline manuscript. It does not prove the original integrals or the complete algorithm:

```sh
python3 verify.py --baseline /path/to/PROOF_0.4877.tex
```

To regenerate the Lean tables, use the exact pinned manuscript:

```sh
python3 tools/generate_filter_data.py /path/to/PROOF_0.4877.tex SubsetSum/FilterData.lean
lake build
lake env lean FiniteDataAudit.lean
```

The generator authenticates the original Git blob and emits exact rational constants. Lean, not Python, establishes the finite inequalities.

## Build the PDF

```sh
make pdf
```

This requires pdfLaTeX and the packages named in `paper.tex`. The compiled [paper.pdf](paper.pdf) is included. Intermediate LaTeX files remain ignored. The paper is unchanged by the finite-data milestone; [FORMALIZATION.md](FORMALIZATION.md) explains the companion proof's current scope.

## Pinned references and provenance

The baseline is [`subset-sum/PROOF_0.4877.tex`](https://github.com/a-kapila/maths-proofs/blob/44c34961b56784c220a6e913cc068d57dc37c5a3/subset-sum/PROOF_0.4877.tex), commit `44c34961b56784c220a6e913cc068d57dc37c5a3`. The foundational preprint is [OpenAI, *Subset Sum in Time O(2^(0.49n))*](https://github.com/openai/math/blob/fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb/preprints/Subset-Sum-in-Time-2-power-0-49n-October-4-2026/README.md), pinned at `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`. The intended specification is the [Big O Speedrun benchmark](https://bigospeedrun.com/subset-sum).

Prepared with ChatGPT, 20 October 2026. The numerical tables are transcribed from the pinned baseline and attributed in their generated source headers. The full baseline manuscript is linked rather than redistributed. No licence is added by this repository. The written derivation, Python checker and Lean development have distinct verification scopes.
