import Game.Metadata

World "Clifford"
Level 1

Title "Do it twice, get nothing"

Introduction "
Starting from |0⟩ (`zeroState`), find a sequence of gates from `Gate1`
(`H`, `X`, `Z`, `S`) that brings you back to |0⟩.

Supply your gate list with `useGates [...]`, then close the resulting equation
with `decide`.
"

Statement : ∃ gs : List Gate1, prop1 (applyAll1 gs zeroState) zeroState := by
  Hint "What gate undoes itself if you apply it twice?"
  useGates [.H, .H]
  decide

Conclusion "H² = I — applying a self-inverse gate twice is the identity."

TacticDoc useGates "Provide a candidate gate list to close an existential
goal, e.g. `useGates [.H, .X]`. Reduces the goal to checking that gate
list actually reaches the target."

TacticDoc decide "Close a decidable proposition by direct computation —
here, checking whether two qubit states are proportional."

NewTactic useGates decide
