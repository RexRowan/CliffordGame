import Game.Levels.Clifford.L01_HSquared
import Game.Levels.Clifford.L02_XSquared
import Game.Levels.Clifford.L03_HXHisZ
import Game.Levels.Clifford.L04_HZHisX
import Game.Levels.Clifford.L05_SSquared
import Game.Levels.Clifford.L06_Interference
import Game.Levels.Clifford.L07_BellState

World "Clifford"
Title "Clifford World"

Introduction "
The rules of quantum mechanics are the puzzle mechanics here. Every level
gives you a starting qubit and a target qubit; you pick a sequence of
gates (H, X, Z, S — and for the last level, CNOT) with `useGates`, and
`decide`
checks whether your circuit actually reaches the target.

'Reaches' means *proportional to* the target — the same physical state up
to normalization and global phase, which is the mathematically correct
notion of \"the same quantum state\" (a pure state is a ray in Hilbert
space, not a single vector).
"
