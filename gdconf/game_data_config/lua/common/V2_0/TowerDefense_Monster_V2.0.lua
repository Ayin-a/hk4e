--s1为空,s2往后自动引用为怪物潮
--[[

--怪物
--route_points配置默认值

--路径点的默认配置
local route_map={
	[1]={route_points={1,2,3,4,5,6,7,8},tags=2},
	[2]={route_points={1,2,3,4,5,6,7,8,9,10},tags=4}
}

local entrance_point_map={
  [1]=2,
  [2]=7,
  [3]=8,
}


local entrance_map={
  [2]=8,
  [4]=9,
  [8]=9
}

local exit_point_list={4,5}


--对应的刷怪策略
local monster_programme={
	[1]=stage_defs_01,
	[2]=stage_defs_02,
	[3]=stage_defs_03,
}
--刷怪阶段对应的怪物波次
local stage_defs_01={
	[1]=wave_01,
	[2]=wave_05,
	[3]=wave_06,
	[4]=wave_02,
},
local stage_defs_02={
	[1]=wave_01,
	[2]=wave_02,
	[3]=wave_03,
	[4]=wave_04,

},
local stage_defs_03={
	[1]=wave_01,
	[2]=wave_02,
	[3]=wave_03,
	[4]=wave_04,
},




--每个波次的配置
local wave_01={
--[1]={monster_package={16002},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=12,max=5,min=5}
--自定义配置项，route_points,tags
  [1]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [2]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [3]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [4]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},   
},

local wave_02={
  [1]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [2]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [3]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [4]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},   
},

local wave_03={
  [1]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [2]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [3]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [4]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},      
},

local wave_04={
  [1]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [2]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [3]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},
  [4]={{monster_package=slime_package,count=12,route={1,2}},{monster_package=hili_package,route={1}}},    
},

--史莱姆
slime_package={monster_package={16002,16004},max=5,min=5}
hili_package={monster_package={16002,16004},max=5,min=5}


]]--
function LF_Init_Monster_Group()
	t1 = { config_id = 8000001, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 }
	t2 = { config_id = 8000002,name = "TIMER_EVENT_DELAY", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_END_DELAY", trigger_count = 0 }
	t3 = { config_id = 8000003,name = "MONSTER_WILL_LEAVE_SCENE", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_MONSTER_DIE_BEFORE_LEAVE_SCENE", trigger_count = 0 }
	t4 = { config_id = 8000004,name = "EVENT_ANY_MONSTER_LIVE", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_ANY_MONSTER_LIVE", trigger_count = 0 }
	for i,v in ipairs(suites) do
		table.insert(v.triggers, t1.name)
		table.insert(v.triggers, t2.name)
		table.insert(v.triggers, t3.name)
		table.insert(v.triggers, t4.name)
	end
	table.insert(triggers, t1)
	table.insert(triggers, t2)
	table.insert(triggers, t3)
	table.insert(triggers, t4)
	table.insert(variables, { config_id=50000001,name = "tide_ptr", value = 0})
	table.insert(variables, { config_id=50000002,name = "challenge_group", value = 0})
	table.insert(variables, { config_id=50000003,name = "left_monsters", value = 0})
	table.insert(variables, { config_id=50000004,name = "monster_tide_index", value = 1})
	table.insert(variables, { config_id=50000005,name = "monster_kill_count", value = 0})
	table.insert(variables, { config_id=50000006,name = "planNum", value = 1,no_refresh = true})
	table.insert(variables, { config_id=50000007,name = "monster_wave_ptr", value = 1})
	table.insert(variables, { config_id=50000008,name = "challenge_active_93", value = 0})
	table.insert(variables, { config_id=50000009,name = "challenge_active_94", value = 0})
end

local gear_group_id = defs.gear_group_id or 0

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

function action_ANY_MONSTER_LIVE(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context,evt.param1, "SGV_TD_AdditionalHP_Layers", ScriptLib.GetGroupVariableValue(context, "challenge_active_93")) 
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_TD_AdditionalDefence_Layers", ScriptLib.GetGroupVariableValue(context, "challenge_active_94")) 
	return 0
end

function action_MONSTER_DIE_BEFORE_LEAVE_SCENE(context, evt)
	local challenge_group=ScriptLib.GetGroupVariableValue(context, "challenge_group")
	local stepValue = ScriptLib.GetMonsterAbilityFloatValue(context, defs.group_id, evt.param1, "GV_ExtraBuildPoint")
	local stepValueMark = ScriptLib.GetMonsterAbilityFloatValue(context, defs.group_id, evt.param1, "GV_ExtraMarkBuildPoint")
	local stepValueSum = stepValue + stepValueMark
	if stepValueSum > 0 then
		local uidList=ScriptLib.GetSceneUidList(context)
		--local addScore=math.ceil(stepValue/#uidList)
		for i=1,#uidList do
			ScriptLib.AddChessBuildingPoints(context, challenge_group, 999, uidList[i], stepValueSum)
		end
	end
	return 0
end

function MonsterArrive(context)
	local entityId=context.target_entity_id
	ScriptLib.PrintContextLog(context, "TowerDefenseMonsterArrive"..context.target_entity_id)
	for k,v in pairs(points) do
		if ScriptLib.GetEntityIdByConfigId(context, v.config_id)==entityId then
			local affixList=ScriptLib.GetMonsterAffixListByConfigId(context,defs.group_id, v.config_id)
			for i=1,#affixList do
				if affixList[i]==4130 then
					ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "monster_escaped", {1})
					break
				end
			end
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "monster_escaped", {0})
			ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "del_monster_number", {0})
			ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.MONSTER, v.config_id)
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
	local wave_ptr=param1
	local monstersLeft=0
	local planNumber=ScriptLib.GetGroupVariableValue(context, "planNum")
	for i=1,#monster_programme[planNumber][wave_ptr] do
		for j=1,#monster_programme[planNumber][wave_ptr][i] do
			monstersLeft=monstersLeft+(monster_programme[planNumber][wave_ptr][i][j].count*#monster_programme[planNumber][wave_ptr][i][j].route)
		end
	end
	ScriptLib.ExecuteGroupLua(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), "set_monster_number", {monstersLeft})
	ScriptLib.SetGroupVariableValue(context, "left_monsters", monstersLeft)
	return 0
