import Game.Metadata

World "Clifford"
Level 5

Title "Two quarter turns"

Introduction "
`S` is a quarter phase turn. Starting from |1⟩, find a gate sequence
reaching the same state `Z` would give directly.
"

Statement : ∃ gs : List Gate1,
    prop1 (applyAll1 gs oneState) (applyGate1 .Z oneState) := by
  Hint "A quarter turn twice is a half turn."
  useGates [.S, .S]
  decide

Conclusion "S² = Z — two quarter phase-turns make a half turn."
