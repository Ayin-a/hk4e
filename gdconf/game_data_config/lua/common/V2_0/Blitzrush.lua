local define = {
	linkCount = "RoleElectricPowerSourceConnectCount",  --连线时，玩家被上的global_value
}

local extraTriggers={
	{ config_id = 8000001, name = "EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE", trigger_count = 0 }
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, { config_id=50000001,name = "linkedKillNum", value = 0, no_refresh = true})
end

function action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE(context, evt)
	--检查击杀者是否带2个以上连线
	if evt.param2 ~= 0 then
		if ScriptLib.GetTeamAbilityFloatValue(context, evt.param2, define.linkCount) >= 2 then
			--增加GlobalVar计数
			ScriptLib.ChangeGroupVariableValue(context, "linkedKillNum", 1)
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)