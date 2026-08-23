import Game.Levels.Clifford

Title "CliffordGame"
Introduction "
A puzzle game where the rules of quantum mechanics are the game
mechanics, and Lean is the referee. Build a circuit by choosing gates;
`decide` checks whether it reaches the target state.

States are checked *projectively* — proportional up to any nonzero
scalar — which is the mathematically correct notion of \"same physical
state\", and it's why every gate here (including H) lives entirely in the
Gaussian rationals with no square roots anywhere.
"

Info "
CliffordGame's Clifford world covers single-qubit Clifford + S identities
and one entangling (Bell state) level. Level content and the underlying
math are shared with the companion Qiskit-Ecosystem package,
[qiskit-lean-verify-game](https://github.com/RexRowan/qiskit-lean-verify-game),
which grades the same circuits using Qiskit's own Statevector simulation
instead of Lean.

Source: https://github.com/RexRowan/CliffordGame
"

Languages "en"
CaptionShort "Clifford Game"
CaptionLong "Quantum circuit puzzles, checked by Lean instead of a physics simulator."

MakeGame
