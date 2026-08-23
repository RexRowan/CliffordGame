import Game.Metadata

World "Clifford"
Level 2

Title "Flip and flip back"

Introduction "
Same idea as level 1, different gate: get from |0⟩ back to |0⟩ using
only `X`.
"

Statement : ∃ gs : List Gate1, prop1 (applyAll1 gs zeroState) zeroState := by
  useGates [.X, .X]
  decide

Conclusion "X² = I as well — X is also its own inverse."
