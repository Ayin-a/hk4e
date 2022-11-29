-- 基础信息
local base_info = {
	group_id = 133301420
}

-- Trigger变量
local defs = {
	finishquest = "7304929_fin",
	group_reward = 133301422,
	keyNum = 3,
	defaultNum = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[420002] = { config_id = 420002, monster_id = 25210102, pos = { x = -399.674, y = 282.771, z = 3998.655 }, rot = { x = 0.000, y = 276.586, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420003] = { config_id = 420003, monster_id = 25210201, pos = { x = -401.372, y = 282.785, z = 4001.081 }, rot = { x = 0.000, y = 270.768, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420004] = { config_id = 420004, monster_id = 25210402, pos = { x = -401.301, y = 282.786, z = 3999.785 }, rot = { x = 0.000, y = 282.799, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420005] = { config_id = 420005, monster_id = 25310201, pos = { x = -396.985, y = 282.773, z = 4012.633 }, rot = { x = 0.000, y = 238.538, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 22 },
	[420006] = { config_id = 420006, monster_id = 25210102, pos = { x = -395.846, y = 282.773, z = 4014.215 }, rot = { x = 0.000, y = 270.950, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420008] = { config_id = 420008, monster_id = 25210402, pos = { x = -396.061, y = 282.780, z = 4011.497 }, rot = { x = 0.000, y = 249.452, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420009] = { config_id = 420009, monster_id = 25310201, pos = { x = -400.944, y = 282.773, z = 3997.667 }, rot = { x = 0.000, y = 282.998, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 22 },
	[420010] = { config_id = 420010, monster_id = 25210502, pos = { x = -388.541, y = 282.873, z = 4010.963 }, rot = { x = 0.000, y = 62.267, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420011] = { config_id = 420011, monster_id = 25210202, pos = { x = -381.632, y = 282.873, z = 4008.742 }, rot = { x = 0.000, y = 351.180, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420012] = { config_id = 420012, monster_id = 25210102, pos = { x = -402.426, y = 277.373, z = 4006.437 }, rot = { x = 0.000, y = 180.651, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420013] = { config_id = 420013, monster_id = 25210202, pos = { x = -403.100, y = 277.373, z = 3999.500 }, rot = { x = 0.000, y = 26.182, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420014] = { config_id = 420014, monster_id = 25210201, pos = { x = -415.414, y = 272.128, z = 4014.014 }, rot = { x = 0.000, y = 135.350, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420015] = { config_id = 420015, monster_id = 25210401, pos = { x = -416.333, y = 271.937, z = 4010.101 }, rot = { x = 0.000, y = 45.390, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 },
	[420016] = { config_id = 420016, monster_id = 25310301, pos = { x = -397.105, y = 282.773, z = 4009.587 }, rot = { x = 0.000, y = 245.639, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[420017] = { config_id = 420017, gadget_id = 70330244, pos = { x = -409.540, y = 282.780, z = 4004.859 }, rot = { x = 0.138, y = 83.205, z = 1.898 }, level = 30, persistent = true, area_id = 22 },
	[420018] = { config_id = 420018, gadget_id = 70330245, pos = { x = -378.877, y = 283.366, z = 4017.685 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 22 },
	[420019] = { config_id = 420019, gadget_id = 70330245, pos = { x = -402.104, y = 277.929, z = 4003.435 }, rot = { x = 0.000, y = 38.675, z = 0.000 }, level = 30, area_id = 22 },
	[420020] = { config_id = 420020, gadget_id = 70330245, pos = { x = -411.024, y = 274.667, z = 4012.050 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 22 },
	[420021] = { config_id = 420021, gadget_id = 70360286, pos = { x = -409.540, y = 283.989, z = 4004.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 22 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[420024] = { config_id = 420024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -409.540, y = 282.780, z = 4004.859 }, area_id = 22 },
	-- 离开区域挑战失败
	[420029] = { config_id = 420029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -399.133, y = 283.599, z = 4004.563 }, area_id = 22 },
	-- 出界挑战失败
	[420033] = { config_id = 420033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -399.055, y = 282.817, z = 4003.885 }, area_id = 22 }
}

-- 触发器
triggers = {
	-- 任务通知和刷宝箱保底
	{ config_id = 1420022, name = "GROUP_LOAD_420022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_420022", action = "action_EVENT_GROUP_LOAD_420022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1420024, name = "ENTER_REGION_420024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_420024", action = "action_EVENT_ENTER_REGION_420024" },
	-- 钥匙检测
	{ config_id = 1420025, name = "ANY_GADGET_DIE_420025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420025", action = "action_EVENT_ANY_GADGET_DIE_420025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1420026, name = "CHALLENGE_SUCCESS_420026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420026" },
	-- 挑战失败初始化
	{ config_id = 1420027, name = "CHALLENGE_FAIL_420027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1420028, name = "SELECT_OPTION_420028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_420028", action = "action_EVENT_SELECT_OPTION_420028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1420029, name = "LEAVE_REGION_420029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_420029", action = "action_EVENT_LEAVE_REGION_420029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1420030, name = "CHALLENGE_SUCCESS_420030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420030" },
	-- 挑战失败重置group
	{ config_id = 1420031, name = "CHALLENGE_FAIL_420031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1420032, name = "GADGET_STATE_CHANGE_420032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_420032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1420033, name = "LEAVE_REGION_420033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_420033", action = "action_EVENT_LEAVE_REGION_420033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1420034, name = "CHALLENGE_SUCCESS_420034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420034" },
	-- 点操作台启动挑战
	{ config_id = 1420035, name = "SELECT_OPTION_420035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_420035", action = "action_EVENT_SELECT_OPTION_420035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1420036, name = "CHALLENGE_SUCCESS_420036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420036" },
	{ config_id = 1420037, name = "LUA_NOTIFY_420037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_420037", trigger_count = 0 },
	{ config_id = 1420038, name = "LUA_NOTIFY_420038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_420038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1420039, name = "CHALLENGE_SUCCESS_420039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420039" },
	-- 拿钥匙1刷suite5
	{ config_id = 1420040, name = "ANY_GADGET_DIE_420040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420040", action = "action_EVENT_ANY_GADGET_DIE_420040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1420041, name = "ANY_GADGET_DIE_420041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420041", action = "action_EVENT_ANY_GADGET_DIE_420041" },
	-- 拿钥匙3刷suite7
	{ config_id = 1420042, name = "ANY_GADGET_DIE_420042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420042", action = "action_EVENT_ANY_GADGET_DIE_420042" },
	-- 刷第一波
	{ config_id = 1420043, name = "LUA_NOTIFY_420043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_420043" },
	-- 刷第二波
	{ config_id = 1420044, name = "LUA_NOTIFY_420044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_420044" },
	-- 刷第三波
	{ config_id = 1420045, name = "LUA_NOTIFY_420045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_420045" },
	-- 重置sgv
	{ config_id = 1420046, name = "GROUP_LOAD_420046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_420046", trigger_count = 0 },
	-- 挑战失败初始化sgv
	{ config_id = 1420047, name = "CHALLENGE_FAIL_420047", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420047" },
	-- 断线初始化
	{ config_id = 1420048, name = "GROUP_LOAD_420048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_420048", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1420049, name = "GROUP_LOAD_420049", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_420049", action = "action_EVENT_GROUP_LOAD_420049", trigger_count = 0 },
	{ config_id = 1420050, name = "ANY_MONSTER_DIE_420050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420050", action = "action_EVENT_ANY_MONSTER_DIE_420050" },
	{ config_id = 1420051, name = "ANY_MONSTER_DIE_420051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420051", action = "action_EVENT_ANY_MONSTER_DIE_420051" },
	{ config_id = 1420052, name = "ANY_MONSTER_DIE_420052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420052", action = "action_EVENT_ANY_MONSTER_DIE_420052" },
	-- 挑战失败延迟刷新group
	{ config_id = 1420053, name = "TIME_AXIS_PASS_420053", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_420053", action = "action_EVENT_TIME_AXIS_PASS_420053" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 0, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 420001, monster_id = 25310101, pos = { x = -400.016, y = 282.773, z = 3999.732 }, rot = { x = 0.000, y = 265.481, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 22 },
		{ config_id = 420007, monster_id = 25210201, pos = { x = -390.487, y = 282.872, z = 4010.472 }, rot = { x = 0.000, y = 260.739, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 22 }
	},
	triggers = {
		{ config_id = 1420023, name = "GROUP_LOAD_420023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_420023", action = "action_EVENT_GROUP_LOAD_420023" }
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
		gadgets = { 420017 },
		regions = { 420024, 420029 },
		triggers = { "GROUP_LOAD_420022", "ENTER_REGION_420024", "CHALLENGE_SUCCESS_420026", "CHALLENGE_FAIL_420027", "LEAVE_REGION_420029", "CHALLENGE_SUCCESS_420034", "CHALLENGE_SUCCESS_420039", "GROUP_LOAD_420046", "CHALLENGE_FAIL_420047", "GROUP_LOAD_420048", "TIME_AXIS_PASS_420053" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 420018, 420019, 420020 },
		regions = { 420033 },
		triggers = { "ANY_GADGET_DIE_420025", "SELECT_OPTION_420028", "CHALLENGE_SUCCESS_420030", "CHALLENGE_FAIL_420031", "GADGET_STATE_CHANGE_420032", "LEAVE_REGION_420033", "SELECT_OPTION_420035", "CHALLENGE_SUCCESS_420036", "LUA_NOTIFY_420037", "LUA_NOTIFY_420038", "ANY_GADGET_DIE_420040", "ANY_GADGET_DIE_420041", "ANY_GADGET_DIE_420042", "LUA_NOTIFY_420043", "LUA_NOTIFY_420044", "LUA_NOTIFY_420045" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 420017, 420021 },
		regions = { 420033 },
		triggers = { "GROUP_LOAD_420022", "CHALLENGE_SUCCESS_420026", "CHALLENGE_FAIL_420027", "SELECT_OPTION_420028", "CHALLENGE_SUCCESS_420030", "CHALLENGE_FAIL_420031", "GADGET_STATE_CHANGE_420032", "LEAVE_REGION_420033", "CHALLENGE_SUCCESS_420034", "SELECT_OPTION_420035", "CHALLENGE_SUCCESS_420036", "LUA_NOTIFY_420037", "LUA_NOTIFY_420038", "CHALLENGE_SUCCESS_420039", "LUA_NOTIFY_420043", "LUA_NOTIFY_420044", "LUA_NOTIFY_420045", "CHALLENGE_FAIL_420047", "GROUP_LOAD_420049" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 420002, 420003, 420004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420050" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 420010, 420011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 420012, 420013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 420014, 420015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 420005, 420006, 420008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420051" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 420009, 420016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420052" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_420022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_420022(context, evt)
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
function condition_EVENT_ENTER_REGION_420024(context, evt)
	if evt.param1 ~= 420024 then return false end
	
	-- 判断是区域420024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 420024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_420024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133301420, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_420025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_420025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420026(context, evt)
	-- 将configid为 420017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301420, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301420, EntityType.GADGET, 420021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_420027(context, evt)
	-- 将configid为 420017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_420028(context, evt)
	-- 判断是gadgetid 420021 option_id 770
	if 420021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_420028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301420, EntityType.GADGET, 420021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 420017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_420029(context, evt)
	-- 判断是区域420029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 420029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_420029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_420031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301420, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 420017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_420032(context, evt)
	if 420017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_420033(context, evt)
	-- 判断是区域420033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 420033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_420033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_420035(context, evt)
	-- 判断是gadgetid 420021 option_id 770
	if 420021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_420035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420036(context, evt)
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
function action_EVENT_LUA_NOTIFY_420037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_420038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420039(context, evt)
	-- 创建id为420021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 420021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_420040(context, evt)
	if 420018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_420040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_420041(context, evt)
	if 420019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_420041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_420042(context, evt)
	if 420020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_420042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_420043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_420044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_420045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301420, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_420046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_420047(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_420048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301420, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 420017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_420049(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_420049(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301420, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 420017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301420, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_420050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420050(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_420051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420051(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_420052(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420052(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_420053(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_420053(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301420, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end