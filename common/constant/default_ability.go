package constant

import "hk4e/pkg/endec"

var (
	DEFAULT_ABILITY_STRINGS []string
	DEFAULT_ABILITY_HASHES  []int32
	DEFAULT_ABILITY_NAME    int32
)

func init() {
	DEFAULT_ABILITY_STRINGS = []string{
		"Avatar_DefaultAbility_VisionReplaceDieInvincible",
		"Avatar_DefaultAbility_AvartarInShaderChange",
		"Avatar_SprintBS_Invincible",
		"Avatar_Freeze_Duration_Reducer",
		"Avatar_Attack_ReviveEnergy",
		"Avatar_Component_Initializer",
		"Avatar_FallAnthem_Achievement_Listener",
	}
	DEFAULT_ABILITY_HASHES = make([]int32, 0)
	for _, v := range DEFAULT_ABILITY_STRINGS {
		DEFAULT_ABILITY_HASHES = append(DEFAULT_ABILITY_HASHES, endec.Hk4eAbilityHashCode(v))
	}
	DEFAULT_ABILITY_NAME = endec.Hk4eAbilityHashCode("Default")
}
