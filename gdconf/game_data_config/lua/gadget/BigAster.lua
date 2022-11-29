local defs = {
	player_energy = "AVATAR_ASTER_SCORE"
}

--接收来自abilityAction的消息，启动玩法进度更新逻辑
function OnClientExecuteReq(context, param1, param2, param3)
	--玩家提交param2->1
	if param2 == 1 then 
		--获取玩家当前能量
		local uid = ScriptLib.GetUidByTeamEntityId(context, param3)
		local energy = ScriptLib.GetTeamAbilityFloatValue(context, uid, defs.player_energy)
		--将当前能量写入uid_value
		local old_energy = ScriptLib.GetGadgetPlayUidValue(context, 0, 0, uid, defs.player_energy)
		ScriptLib.PrintLog("## uid:"..uid.." | energy:"..energy.." | old_energy:"..old_energy)
		--ScriptLib.SetGadgetPlayUidValue(context, 0, 0, uid, defs.player_energy, old_energy + energy)
		--通知ability可以清掉自己的能量计数
		ScriptLib.GadgetPlayUidOp(context, 0, 0, {uid}, 1, "clear_energy", {})
		--增加玩法总进度
		ScriptLib.AddScenePlayBattleProgress(context, 133001413, energy)
		return 0
	end
	return -1
end