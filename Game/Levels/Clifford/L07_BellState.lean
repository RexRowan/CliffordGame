import Game.Metadata

World "Clifford"
Level 7

Title "Two qubits, one fate"

Introduction "
The capstone of this world: starting from |00⟩, apply `H` to the first
qubit only, then `CNOT` (first qubit as control). Confirm the result
really is entangled — proportional to the Bell state (|00⟩ + |11⟩).

Unlike earlier levels, the circuit here is fixed by the level itself (H
then CNOT is the standard Bell-state recipe); your job is to confirm the
computation, via `decide`, rather than search for a sequence.
"

Statement :
    prop2 (applyCNOT (applyH0 (tensor1 zeroState zeroState))) bellTarget := by
  decide

Conclusion "
That's the whole Clifford world. Entanglement means the two qubits can no
longer be described by two separate single-qubit states — measuring one
tells you the other's outcome with certainty.
"