end

function synchronization_card_num(context, prev_context, param1, param2, param3)
	ScriptLib.SetGroupVariableValue(context, "challenge_active_93", param1)
	ScriptLib.SetGroupVariableValue(context, "challenge_active_94", param2)
	return 0
end

--启动此波的初始怪物潮
function start_tide(context, prev_context, param1, param2, param3)
	ScriptLib.PrintContextLog(context, "## TD2.0_LOG : start_tide："..param1.."|"..param2)
	ScriptLib.SetGroupVariableValue(context, "monster_kill_count", 0)
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	ScriptLib.SetGroupVariableValue(context, "monster_wave_ptr", param2)
	local monster_pool_table=ScriptLib.GetChessMonsterPoolIdVecByRound(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), 999, ScriptLib.GetGroupVariableValue(context, "monster_wave_ptr"))
	if #monster_pool_table==0 or monster_pool_table==nil then
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : monster_pool_table没取到")
	else
		for i=1,#monster_pool_table do
			ScriptLib.PrintContextLog(context, "## TD2.0_LOG : monster_pool_table="..monster_pool_table[i])
		end
	end
	local affix={}
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", 1)
	for i=1,#affix do
		ScriptLib.PrintContextLog(context, "## TD_LOG : AFFIX TABLE"..affix[i])
	end
	local index=1
	local curPlanNum=ScriptLib.GetGroupVariableValue(context, "planNum")
	for i=1,#monster_programme[curPlanNum][param2][1] do
		for j=1,#monster_programme[curPlanNum][param2][1][i].route do
			ScriptLib.AutoPoolMonsterTide(context, index, defs.group_id, {monster_pool_table[index]},monster_programme[curPlanNum][param2][1][i].route[j], route_map[monster_programme[curPlanNum][param2][1][i].route[j]].route_points, affix, {total_count=monster_programme[curPlanNum][param2][1][i].count, min_count=monster_programme[curPlanNum][param2][1][i].min, max_count=monster_programme[curPlanNum][param2][1][i].max, tag=route_map[monster_programme[curPlanNum][param2][1][i].route[j]].tags,fill_time=5,fill_count=5})
			index=index+1
		end
	end
	ScriptLib.SetGroupVariableValue(context, "monster_tide_index", index)
	return 0
end

--给主控提供ban_tag_list
function req_ban_tag(context, prev_context, param1, param2, param3)
	local tag1=999
	local tag2=999
	local tag3=999
	if monster_programme[param1].ban_card_tag_list~=nil then
		if monster_programme[param1].ban_card_tag_list[1]~=nil then
			tag1=monster_programme[param1].ban_card_tag_list[1]
		end
		if monster_programme[param1].ban_card_tag_list[2]~=nil then
			tag2=monster_programme[param1].ban_card_tag_list[2]
		end
		if monster_programme[param1].ban_card_tag_list[3]~=nil then
			tag3=monster_programme[param1].ban_card_tag_list[3]
		end
	end
	ScriptLib.ExecuteGroupLua(context, param2, "add_ban_tag", {tag1,tag2,tag3})
	return 0
