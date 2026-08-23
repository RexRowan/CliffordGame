import Game.Metadata

World "Clifford"
Level 4

Title "Change of basis, the other way"

Introduction "
Same idea, mirrored: starting from |0⟩, find a gate sequence that reaches
the same state as applying `X` directly would.
"

Statement : ∃ gs : List Gate1,
    prop1 (applyAll1 gs zeroState) (applyGate1 .X zeroState) := by
  useGates [.H, .Z, .H]
  decide

Conclusion "H Z H = X — the mirror image of the previous level's identity."
