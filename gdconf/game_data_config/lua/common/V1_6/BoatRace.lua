--[[
local defs = {
	need_kill_hint = true,
	group_id = 144001108, --对应的GroupID
	gadget_init = {108013, 108014},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {108015,108023},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {108017,108024},
		[6] = {108019,108025},
	},
	--怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
	suites_heraldry_loot = { 
		[108075] = 7,
		[108077] = 8,
	},
	gadget_heraldry_count = 15, --收集的激流纹章数量
	gadget_heraldry_id = 70350256, --激流纹章ID
	suites_chain = {4,5,6,2}, --suite的刷新顺序
}
]]--

local Triggers_Start = {
	[1] = { name = "challenge_success", config_id = 9000001, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0},
	[2] = { name = "challenge_fail", config_id = 9000002, event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "",action = "action_challenge_fail",trigger_count= 0},
	[3] = { name = "select_option", config_id = 9000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	[4] = { name = "gadget_create", config_id = 9000004, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
	[5] = { name = "gadget_die_count",config_id = 9000005, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_gadget_die_count", action = "", trigger_count = 0, tag = "888" },
	[6] = { name = "any_monster_die", config_id = 9000006, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	[7] = { name = "enter_region_action", config_id = 9000007, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },
	[8] = { name = "group_will_unload", config_id = 9000008, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
	[9] = { name = "group_unload", config_id = 9000009, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
}

local Triggers_Final =	{
	[1] = { config_id=50000001,name = "enter_final_region",config_id = 9000010, event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_enter_final_region", action = "", trigger_count = 0, tag = "666" },
}


--挑战机关初始化
function action_gadget_create(context, evt)
	-- 设置操作台选项
	if defs.gadget_init[1] == evt.param1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_init[1], {175})
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_open_gadget")
	end
	return 0
end

--机关开启条件及开启处理
function action_select_option(context, evt)
	if defs.gadget_init[1] ~= evt.param1 or 175 ~= evt.param2 then
		return -1	
	end
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	    ScriptLib.ShowReminder(context, 400041)
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : not_in_boat")
	    return -1
	end

	if true == ScriptLib.CheckIsInMpMode(context) then
		ScriptLib.ShowReminder(context, 400053)
		return -1
	end
	if 0 ~= ScriptLib.GetGroupTempValue(context, "flagHasStarted", {}) then
		ScriptLib.ShowReminder(context, 400046)
		return -1
	end
	local boat_groups = {144002049,144001130,144004065,144001127,144004063,144001108}
	for k,grp_id in pairs(boat_groups) do
		ScriptLib.SetGroupTempValue(context, "flagHasStarted", 1, {group_id = grp_id})
	end
	-- 新建一个波次的全局变量 从1开始，suites的刷新顺序按suites_chain的顺序刷新
	local ret = ScriptLib.SetGroupTempValue(context, "wave", 1, {})
	--创建编号为888（该挑战的识别id),挑战内容为127的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	ScriptLib.CreateFatherChallenge(context, 2011, 2011, defs.challenge_time, {success = 10, fail = 5})
	ScriptLib.AttachChildChallenge(context, 2011, 2012, 2012,{0,4, 666,1},{},{success = 10,fail = 5}) --限时到达
	ScriptLib.AttachChildChallenge(context, 2011, 2013, 2013,{0,2, 888, defs.gadget_heraldry_count},{},{success = 1,fail = 0}) --收集纹章
	if defs.need_kill_hint == true then
		local hints = 0
		for k,v in pairs(defs.suites_heraldry_loot) do
			hints = hints+1
		end
		ScriptLib.AttachChildChallenge(context, 2011, 2014, 2014,{180, defs.group_id, hints, 0},{},{success = 1,fail = 0}) --收集纹章
	end
	ScriptLib.StartFatherChallenge(context, 2011)
	ScriptLib.SetChallengeEventMark(context, 2011, ChallengeEventMarkType.SUMMER_TIME_SPRINT_BOAT_TIME)
	ScriptLib.SetChallengeEventMark(context, 2013, ChallengeEventMarkType.SUMMER_TIME_SPRINT_BOAT_GATHER_POINT)
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_init[1], 175) 
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
	-- 添加suite4的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suites_chain[1])
	--处理关卡6刷怪时会卡住
	if defs.group_id == 144002049 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 10)
	end
	-- 将configid为 defs.gadget_init[1] 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_init[1], GadgetState.GearStart) 
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_GearStart")
	return 0
end

-- 处理成功
function action_challenge_success(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : success_process_start")	
	if evt.param1 ~= 2011 then
		return -1
	end
	for i=1,#defs.gadget_init do
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_init[i] })	
	end

	for i= 2, #suites do
	    ScriptLib.KillExtraGroupSuite(context, defs.group_id, i)
	end
	local boat_groups = {144002049,144001130,144004065,144001127,144004063,144001108}
	for k,grp_id in pairs(boat_groups) do
		ScriptLib.SetGroupTempValue(context, "flagHasStarted", 0, {group_id = grp_id})
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : success_kill_all_entity")	
	ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = 1 })
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : success_process_end")
	return 0
