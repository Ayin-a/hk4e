--s1为空,s2往后自动引用为怪物潮
--[[
tide_defs = {
	[1] = { sum = 40, min = 8, max = 12},
	[2] = { sum = 40, min = 8, max = 12},	
	[3] = { sum = 40, min = 8, max = 12},		
}

local guide_point_list=
{
	[1]={1006,1007,1008,1009,1010,1011},
	[2]={1012,1013,1014,1015,1016,1017},
}


local monster_tide_defs={
	[1]={{monster_package={1001,1002,1003},route={1,2,2},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5},{monster_package={1001,1002,1003},route={1,2,3},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5}},
	[2]={{monster_package={1001,1002,1003},route={1,2,2},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5},{monster_package={1001,1002,1003},route={1,2,3},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5}},
	[3]={{monster_package={1001,1002,1003},route={1,2,2},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5},{monster_package={1001,1002,1003},route={1,2,3},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5}},
	[4]={{monster_package={1001,1002,1003},route={1,2,2},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5},{monster_package={1001,1002,1003},route={1,2,3},route_points={{1,2,3,4},{1,2,3},{1,2,3,4,5}},speed={1,1,2},tags={1,2,3},count=100,max=6,min=5}}
}
]]--
function LF_Init_Monster_Group()
	t1 = { config_id = 8000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 }
--	t2 = { config_id = 8000002, name = "monster_tide_over", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "", condition = "", action = "action_monster_tide_over", trigger_count = 0}
	for i,v in ipairs(suites) do
		table.insert(v.triggers, t1.name)
--		table.insert(v.triggers, t2.name)
	end
	table.insert(triggers, t1)
--	table.insert(triggers, t2)
	table.insert(variables, {  config_id=50000001,name = "tide_ptr", value = 0})
	table.insert(variables, {  config_id=50000002,name = "challenge_group", value = 0})
	local leftMonsters=0
	for i=1,#tide_defs do
		for j=1,#tide_defs[i] do
			leftMonsters=leftMonsters+tide_defs[i][j].sum
		end
	end
	table.insert(variables, { config_id=50000003, name = "left_monsters", value = leftMonsters})
end

local gear_group_id = defs.gear_group_id or 0

function action_monster_die(context, evt)
	--ScriptLib.PrintContextLog(context, "--------------- award_points ------------")
	--ScriptLib.ExecuteGroupLua(context, gear_group_id, "award_points", {monsters[evt.param1].kill_score or 10})
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "del_monster_number", {0})
	if ScriptLib.GetGroupMonsterCount(context) == 0 then
		monster_tide_over(context)
	end
	
	return 0
end

function MonsterArrive(context)
	local entityId=context.target_entity_id
	ScriptLib.PrintContextLog(context, "TowerDefenseMonsterArrive"..context.target_entity_id)
	for k,v in pairs(monsters) do
		if ScriptLib.GetEntityIdByConfigId(context, v.config_id)==entityId then
			ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, v.config_id)
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "monster_escaped", {0})
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "del_monster_number", {0})
			if ScriptLib.GetGroupMonsterCount(context) == 0 then
				monster_tide_over(context)
			end
			return 0
		end
	end
	return 0
end


--启动此group的初始怪物潮
function start_tide(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", 1)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	local monstersLeft=ScriptLib.GetGroupVariableValue(context, "left_monsters")
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "set_monster_number", {monstersLeft})
	for i=1,#tide_defs[1] do
		ScriptLib.AutoMonsterTide(context, 100+i, defs.group_id,  suites[tide_defs[1][i].suite].monsters, tide_defs[1][i].sum , tide_defs[1][i].min , tide_defs[1][i].max )
	end
	--ScriptLib.AutoMonsterTide(context, 100, defs.group_id, suites[2].monsters, tide_defs[2].sum or tide_defs[1].sum, tide_defs[2].min or tide_defs[1].min, tide_defs[2].max or tide_defs[1].max)
	return 0
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
	for i=1,#tide_defs[tide] do
		ScriptLib.AutoMonsterTide(context, 100*tide+i, defs.group_id,  suites[tide_defs[tide][i].suite].monsters, tide_defs[tide][i].sum , tide_defs[tide][i].min , tide_defs[tide][i].max )
	end
	--ScriptLib.AutoMonsterTide(context, 100, defs.group_id, suites[tide].monsters, tide_defs[tide].sum or tide_defs[1].sum, tide_defs[tide].min or tide_defs[1].min, tide_defs[tide].max or tide_defs[1].max)
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