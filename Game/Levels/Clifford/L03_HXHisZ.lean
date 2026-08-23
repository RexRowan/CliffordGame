import Game.Metadata

World "Clifford"
Level 3

Title "Change of basis"

Introduction "
Starting from |1⟩ (`oneState`), find a gate sequence that reaches the
same state as applying `Z` directly to |1⟩ would.
"

Statement : ∃ gs : List Gate1,
    prop1 (applyAll1 gs oneState) (applyGate1 .Z oneState) := by
  Hint "H X H is the standard basis-change identity for X — what does
    conjugating X by H turn it into?"
  useGates [.H, .X, .H]
  decide

Conclusion "H X H = Z. Conjugating X by H swaps which axis it acts on."
