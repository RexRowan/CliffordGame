import GameServer
import Game.CliffordMath

/-! Available in every level. `CliffordMath` is the only import beyond
`GameServer` itself — deliberately no Mathlib dependency (see
`Game/CliffordMath.lean` for why), which keeps this game's build fast
compared to games that depend on Mathlib.
-/
