local tri = {
	{ name = "any_monster_die", config_id = 8000100, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 }
}

function Init()
	table.insert(triggers, tri[1])
	for i,v in ipairs(suites) do
		table.insert(v.triggers, tri[1].name)
	end
end

--连接双电桩时击杀怪物
function action_any_monster_die(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		if 2 <= ScriptLib.GetTeamAbilityFloatValue(context, v, "RoleElectricPowerSourceConnectCount") then
			ScriptLib.AddExhibitionAccumulableData(context, v, "SLC_RoleElectricPowerSource_MultiConnect", 1)
		end
	end
	return 0
end

--用3电桩冲击波造成伤害
function SLC_RoleElectricPowerSource_AttackSum(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		ScriptLib.AddExhibitionAccumulableData(context, v, "SLC_RoleElectricPowerSource_AttackSum", 1)
	end
	return 0
end


Init()