end

-- 处理失败
function action_challenge_fail(context, evt)
	if evt.param1 ~= 2011 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : fail_process_start")
	-- 将本组内变量名为 "hasStarted" 的变量设置为 0
	ScriptLib.SetGroupVariableValue(context, "hasStarted", 0)
	--标记挑战结束
	local boat_groups = {144002049,144001130,144004065,144001127,144004063,144001108}
	for k,grp_id in pairs(boat_groups) do
		ScriptLib.SetGroupTempValue(context, "flagHasStarted", 0, {group_id = grp_id})
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")

	-- 设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_init[1], {175})
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
	
	for i= 2, #suites do --目前第三组为空，从第四组开始
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, i)
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_groupsuites")	
	end

	-- 将configid为 defs.gadget_init[1] 的物件更改为状态 GadgetState.Default
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_init[1], GadgetState.Default)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_dafault_to_Starter")
	-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_init[2] })
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : fail_process_end")
	return 0
end

--统计激流纹章数量,
function condition_gadget_die_count(context, evt)
	local death_config_id = evt.param1
	if gadgets[death_config_id].gadget_id == defs.gadget_heraldry_id then
		return true
	end
	return false
end

-- 进入最终区域,suite2
function condition_enter_final_region(context, evt)
	-- 判断角色数量不少于1
	if evt.param1 ~= suites[2].regions[1] then 
		return false
	end
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	return true
end

-- 进入每个Suite触发区域时移除终点指示器并刷新下一个Suite，移除上一个Suite
function action_enter_region(context, evt)
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : EnterRegionToNext")
	local wave = ScriptLib.GetGroupTempValue(context, "wave", {})
	if wave > #defs.suites_chain then --防止访问不存在的wave
		return -1
	end
	local suite_seq = defs.suites_chain[wave]
	-- 判断角色数量不少于1
	if evt.param1 ~= suites[suite_seq].regions[1] then
		return -1
	end
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then 
		return -1
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Enter"..suite_seq)
	-- 关闭该Suite中的提示光柱和路点
	if wave < #defs.suites_chain then
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_suites[suite_seq][1] })
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_suites[suite_seq][2] })
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Kill Tip Gadgets when enter and this wave is"..suite_seq)
	end
	if wave == 1 then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suites_chain[wave+1])
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Refresh_Next_Group"..(defs.suites_chain[wave+1]))
	elseif wave == #defs.suites_chain then
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.suites_chain[wave-1])
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Remove_last_Group"..(defs.suites_chain[wave-1]))
	elseif wave > 1 and wave < #defs.suites_chain then
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suites_chain[wave+1])
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, defs.suites_chain[wave-1])
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Refresh_Next_Group_And_Remove_last_Group"..(defs.suites_chain[wave]))
	end
	ScriptLib.SetGroupTempValue(context, "wave", wave+1, {})
	return 0
end

--根据死亡的怪物对应刷新含有纹章的Suite
function action_any_monster_die(context, evt)
	if defs.suites_heraldry_loot[evt.param1] == nil then
		return -1
	else
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suites_heraldry_loot[evt.param1])
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : Kill_Monster_And_Add_heraldry")
	end
	return 0
end

--处理Group重新加载时操作台的问题
function action_group_load( context,evt )
	ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = 1 })
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_init[1], {175})
	return 0
end

--处理Group未正确卸载的情况
function action_group_will_unload( context,evt )
	local boat_groups = {144002049,144001130,144004065,144001127,144004063,144001108}
	for k,grp_id in pairs(boat_groups) do
		ScriptLib.SetGroupTempValue(context, "flagHasStarted", 0, {group_id = grp_id})
	end
	return 0
end

--给每个suite塞触发器
function Initialize()
	for k,v in pairs(Triggers_Start) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	table.insert(triggers, Triggers_Final[1])
	table.insert(suites[2].triggers, Triggers_Final[1].name)
	return 0
end

Initialize()
