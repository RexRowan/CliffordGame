import Game.Metadata

World "Clifford"
Level 6

Title "Make it vanish"

Introduction "
Starting from |0⟩, reach `minusState` — the direction (|0⟩ - |1⟩). This
is the first level where more than one gate sequence works; any correct
one is accepted.
"

Statement : ∃ gs : List Gate1, prop1 (applyAll1 gs zeroState) minusState := by
  Hint "Flip first, then create a superposition."
  useGates [.X, .H]
  decide

Conclusion "
Interference: the same target is also reachable via H then Z — try it
if you want to see a second valid solution.
"
