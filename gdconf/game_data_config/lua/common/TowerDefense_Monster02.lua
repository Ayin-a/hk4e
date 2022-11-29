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


package_tide_defs={
        [1]={{monster_package={2001,2002,2003},route=1,route_points={1,2,3,4,5,6,7,8},tags=1,count=100,max=6,min=5,fill_time=2,fill_count=2},{monster_package={2001,2002,2003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=2,count=20,max=6,min=5}},
        [2]={{monster_package={2001,2002,2003},route=1,route_points={1,2,3,4,5,6,7,8},tags=1,count=100,max=6,min=5},{monster_package={2001,2002,2003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=2,count=20,max=6,min=5}},
        [3]={{monster_package={2001,2002,2003},route=1,route_points={1,2,3,4,5,6,7,8},tags=1,count=100,max=6,min=5},{monster_package={2001,2002,2003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=2,count=20,max=6,min=5}},
        [4]={{monster_package={2001,2002,2003},route=1,route_points={1,2,3,4,5,6,7,8},tags=1,count=100,max=6,min=5},{monster_package={2001,2002,2003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=2,count=20,max=6,min=5}},
}
]]--
function LF_Init_Monster_Group()
	t1 = { config_id = 8000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 }
	t2 = { config_id = 8000002,name = "TIMER_EVENT_DELAY", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_END_DELAY", trigger_count = 0 }
	for i,v in ipairs(suites) do
		table.insert(v.triggers, t1.name)
		table.insert(v.triggers, t2.name)
	end
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(variables, { config_id=50000001,name = "tide_ptr", value = 0})
	table.insert(variables, { config_id=50000002,name = "challenge_group", value = 0})
	local leftMonsters=0
	for i=1,#package_tide_defs do
		for j=1,#package_tide_defs[i] do
			leftMonsters=leftMonsters+package_tide_defs[i][j].count
		end
	end
	table.insert(variables, { config_id=50000003,name = "left_monsters", value = leftMonsters})
	table.insert(variables, { config_id=50000004,name = "monster_tide_index", value = 1})
	table.insert(variables, { config_id=50000005,name = "extra_monster_65", value = 0})
	table.insert(variables, { config_id=50000006,name = "extra_monster_66", value = 0})
	table.insert(variables, { config_id=50000007,name = "extra_monster_67", value = 0})
	table.insert(variables, { config_id=50000008,name = "extra_monster_68", value = 0})
	table.insert(variables, { config_id=50000009,name = "extra_monster_69", value = 0})
	table.insert(variables, { config_id=50000010,name = "extra_monster_70", value = 0})
	table.insert(variables, { config_id=50000011,name = "buff_monster_4112", value = 0})
	table.insert(variables, { config_id=50000012,name = "buff_monster_4113", value = 0})
	table.insert(variables, { config_id=50000013,name = "monster_kill_count", value = 0})

end

local gear_group_id = defs.gear_group_id or 0

--挑战开始时额外创建怪物
function extra_monster_65(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_65", 1)
	return 0
end

function extra_monster_66(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_66", 1)
	return 0
end

function extra_monster_67(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_67", 1)
	return 0
end

function extra_monster_68(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_68", 1)
	return 0
end

function extra_monster_69(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_69", 1)
	return 0
end

function extra_monster_70(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "extra_monster_70", 1)
	return 0
end
--创建的怪物附带词缀
function buff_monster_4112(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "buff_monster_4112", 1)
	return 0
end

function buff_monster_4113(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "buff_monster_4113", 1)
	return 0
end

function action_monster_die(context, evt)
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "del_monster_number", {0})
	local monster_kill_count=ScriptLib.GetGroupVariableValue(context, "monster_kill_count")
	monster_kill_count=monster_kill_count+1
	if monster_kill_count >= ScriptLib.GetGroupVariableValue(context, "left_monsters") then
		monster_tide_over(context)
	end
	ScriptLib.SetGroupVariableValue(context, "monster_kill_count", monster_kill_count)
	return 0
end

function MonsterArrive(context)
	local entityId=context.target_entity_id
	ScriptLib.PrintContextLog(context, "TowerDefenseMonsterArrive"..context.target_entity_id)
	for k,v in pairs(points) do
		if ScriptLib.GetEntityIdByConfigId(context, v.config_id)==entityId then
			ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, v.config_id)
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "monster_escaped", {0})
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "del_monster_number", {0})
			local monster_kill_count=ScriptLib.GetGroupVariableValue(context, "monster_kill_count")
			monster_kill_count=monster_kill_count+1
			if monster_kill_count >= ScriptLib.GetGroupVariableValue(context, "left_monsters") then
				monster_tide_over(context)
			end
			ScriptLib.SetGroupVariableValue(context, "monster_kill_count", monster_kill_count)
			return 0
		end
	end
	return 0
end

function set_monster_number_req(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	local monstersLeft=ScriptLib.GetGroupVariableValue(context, "left_monsters")
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_65")==1 then
		monstersLeft=monstersLeft+1
	end
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_66")==1 then
		monstersLeft=monstersLeft+1
	end
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_67")==1 then
		monstersLeft=monstersLeft+1
	end
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_68")==1 then
		monstersLeft=monstersLeft+1
	end
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_69")==1 then
		monstersLeft=monstersLeft+1
	end
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_70")==1 then
		monstersLeft=monstersLeft+1
	end
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "set_monster_number", {monstersLeft})
	ScriptLib.SetGroupVariableValue(context, "left_monsters", monstersLeft)
	return 0
end


--启动此group的初始怪物潮
function start_tide(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	math.randomseed(ScriptLib.GetServerTime(context))
	local monster_pool_table=ScriptLib.GetMechanicusMonsterPoolVec(context,ScriptLib.GetGroupVariableValue(context, "challenge_group"),999)
	local affix={}
	if ScriptLib.GetGroupVariableValue(context, "buff_monster_4112")==1 then
		table.insert(affix,4112)
	end
	if ScriptLib.GetGroupVariableValue(context, "buff_monster_4113")==1 then
		table.insert(affix,4113)
	end
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", 1)
	for i=1,#affix do
		ScriptLib.PrintContextLog(context, "## TD_LOG : AFFIX TABLE"..affix[i])
	end
	--local monstersLeft=ScriptLib.GetGroupVariableValue(context, "left_monsters")
	local index= ScriptLib.GetGroupVariableValue(context, "monster_tide_index")
	for i=1,#package_tide_defs[1] do
		ScriptLib.AutoPoolMonsterTide(context, index, defs.group_id, {monster_pool_table[index]},package_tide_defs[1][i].route, package_tide_defs[1][i].route_points, affix, {total_count=package_tide_defs[1][i].count, min_count=package_tide_defs[1][i].min, max_count=package_tide_defs[1][i].max, tag=package_tide_defs[1][i].tags,fill_time=package_tide_defs[1][i].fill_time or 5,fill_count=package_tide_defs[1][i].fill_count or 5})
		index=index+1
	end
	--创建翻牌子的怪物
	if ScriptLib.GetGroupVariableValue(context, "extra_monster_65")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 65, defs.group_id, {12040},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points, affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	if ScriptLib.GetGroupVariableValue(context, "extra_monster_66")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 66, defs.group_id, {12041},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points, affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	if ScriptLib.GetGroupVariableValue(context, "extra_monster_67")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 67, defs.group_id, {12050},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points,affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	if ScriptLib.GetGroupVariableValue(context, "extra_monster_68")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 68, defs.group_id, {12051},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points, affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	if ScriptLib.GetGroupVariableValue(context, "extra_monster_69")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 69, defs.group_id, {12052},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points, affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	if ScriptLib.GetGroupVariableValue(context, "extra_monster_70")==1 then
		local create_route=math.random(#package_tide_defs[1])
		ScriptLib.AutoPoolMonsterTide(context, 70, defs.group_id, {12053},package_tide_defs[1][create_route].route, package_tide_defs[1][create_route].route_points, affix, {total_count=1, min_count=1, max_count=1, tag=package_tide_defs[1][create_route].tags,fill_time=package_tide_defs[1][create_route].fill_time or 5,fill_count=package_tide_defs[1][create_route].fill_count or 2})
		--monstersLeft=monstersLeft+1
	end

	ScriptLib.SetGroupVariableValue(context, "monster_tide_index", index)
	
	return 0
end

--推送给主控怪物预览信息
function set_monster_preview(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)

	math.randomseed(ScriptLib.GetServerTime(context))
	local randomidx=0
	local monster_preview_table={}
	for i=1,#package_tide_defs do
		for j=1,#package_tide_defs[i] do
			randomidx=math.random(#package_tide_defs[i][j].monster_package)
			table.insert(monster_preview_table,package_tide_defs[i][j].monster_package[randomidx])
		end
	end
	ScriptLib.SetMechanicusMonsterPoolVec(context,ScriptLib.GetGroupVariableValue(context, "challenge_group"),999,monster_preview_table)
	return 0
end

function action_END_DELAY(context, evt)
	local challenge_group = ScriptLib.GetGroupVariableValue(context, "challenge_group")
	ScriptLib.PrintContextLog(context, "## challenge_group = "..challenge_group)
	ScriptLib.ExecuteGroupLua(context, challenge_group, "tide_done", {0})
	ScriptLib.PrintContextLog(context, "## TD_LOG : Group Monster Tide End -> "..defs.group_id)
	return 0
end

function monster_tide_over(context)
	ScriptLib.PrintContextLog(context, "## monster_tide_over")
	local tide = ScriptLib.GetGroupVariableValue(context, "tide_ptr")
	if tide >= #package_tide_defs then
		local challenge_group = ScriptLib.GetGroupVariableValue(context, "challenge_group")
		ScriptLib.PrintContextLog(context, "## challenge_group = "..challenge_group)
		ScriptLib.ExecuteGroupLua(context, challenge_group, "tide_done", {0})
		ScriptLib.PrintContextLog(context, "## TD_LOG : Group Monster Tide End -> "..defs.group_id)
		return 0
	end
	--tide自然结束,开启下一tide
	--if evt.param1 == 0 then
	tide = tide+1
	local index=ScriptLib.GetGroupVariableValue(context, "monster_tide_index")
	local monster_pool_table=ScriptLib.GetMechanicusMonsterPoolVec(context,ScriptLib.GetGroupVariableValue(context, "challenge_group"),999)
	local affix={}
	if ScriptLib.GetGroupVariableValue(context, "buff_monster_4112")==1 then
		table.insert(affix,4112)
	end
	if ScriptLib.GetGroupVariableValue(context, "buff_monster_4113")==1 then
		table.insert(affix,4113)
	end
	for i=1,#package_tide_defs[tide] do
		ScriptLib.AutoPoolMonsterTide(context, index, defs.group_id, {monster_pool_table[index]},package_tide_defs[tide][i].route, package_tide_defs[tide][i].route_points, affix, {total_count=package_tide_defs[tide][i].count, min_count=package_tide_defs[tide][i].min, max_count=package_tide_defs[tide][i].max, tag=package_tide_defs[tide][i].tags,fill_time=package_tide_defs[tide][i].fill_time or 5,fill_count=package_tide_defs[tide][i].fill_count or 2})
		index=index+1
		--ScriptLib.AutoMonsterTide(context, 100*tide+i, defs.group_id,  suites[tide_defs[tide][i].suite].monsters, tide_defs[tide][i].sum , tide_defs[tide][i].min , tide_defs[tide][i].max )
	end
	ScriptLib.SetGroupVariableValue(context, "monster_tide_index", index)
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