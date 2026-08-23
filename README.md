# CliffordGame

A [lean4game](https://github.com/leanprover-community/lean4game) submission:
quantum circuit puzzles where Lean is the referee. Built on the real
[GameSkeleton](https://github.com/hhu-adam/GameSkeleton) template, not a
bespoke frontend.

Level content and underlying math are shared with the companion
Qiskit-Ecosystem package,
[qiskit-lean-verify-game](https://github.com/RexRowan/qiskit-lean-verify-game),
which grades the same circuits using Qiskit's `Statevector` instead of Lean.

## What's actually verified here

**The full build now actually passes.** I fetched the real GameServer
dependency (`lake update -R`) and ran the full `lake build` in a sandboxed
environment — all 54 build steps succeeded, including all 7 levels and
`Game.lean` itself. `lake-manifest.json` is now committed, generated for
real (not hand-written), so `lake build` should work immediately after
cloning without needing `lake update` first.

Two real bugs were caught and fixed in the process of getting to a clean
build, not before:

1. `prop1`/`prop2` in `CliffordMath.lean` needed to be `abbrev`, not `def`,
   or `decide` can't see through them to find the underlying
   `DecidableEq` instance. Caught by a standalone compile of just the math
   file (no GameServer), before the wrapper layer was even written.
2. **`use` is a Mathlib tactic, not core Lean** — and this project
   deliberately has no Mathlib dependency (see `CliffordMath.lean`'s
   module docstring). Every level's authored proof called `use`, which
   doesn't exist without Mathlib, and the full build failed with "unknown
   tactic" on all six existential levels until this was caught. Fixed
   with a small custom tactic macro, `useGates`, defined once in
   `CliffordMath.lean`, that does exactly what `use` would without
   pulling in Mathlib.

Both bugs were invisible without actually running `lake build` against
the real dependency — reading the syntax, even carefully, wouldn't have
caught either one.

## Structure

- `Game/CliffordMath.lean` — core math, no Mathlib dependency (same
  choice `qiskit-zx-verified` made), verified in isolation (see above).
- `Game/Metadata.lean` — imports `GameServer` and `Game.CliffordMath`,
  available in every level.
- `Game/Levels/Clifford.lean` — the Clifford world file.
- `Game/Levels/Clifford/L01..L07.lean` — the seven levels (see
  `docs/ROADMAP.md`... actually not carried over yet, see below).
- `lakefile.lean`, `lean-toolchain`, `.devcontainer/`, `.github/workflows/`
  — copied verbatim from GameSkeleton.

## Not carried over from the earlier bespoke scaffold

The original `docs/ARCHITECTURE.md` / `docs/ROADMAP.md` / `Checker.lean`
files from before this repo was rebuilt on the real template are
superseded by this structure and should be deleted, not merged in. Level
8 (ZX spider fusion) is still deliberately out of scope for the same
reason noted before: it isn't a "circuit reaches a state" claim.
