-- 基础信息
local base_info = {
	group_id = 133303360
}

-- Trigger变量
local defs = {
	finishquest = "7304933_fin",
	group_reward = 133303362,
	keyNum = 2,
	defaultNum = 1
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[360002] = { config_id = 360002, monster_id = 25210102, pos = { x = -1994.313, y = 288.517, z = 3380.613 }, rot = { x = 0.000, y = 147.393, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360003] = { config_id = 360003, monster_id = 25210201, pos = { x = -1995.514, y = 288.492, z = 3379.819 }, rot = { x = 0.000, y = 149.687, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360004] = { config_id = 360004, monster_id = 25210402, pos = { x = -1993.657, y = 288.488, z = 3379.592 }, rot = { x = 0.000, y = 149.834, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360005] = { config_id = 360005, monster_id = 25310101, pos = { x = -1982.529, y = 289.156, z = 3383.922 }, rot = { x = 0.000, y = 265.191, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[360006] = { config_id = 360006, monster_id = 25210102, pos = { x = -1984.360, y = 288.911, z = 3382.735 }, rot = { x = 0.000, y = 222.110, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360007] = { config_id = 360007, monster_id = 25210201, pos = { x = -1984.442, y = 288.745, z = 3381.305 }, rot = { x = 0.000, y = 262.043, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360009] = { config_id = 360009, monster_id = 25310101, pos = { x = -1994.848, y = 288.487, z = 3379.486 }, rot = { x = 0.000, y = 154.551, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
	[360010] = { config_id = 360010, monster_id = 25210201, pos = { x = -2006.467, y = 284.533, z = 3391.054 }, rot = { x = 0.000, y = 138.897, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360011] = { config_id = 360011, monster_id = 25210201, pos = { x = -2007.424, y = 284.527, z = 3385.182 }, rot = { x = 0.000, y = 99.332, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360012] = { config_id = 360012, monster_id = 25210102, pos = { x = -1989.957, y = 283.013, z = 3374.413 }, rot = { x = 0.000, y = 209.805, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360013] = { config_id = 360013, monster_id = 25210501, pos = { x = -1995.078, y = 283.013, z = 3370.318 }, rot = { x = 0.000, y = 97.167, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360014] = { config_id = 360014, monster_id = 25210201, pos = { x = -1984.215, y = 288.967, z = 3385.542 }, rot = { x = 0.000, y = 195.088, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360015] = { config_id = 360015, monster_id = 25210401, pos = { x = -2002.745, y = 284.413, z = 3378.417 }, rot = { x = 0.000, y = 95.603, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	[360016] = { config_id = 360016, monster_id = 25310301, pos = { x = -1984.937, y = 289.089, z = 3381.513 }, rot = { x = 0.000, y = 216.437, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[360017] = { config_id = 360017, gadget_id = 70330244, pos = { x = -1989.474, y = 288.307, z = 3370.042 }, rot = { x = 0.000, y = 31.455, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1
	[360018] = { config_id = 360018, gadget_id = 70330245, pos = { x = -2004.948, y = 285.191, z = 3389.156 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	-- 钥匙2
	[360019] = { config_id = 360019, gadget_id = 70330245, pos = { x = -1989.608, y = 283.627, z = 3370.903 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 23 },
	[360021] = { config_id = 360021, gadget_id = 70360286, pos = { x = -1989.474, y = 289.011, z = 3370.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 23 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[360024] = { config_id = 360024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1989.118, y = 289.137, z = 3370.499 }, area_id = 23 },
	-- 离开区域挑战失败
	[360029] = { config_id = 360029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1989.048, y = 289.126, z = 3370.435 }, area_id = 23 },
	-- 出界挑战失败
	[360033] = { config_id = 360033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1988.970, y = 288.344, z = 3369.756 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 重置sgv
	{ config_id = 1360020, name = "GROUP_LOAD_360020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_360020", trigger_count = 0 },
	-- 任务通知和刷宝箱保底
	{ config_id = 1360022, name = "GROUP_LOAD_360022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360022", action = "action_EVENT_GROUP_LOAD_360022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1360024, name = "ENTER_REGION_360024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360024", action = "action_EVENT_ENTER_REGION_360024" },
	-- 钥匙检测
	{ config_id = 1360025, name = "ANY_GADGET_DIE_360025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360025", action = "action_EVENT_ANY_GADGET_DIE_360025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1360026, name = "CHALLENGE_SUCCESS_360026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360026" },
	-- 挑战失败初始化
	{ config_id = 1360027, name = "CHALLENGE_FAIL_360027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_360027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1360028, name = "SELECT_OPTION_360028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360028", action = "action_EVENT_SELECT_OPTION_360028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1360029, name = "LEAVE_REGION_360029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_360029", action = "action_EVENT_LEAVE_REGION_360029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1360030, name = "CHALLENGE_SUCCESS_360030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360030" },
	-- 挑战失败重置group
	{ config_id = 1360031, name = "CHALLENGE_FAIL_360031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_360031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1360032, name = "GADGET_STATE_CHANGE_360032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1360033, name = "LEAVE_REGION_360033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_360033", action = "action_EVENT_LEAVE_REGION_360033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1360034, name = "CHALLENGE_SUCCESS_360034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360034" },
	-- 点操作台启动挑战
	{ config_id = 1360035, name = "SELECT_OPTION_360035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_360035", action = "action_EVENT_SELECT_OPTION_360035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1360036, name = "CHALLENGE_SUCCESS_360036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360036" },
	{ config_id = 1360037, name = "LUA_NOTIFY_360037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_360037", trigger_count = 0 },
	{ config_id = 1360038, name = "LUA_NOTIFY_360038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_360038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1360039, name = "CHALLENGE_SUCCESS_360039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_360039" },
	-- 拿钥匙1刷suite5
	{ config_id = 1360040, name = "ANY_GADGET_DIE_360040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360040", action = "action_EVENT_ANY_GADGET_DIE_360040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1360041, name = "ANY_GADGET_DIE_360041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360041", action = "action_EVENT_ANY_GADGET_DIE_360041" },
	-- 拿钥匙3刷suite7
	{ config_id = 1360042, name = "ANY_GADGET_DIE_360042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360042", action = "action_EVENT_ANY_GADGET_DIE_360042" },
	{ config_id = 1360043, name = "LUA_NOTIFY_360043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_360043" },
	{ config_id = 1360044, name = "LUA_NOTIFY_360044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_360044" },
	{ config_id = 1360045, name = "LUA_NOTIFY_360045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_360045" },
	-- 挑战失败初始化sgv
	{ config_id = 1360046, name = "CHALLENGE_FAIL_360046", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_360046" },
	-- 断线初始化
	{ config_id = 1360047, name = "GROUP_LOAD_360047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_360047", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1360048, name = "GROUP_LOAD_360048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360048", action = "action_EVENT_GROUP_LOAD_360048", trigger_count = 0 },
	{ config_id = 1360049, name = "ANY_MONSTER_DIE_360049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_360049", action = "action_EVENT_ANY_MONSTER_DIE_360049" },
	{ config_id = 1360050, name = "ANY_MONSTER_DIE_360050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_360050", action = "action_EVENT_ANY_MONSTER_DIE_360050" },
	{ config_id = 1360051, name = "ANY_MONSTER_DIE_360051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_360051", action = "action_EVENT_ANY_MONSTER_DIE_360051" },
	-- 挑战失败延迟刷新group
	{ config_id = 1360052, name = "TIME_AXIS_PASS_360052", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_360052", action = "action_EVENT_TIME_AXIS_PASS_360052" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 360001, monster_id = 25310101, pos = { x = -2000.978, y = 285.326, z = 3378.948 }, rot = { x = 0.000, y = 80.827, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 23 },
		{ config_id = 360008, monster_id = 25210402, pos = { x = -1983.531, y = 288.737, z = 3380.903 }, rot = { x = 0.000, y = 159.877, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
	},
	triggers = {
		{ config_id = 1360023, name = "GROUP_LOAD_360023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_360023", action = "action_EVENT_GROUP_LOAD_360023" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 360017 },
		regions = { 360024, 360029 },
		triggers = { "GROUP_LOAD_360020", "GROUP_LOAD_360022", "ENTER_REGION_360024", "CHALLENGE_SUCCESS_360026", "CHALLENGE_FAIL_360027", "LEAVE_REGION_360029", "CHALLENGE_SUCCESS_360034", "CHALLENGE_SUCCESS_360039", "CHALLENGE_FAIL_360046", "GROUP_LOAD_360047", "TIME_AXIS_PASS_360052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 360018, 360019 },
		regions = { 360033 },
		triggers = { "ANY_GADGET_DIE_360025", "SELECT_OPTION_360028", "CHALLENGE_SUCCESS_360030", "CHALLENGE_FAIL_360031", "GADGET_STATE_CHANGE_360032", "LEAVE_REGION_360033", "SELECT_OPTION_360035", "CHALLENGE_SUCCESS_360036", "LUA_NOTIFY_360037", "LUA_NOTIFY_360038", "ANY_GADGET_DIE_360040", "ANY_GADGET_DIE_360041", "ANY_GADGET_DIE_360042", "LUA_NOTIFY_360043", "LUA_NOTIFY_360044", "LUA_NOTIFY_360045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 360017, 360021 },
		regions = { 360033 },
		triggers = { "GROUP_LOAD_360022", "CHALLENGE_SUCCESS_360026", "CHALLENGE_FAIL_360027", "SELECT_OPTION_360028", "CHALLENGE_SUCCESS_360030", "CHALLENGE_FAIL_360031", "GADGET_STATE_CHANGE_360032", "LEAVE_REGION_360033", "CHALLENGE_SUCCESS_360034", "SELECT_OPTION_360035", "CHALLENGE_SUCCESS_360036", "LUA_NOTIFY_360037", "LUA_NOTIFY_360038", "CHALLENGE_SUCCESS_360039", "LUA_NOTIFY_360043", "LUA_NOTIFY_360044", "LUA_NOTIFY_360045", "CHALLENGE_FAIL_360046", "GROUP_LOAD_360048" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 360002, 360003, 360004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_360049" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 360010, 360011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 360012, 360013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 360014, 360015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 360005, 360006, 360007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_360050" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 360009, 360016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_360051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_360020(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_360022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_reward, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, defs.finishquest) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_360024(context, evt)
	if evt.param1 ~= 360024 then return false end
	
	-- 判断是区域360024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 360024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_360024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133303360, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360026(context, evt)
	-- 将configid为 360017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303360, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303360, EntityType.GADGET, 360021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_360027(context, evt)
	-- 将configid为 360017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_360028(context, evt)
	-- 判断是gadgetid 360021 option_id 770
	if 360021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303360, EntityType.GADGET, 360021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 360017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_360029(context, evt)
	-- 判断是区域360029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 360029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_360029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_360031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303360, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 360017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360032(context, evt)
	if 360017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_360033(context, evt)
	-- 判断是区域360033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 360033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_360033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_360035(context, evt)
	-- 判断是gadgetid 360021 option_id 770
	if 360021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_360035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360036(context, evt)
	-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_reward, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, defs.finishquest) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_360037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_360038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_360039(context, evt)
	-- 创建id为360021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 360021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360040(context, evt)
	if 360018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360041(context, evt)
	if 360019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360042(context, evt)
	if 568008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_360043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_360044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_360045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303360, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_360046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303360, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 360017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_360048(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_360048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303360, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 360017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303360, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_360049(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_360049(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 4
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_360050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_360050(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 5
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_360051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_360051(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 6
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	-- 调用提示id为 1111400 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111400) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_360052(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_360052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303360, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end