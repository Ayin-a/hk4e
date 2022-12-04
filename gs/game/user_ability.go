package game

import (
	"hk4e/gs/model"
	"hk4e/protocol/proto"
)

// HandleAbilityInvoke 处理能力调用
func (g *GameManager) HandleAbilityInvoke(player *model.Player, entry *proto.AbilityInvokeEntry) {
	//logger.LOG.Debug("ability invoke handle, entry: %v", entry.ArgumentType)

	switch entry.ArgumentType {
	case proto.AbilityInvokeArgument_ABILITY_INVOKE_ARGUMENT_MIXIN_COST_STAMINA:
		// 消耗耐力

		//costStamina := new(proto.AbilityMixinCostStamina)
		//err := pb.Unmarshal(entry.AbilityData, costStamina)
		//if err != nil {
		//	logger.LOG.Error("unmarshal ability data err: %v", err)
		//	return
		//}

		// 处理技能持续时的耐力消耗
		g.HandleSkillSustainStamina(player)

	}
}