end

--推送给主控怪物预览信息
function set_monster_preview(context, prev_context, param1, param2, param3)
	--设置方案
	ScriptLib.SetGroupVariableValue(context, "planNum", param2)
	--设置挑战groupid
	ScriptLib.SetGroupVariableValue(context, "challenge_group", param1)
	math.randomseed(ScriptLib.GetServerTime(context))
	local randomidx=0
	local monster_preview_table={}
	monster_preview_table.entrance_point_map=entrance_point_map
	monster_preview_table.exit_point_id_list=exit_point_list
	monster_preview_table.entrance_detail_list={}
	--monster_preview_table.ban_card_tag_list={}
	--if monster_programme[param2].ban_card_tag_list~=nil then
		--monster_preview_table.ban_card_tag_list=monster_programme[param2].ban_card_tag_list
	--end
	--i,总阶段数，j,每个阶段怪物波次数,k每一波的路数
	for i=1,#monster_programme[param2] do
		local currentRoundDetailList={round=i,pool_info_list={}}
		for j=1,#monster_programme[param2][i] do
			for k=1,#monster_programme[param2][i][j] do
				randomidx=math.random(#monster_programme[param2][i][j][k].monster_package)
				for n=1,#monster_programme[param2][i][j][k].route do
					local tempTbl={pool_id=monster_programme[param2][i][j][k].monster_package[randomidx],entrance_point_id=entrance_map[route_map[monster_programme[param2][i][j][k].route[n]].tags]}
					table.insert(currentRoundDetailList.pool_info_list,tempTbl)
				end
			end
		end
		table.insert(monster_preview_table.entrance_detail_list,currentRoundDetailList)
	end
	if 0~=ScriptLib.SetChessMystery(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), 999, monster_preview_table) then
		ScriptLib.PrintContextLog(context, "## TD2.0_LOG : monster_pool_table设置失败:"..monster_preview_table.entrance_detail_list[1].round.."|"..monster_preview_table.entrance_detail_list[1].pool_info_list[1].pool_id.."|"..monster_preview_table.entrance_detail_list[1].pool_info_list[1].entrance_point_id)
	end
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
	local curPlanNum=ScriptLib.GetGroupVariableValue(context, "planNum")
	local param2=ScriptLib.GetGroupVariableValue(context, "monster_wave_ptr")
	ScriptLib.PrintContextLog(context, "## monster_tide_over")
	local tide = ScriptLib.GetGroupVariableValue(context, "tide_ptr")
	if tide >= #monster_programme[curPlanNum][param2] then
		local challenge_group = ScriptLib.GetGroupVariableValue(context, "challenge_group")
		ScriptLib.PrintContextLog(context, "## challenge_group = "..challenge_group)
		ScriptLib.ExecuteGroupLua(context, challenge_group, "tide_done", {0})
		ScriptLib.PrintContextLog(context, "## TD_LOG : Group Monster Tide End -> "..defs.group_id)
		return 0
	end
	--tide自然结束,开启下一tide
	tide = tide+1
	local index=ScriptLib.GetGroupVariableValue(context, "monster_tide_index")
	local monster_pool_table=ScriptLib.GetChessMonsterPoolIdVecByRound(context, ScriptLib.GetGroupVariableValue(context, "challenge_group"), 999, ScriptLib.GetGroupVariableValue(context, "monster_wave_ptr"))
	local affix={}
	for i=1,#monster_programme[curPlanNum][param2][tide] do
		for j=1,#monster_programme[curPlanNum][param2][tide][i].route do
			ScriptLib.AutoPoolMonsterTide(context, index, defs.group_id, {monster_pool_table[index]},monster_programme[curPlanNum][param2][tide][i].route[j], route_map[monster_programme[curPlanNum][param2][tide][i].route[j]].route_points, affix, {total_count=monster_programme[curPlanNum][param2][tide][i].count, min_count=monster_programme[curPlanNum][param2][tide][i].min, max_count=monster_programme[curPlanNum][param2][tide][i].max, tag=route_map[monster_programme[curPlanNum][param2][tide][i].route[j]].tags,fill_time=5,fill_count=5})
			index=index+1
		end
	end
	ScriptLib.SetGroupVariableValue(context, "monster_tide_index", index)
	ScriptLib.SetGroupVariableValue(context, "tide_ptr", tide)
	return 0
end

function fix_gear(context, prev_context, param1, param2, param3)
	ScriptLib.ExecuteGroupLua(context, defs.gear_group_id, "fix_gear", {param1})
end

LF_Init_Monster_Group()