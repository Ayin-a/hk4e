-- 基础信息
local base_info = {
	group_id = 133304306
}

-- Trigger变量
local defs = {
	finishquest = "7304935_fin",
	group_reward = 133304308,
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
	[306001] = { config_id = 306001, monster_id = 25210401, pos = { x = -1144.798, y = 285.714, z = 2157.948 }, rot = { x = 0.000, y = 240.066, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, area_id = 21 },
	[306003] = { config_id = 306003, monster_id = 25210301, pos = { x = -1142.426, y = 285.699, z = 2158.792 }, rot = { x = 0.000, y = 265.212, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306004] = { config_id = 306004, monster_id = 25210301, pos = { x = -1143.335, y = 285.220, z = 2160.641 }, rot = { x = 0.000, y = 238.635, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306005] = { config_id = 306005, monster_id = 25310101, pos = { x = -1146.879, y = 286.303, z = 2154.032 }, rot = { x = 0.000, y = 287.475, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 21 },
	[306007] = { config_id = 306007, monster_id = 25210201, pos = { x = -1157.903, y = 288.182, z = 2158.724 }, rot = { x = 0.000, y = 89.944, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306008] = { config_id = 306008, monster_id = 25210201, pos = { x = -1157.400, y = 288.182, z = 2161.861 }, rot = { x = 0.000, y = 94.975, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306009] = { config_id = 306009, monster_id = 25310101, pos = { x = -1140.609, y = 286.439, z = 2155.691 }, rot = { x = 0.000, y = 261.762, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 21 },
	[306010] = { config_id = 306010, monster_id = 25210401, pos = { x = -1156.584, y = 298.623, z = 2132.166 }, rot = { x = 0.000, y = 253.265, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306011] = { config_id = 306011, monster_id = 25210103, pos = { x = -1165.500, y = 298.623, z = 2134.418 }, rot = { x = 0.000, y = 119.448, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306012] = { config_id = 306012, monster_id = 25210201, pos = { x = -1164.232, y = 292.096, z = 2132.760 }, rot = { x = 0.000, y = 307.377, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306014] = { config_id = 306014, monster_id = 25210201, pos = { x = -1164.798, y = 290.786, z = 2137.143 }, rot = { x = 0.000, y = 289.231, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306015] = { config_id = 306015, monster_id = 25210401, pos = { x = -1174.724, y = 293.105, z = 2145.355 }, rot = { x = 0.000, y = 142.736, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[306016] = { config_id = 306016, monster_id = 25310301, pos = { x = -1144.182, y = 285.533, z = 2159.132 }, rot = { x = 0.000, y = 240.526, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[306017] = { config_id = 306017, gadget_id = 70330244, pos = { x = -1152.426, y = 286.284, z = 2155.999 }, rot = { x = 0.000, y = 285.219, z = 0.000 }, level = 30, persistent = true, logic_state = {"SGV_WellUnlock"}, area_id = 21 },
	[306018] = { config_id = 306018, gadget_id = 70330245, pos = { x = -1161.468, y = 299.733, z = 2130.872 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 21 },
	[306020] = { config_id = 306020, gadget_id = 70330245, pos = { x = -1173.281, y = 294.238, z = 2141.868 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 21 },
	[306021] = { config_id = 306021, gadget_id = 70360286, pos = { x = -1152.498, y = 286.277, z = 2156.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 21 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[306024] = { config_id = 306024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1152.613, y = 286.339, z = 2157.659 }, area_id = 21 },
	-- 离开区域挑战失败
	[306029] = { config_id = 306029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1165.234, y = 299.336, z = 2140.257 }, area_id = 21 },
	-- 出界挑战失败
	[306033] = { config_id = 306033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1165.156, y = 298.554, z = 2139.578 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1306006, name = "ANY_MONSTER_DIE_306006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306006", action = "action_EVENT_ANY_MONSTER_DIE_306006" },
	{ config_id = 1306013, name = "ANY_MONSTER_DIE_306013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306013", action = "action_EVENT_ANY_MONSTER_DIE_306013" },
	-- 重置sgv
	{ config_id = 1306019, name = "GROUP_LOAD_306019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_306019", trigger_count = 0 },
	-- 任务通知和刷宝箱保底
	{ config_id = 1306022, name = "GROUP_LOAD_306022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_306022", action = "action_EVENT_GROUP_LOAD_306022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1306024, name = "ENTER_REGION_306024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_306024", action = "action_EVENT_ENTER_REGION_306024" },
	-- 钥匙检测
	{ config_id = 1306025, name = "ANY_GADGET_DIE_306025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306025", action = "action_EVENT_ANY_GADGET_DIE_306025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1306026, name = "CHALLENGE_SUCCESS_306026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306026" },
	-- 挑战失败初始化
	{ config_id = 1306027, name = "CHALLENGE_FAIL_306027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_306027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1306028, name = "SELECT_OPTION_306028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_306028", action = "action_EVENT_SELECT_OPTION_306028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1306029, name = "LEAVE_REGION_306029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_306029", action = "action_EVENT_LEAVE_REGION_306029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1306030, name = "CHALLENGE_SUCCESS_306030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306030" },
	-- 挑战失败重置group
	{ config_id = 1306031, name = "CHALLENGE_FAIL_306031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_306031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1306032, name = "GADGET_STATE_CHANGE_306032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1306033, name = "LEAVE_REGION_306033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_306033", action = "action_EVENT_LEAVE_REGION_306033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1306034, name = "CHALLENGE_SUCCESS_306034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306034" },
	-- 点操作台启动挑战
	{ config_id = 1306035, name = "SELECT_OPTION_306035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_306035", action = "action_EVENT_SELECT_OPTION_306035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1306036, name = "CHALLENGE_SUCCESS_306036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306036" },
	{ config_id = 1306037, name = "LUA_NOTIFY_306037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_306037", trigger_count = 0 },
	{ config_id = 1306038, name = "LUA_NOTIFY_306038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_306038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1306039, name = "CHALLENGE_SUCCESS_306039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306039" },
	-- 拿钥匙1刷suite5
	{ config_id = 1306040, name = "ANY_GADGET_DIE_306040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306040", action = "action_EVENT_ANY_GADGET_DIE_306040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1306041, name = "ANY_GADGET_DIE_306041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306041", action = "action_EVENT_ANY_GADGET_DIE_306041" },
	-- 拿钥匙3刷suite7
	{ config_id = 1306042, name = "ANY_GADGET_DIE_306042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_306042", action = "action_EVENT_ANY_GADGET_DIE_306042" },
	-- 刷第一波
	{ config_id = 1306043, name = "LUA_NOTIFY_306043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_306043" },
	-- 刷第二波
	{ config_id = 1306044, name = "LUA_NOTIFY_306044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_306044" },
	-- 刷第三波
	{ config_id = 1306045, name = "LUA_NOTIFY_306045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_306045" },
	-- 挑战失败初始化sgv
	{ config_id = 1306046, name = "CHALLENGE_FAIL_306046", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_306046" },
	-- 断线初始化
	{ config_id = 1306047, name = "GROUP_LOAD_306047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_306047", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1306048, name = "GROUP_LOAD_306048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_306048", action = "action_EVENT_GROUP_LOAD_306048", trigger_count = 0 },
	{ config_id = 1306049, name = "ANY_MONSTER_DIE_306049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306049", action = "action_EVENT_ANY_MONSTER_DIE_306049" },
	{ config_id = 1306050, name = "ANY_MONSTER_DIE_306050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306050", action = "action_EVENT_ANY_MONSTER_DIE_306050" },
	{ config_id = 1306051, name = "ANY_MONSTER_DIE_306051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_306051", action = "action_EVENT_ANY_MONSTER_DIE_306051" },
	-- 挑战失败延迟刷新group
	{ config_id = 1306052, name = "TIME_AXIS_PASS_306052", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_306052", action = "action_EVENT_TIME_AXIS_PASS_306052" },
	-- 挑战失败重置门变量
	{ config_id = 1306053, name = "CHALLENGE_FAIL_306053", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_306053" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 306002, monster_id = 25210301, pos = { x = -1142.658, y = 286.173, z = 2156.532 }, rot = { x = 0.000, y = 250.732, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
	},
	triggers = {
		{ config_id = 1306023, name = "GROUP_LOAD_306023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_306023", action = "action_EVENT_GROUP_LOAD_306023" }
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
		gadgets = { 306017 },
		regions = { 306024, 306029 },
		triggers = { "GROUP_LOAD_306019", "GROUP_LOAD_306022", "ENTER_REGION_306024", "CHALLENGE_SUCCESS_306026", "CHALLENGE_FAIL_306027", "LEAVE_REGION_306029", "CHALLENGE_SUCCESS_306034", "CHALLENGE_SUCCESS_306039", "CHALLENGE_FAIL_306046", "GROUP_LOAD_306047", "TIME_AXIS_PASS_306052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 306018, 306020 },
		regions = { 306033 },
		triggers = { "ANY_GADGET_DIE_306025", "SELECT_OPTION_306028", "CHALLENGE_SUCCESS_306030", "CHALLENGE_FAIL_306031", "GADGET_STATE_CHANGE_306032", "LEAVE_REGION_306033", "SELECT_OPTION_306035", "CHALLENGE_SUCCESS_306036", "LUA_NOTIFY_306037", "LUA_NOTIFY_306038", "ANY_GADGET_DIE_306040", "ANY_GADGET_DIE_306041", "ANY_GADGET_DIE_306042", "LUA_NOTIFY_306043", "LUA_NOTIFY_306044", "LUA_NOTIFY_306045", "CHALLENGE_FAIL_306053" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 306017, 306021 },
		regions = { 306033 },
		triggers = { "GROUP_LOAD_306022", "CHALLENGE_SUCCESS_306026", "CHALLENGE_FAIL_306027", "SELECT_OPTION_306028", "CHALLENGE_SUCCESS_306030", "CHALLENGE_FAIL_306031", "GADGET_STATE_CHANGE_306032", "LEAVE_REGION_306033", "CHALLENGE_SUCCESS_306034", "SELECT_OPTION_306035", "CHALLENGE_SUCCESS_306036", "LUA_NOTIFY_306037", "LUA_NOTIFY_306038", "CHALLENGE_SUCCESS_306039", "LUA_NOTIFY_306043", "LUA_NOTIFY_306044", "LUA_NOTIFY_306045", "CHALLENGE_FAIL_306046", "GROUP_LOAD_306048", "CHALLENGE_FAIL_306053" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 306001, 306003, 306004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306049" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 306010, 306011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306006", "ANY_MONSTER_DIE_306013" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 306012, 306014, 306015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 306005, 306007, 306008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306050" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 306009, 306016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_306051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306006(context, evt)
	if 306010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306006(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133304307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306013(context, evt)
	if 306011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306013(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133304307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306019(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_306022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306022(context, evt)
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
function condition_EVENT_ENTER_REGION_306024(context, evt)
	if evt.param1 ~= 306024 then return false end
	
	-- 判断是区域306024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 306024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_306024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133304306, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306026(context, evt)
	-- 将configid为 306017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304306, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304306, EntityType.GADGET, 306021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_306027(context, evt)
	-- 将configid为 306017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_306028(context, evt)
	-- 判断是gadgetid 306021 option_id 770
	if 306021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_306028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304306, EntityType.GADGET, 306021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 306017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_306029(context, evt)
	-- 判断是区域306029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 306029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_306029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_306031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304306, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 306017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306032(context, evt)
	if 306017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_306033(context, evt)
	-- 判断是区域306033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 306033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_306033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_306035(context, evt)
	-- 判断是gadgetid 306021 option_id 770
	if 306021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_306035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306036(context, evt)
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
function action_EVENT_LUA_NOTIFY_306037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306039(context, evt)
	-- 创建id为306021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306040(context, evt)
	if 306018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306041(context, evt)
	if 568007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_306042(context, evt)
	if 306020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_306042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_306045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304306, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_306046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304306, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 306017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_306048(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_306048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304306, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 306017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304306, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_306049(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306049(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_306050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306050(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_306051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_306051(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_306052(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_306052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304306, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_306053(context, evt)
	-- 将本组内变量名为 "door" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 0, 133304307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end