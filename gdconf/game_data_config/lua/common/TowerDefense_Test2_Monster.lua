--s1为空,s2往后自动引用为怪物潮
--[[
tide_defs = {
	[1] = { sum = 40, min = 8, max = 12},
	[2] = { sum = 40, min = 8, max = 12},	
	[3] = { sum = 40, min = 8, max = 12},		
}
--]]

function LF_Init_Monster_Group()
	t1 = { config_id = 8000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 }
--	t2 = { config_id = 8000002, name = "monster_tide_over", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "", condition = "", action = "action_monster_tide_over", trigger_count = 0}
	for i,v in ipairs(suites) do
		table.insert(v.triggers, t1.name)
--		table.insert(v.triggers, t2.name)
	end
	table.insert(triggers, t1)
--	table.insert(triggers, t2)
	table.insert(variables, { config_id=50000001,name = "tide_ptr", value = 0})
	table.insert(variables, { config_id=50000002,name = "challenge_group", value = 0})
end

local gear_group_id = defs.gear_group_id or 0

function action_monster_die(context, evt)
	--ScriptLib.PrintContextLog(context, "--------------- award_points ------------")
	ScriptLib.ExecuteGroupLua(context, gear_group_id, "award_points", {monsters[evt.param1].kill_score or 10})
	if ScriptLib.GetGroupMonsterCount(context) == 0 then
		monster_tide_over(context)
	end
	return 0
end

--启动此group的初始怪物潮
function start_tide(context, prev_context, param1,param2,param3)
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", 2)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	ScriptLib.AutoMonsterTide(context, 100, defs.group_id, suites[2].monsters, tide_defs[2].sum or tide_defs[1].sum, tide_defs[2].min or tide_defs[1].min, tide_defs[2].max or tide_defs[1].max)
end

function monster_tide_over(context)
	ScriptLib.PrintContextLog(context, "## monster_tide_over")
	local tide = ScriptLib.GetGroupVariableValue(context, "tide_ptr")
	if tide >= #tide_defs then
		local challenge_group = ScriptLib.GetGroupVariableValue(context, "challenge_group")
		ScriptLib.PrintContextLog(context, "## challenge_group = "..challenge_group)
		ScriptLib.ExecuteGroupLua(context, challenge_group, "tide_done", {0})
		ScriptLib.PrintContextLog(context, "## TD_LOG : Group Monster Tide End -> "..defs.group_id)
		return 0
	end
	--tide自然结束,开启下一tide
	--if evt.param1 == 0 then
		tide = tide+1
		ScriptLib.AutoMonsterTide(context, 100, defs.group_id, suites[tide].monsters, tide_defs[tide].sum or tide_defs[1].sum, tide_defs[tide].min or tide_defs[1].min, tide_defs[tide].max or tide_defs[1].max)
		ScriptLib.SetGroupVariableValue(context, "tide_ptr", tide)
		return 0
	--else ScriptLib.PrintContextLog(context, "## TD_LOG : Group Monster Tide Force Stop -> "..defs.group_id.." | tide_id = "..tide)
	--end
	--return 0
end

function fix_gear(context, prev_context, param1, param2, param3)
	ScriptLib.ExecuteGroupLua(context, defs.gear_group_id, "fix_gear", {param1})
end

LF_Init_Monster_Group()