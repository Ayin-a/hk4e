-- 基础信息
local base_info = {
	group_id = 133304001
}

-- Trigger变量
local defs = {
	finishquest = "7304934_fin",
	group_reward = 133304100,
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
	[1002] = { config_id = 1002, monster_id = 25210501, pos = { x = -1932.117, y = 209.597, z = 2901.133 }, rot = { x = 0.000, y = 354.013, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1003] = { config_id = 1003, monster_id = 25210201, pos = { x = -1930.050, y = 209.636, z = 2898.119 }, rot = { x = 0.000, y = 355.999, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1004] = { config_id = 1004, monster_id = 25210502, pos = { x = -1928.741, y = 209.753, z = 2900.816 }, rot = { x = 0.000, y = 350.270, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1005] = { config_id = 1005, monster_id = 25310101, pos = { x = -1930.239, y = 209.572, z = 2913.384 }, rot = { x = 0.000, y = 174.596, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 21 },
	[1006] = { config_id = 1006, monster_id = 25210302, pos = { x = -1932.366, y = 209.489, z = 2912.173 }, rot = { x = 0.000, y = 178.959, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1008] = { config_id = 1008, monster_id = 25210302, pos = { x = -1927.831, y = 209.537, z = 2912.129 }, rot = { x = 0.000, y = 182.430, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1009] = { config_id = 1009, monster_id = 25310201, pos = { x = -1930.288, y = 209.515, z = 2912.458 }, rot = { x = 0.000, y = 183.219, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, pose_id = 1, area_id = 21 },
	[1010] = { config_id = 1010, monster_id = 25210201, pos = { x = -1919.313, y = 209.636, z = 2914.208 }, rot = { x = 0.000, y = 117.766, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1011] = { config_id = 1011, monster_id = 25210103, pos = { x = -1919.348, y = 209.924, z = 2907.047 }, rot = { x = 0.000, y = 49.424, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1012] = { config_id = 1012, monster_id = 25210401, pos = { x = -1941.795, y = 215.300, z = 2889.758 }, rot = { x = 0.000, y = 137.425, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1013] = { config_id = 1013, monster_id = 25210402, pos = { x = -1942.294, y = 215.293, z = 2884.356 }, rot = { x = 0.000, y = 63.077, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 },
	[1016] = { config_id = 1016, monster_id = 25310301, pos = { x = -1931.322, y = 209.531, z = 2899.043 }, rot = { x = 0.000, y = 7.678, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1017] = { config_id = 1017, gadget_id = 70330244, pos = { x = -1930.743, y = 209.493, z = 2905.906 }, rot = { x = 0.000, y = 1.280, z = 0.000 }, level = 30, persistent = true, logic_state = {"SGV_WellUnlock"}, area_id = 21 },
	[1018] = { config_id = 1018, gadget_id = 70330245, pos = { x = -1914.120, y = 211.105, z = 2911.211 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 21 },
	[1019] = { config_id = 1019, gadget_id = 70330245, pos = { x = -1938.814, y = 215.864, z = 2886.730 }, rot = { x = 0.000, y = 16.403, z = 0.000 }, level = 30, area_id = 21 },
	[1021] = { config_id = 1021, gadget_id = 70360286, pos = { x = -1930.731, y = 210.339, z = 2906.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 770 } }, area_id = 21 }
}

-- 区域
regions = {
	-- 靠近机器开启挑战
	[1024] = { config_id = 1024, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1930.939, y = 210.464, z = 2906.341 }, area_id = 21 },
	-- 离开区域挑战失败
	[1029] = { config_id = 1029, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1926.240, y = 210.454, z = 2900.854 }, area_id = 21 },
	-- 出界挑战失败
	[1033] = { config_id = 1033, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1923.190, y = 209.671, z = 2898.571 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1001014, name = "ANY_MONSTER_DIE_1014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1014", action = "action_EVENT_ANY_MONSTER_DIE_1014" },
	{ config_id = 1001015, name = "ANY_MONSTER_DIE_1015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1015", action = "action_EVENT_ANY_MONSTER_DIE_1015" },
	-- 重置sgv
	{ config_id = 1001020, name = "GROUP_LOAD_1020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1020", trigger_count = 0 },
	-- 任务通知和刷宝箱保底
	{ config_id = 1001022, name = "GROUP_LOAD_1022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1022", action = "action_EVENT_GROUP_LOAD_1022", trigger_count = 0 },
	-- 靠近机器开启挑战
	{ config_id = 1001024, name = "ENTER_REGION_1024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1024", action = "action_EVENT_ENTER_REGION_1024" },
	-- 钥匙检测
	{ config_id = 1001025, name = "ANY_GADGET_DIE_1025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1025", action = "action_EVENT_ANY_GADGET_DIE_1025", trigger_count = 0, tag = "233" },
	-- 挑战成功切到suite3
	{ config_id = 1001026, name = "CHALLENGE_SUCCESS_1026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1026" },
	-- 挑战失败初始化
	{ config_id = 1001027, name = "CHALLENGE_FAIL_1027", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1027" },
	-- 点操作台初始化怪物潮
	{ config_id = 1001028, name = "SELECT_OPTION_1028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1028", action = "action_EVENT_SELECT_OPTION_1028", tag = "232" },
	-- 离开区域挑战失败
	{ config_id = 1001029, name = "LEAVE_REGION_1029", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_1029", action = "action_EVENT_LEAVE_REGION_1029", trigger_count = 0 },
	-- 挑战成功刷宝箱，通知任务进度由另一个挑战成功发送
	{ config_id = 1001030, name = "CHALLENGE_SUCCESS_1030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1030" },
	-- 挑战失败重置group
	{ config_id = 1001031, name = "CHALLENGE_FAIL_1031", event = EventType.EVENT_CHALLENGE_FAIL, source = "458", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1031" },
	-- 吸收器转203则挑战成功
	{ config_id = 1001032, name = "GADGET_STATE_CHANGE_1032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1032", action = "", trigger_count = 0, tag = "234" },
	-- 出界挑战失败
	{ config_id = 1001033, name = "LEAVE_REGION_1033", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_1033", action = "action_EVENT_LEAVE_REGION_1033" },
	-- 子挑战1成功开启子挑战2
	{ config_id = 1001034, name = "CHALLENGE_SUCCESS_1034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1034" },
	-- 点操作台启动挑战
	{ config_id = 1001035, name = "SELECT_OPTION_1035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1035", action = "action_EVENT_SELECT_OPTION_1035" },
	-- 挑战成功通知子任务完成，改编号去defs里改
	{ config_id = 1001036, name = "CHALLENGE_SUCCESS_1036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "458", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1036" },
	{ config_id = 1001037, name = "LUA_NOTIFY_1037", event = EventType.EVENT_LUA_NOTIFY, source = "ShowReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_1037", trigger_count = 0 },
	{ config_id = 1001038, name = "LUA_NOTIFY_1038", event = EventType.EVENT_LUA_NOTIFY, source = "CloseReminder", condition = "", action = "action_EVENT_LUA_NOTIFY_1038", trigger_count = 0 },
	-- 子挑战1成功挂按钮
	{ config_id = 1001039, name = "CHALLENGE_SUCCESS_1039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1457", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1039" },
	-- 拿钥匙1刷suite5
	{ config_id = 1001040, name = "ANY_GADGET_DIE_1040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1040", action = "action_EVENT_ANY_GADGET_DIE_1040" },
	-- 拿钥匙2刷suite6
	{ config_id = 1001041, name = "ANY_GADGET_DIE_1041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1041", action = "action_EVENT_ANY_GADGET_DIE_1041" },
	-- 拿钥匙3刷suite7
	{ config_id = 1001042, name = "ANY_GADGET_DIE_1042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1042", action = "action_EVENT_ANY_GADGET_DIE_1042" },
	-- 刷第一波
	{ config_id = 1001043, name = "LUA_NOTIFY_1043", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase01", condition = "", action = "action_EVENT_LUA_NOTIFY_1043" },
	-- 刷第二波
	{ config_id = 1001044, name = "LUA_NOTIFY_1044", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase02", condition = "", action = "action_EVENT_LUA_NOTIFY_1044" },
	-- 刷第三波
	{ config_id = 1001045, name = "LUA_NOTIFY_1045", event = EventType.EVENT_LUA_NOTIFY, source = "ChargePhase03", condition = "", action = "action_EVENT_LUA_NOTIFY_1045" },
	-- 挑战失败初始化sgv
	{ config_id = 1001046, name = "CHALLENGE_FAIL_1046", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1046" },
	-- 断线初始化
	{ config_id = 1001047, name = "GROUP_LOAD_1047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1047", trigger_count = 0 },
	-- 挑战失败重置group
	{ config_id = 1001048, name = "GROUP_LOAD_1048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1048", action = "action_EVENT_GROUP_LOAD_1048", trigger_count = 0 },
	{ config_id = 1001049, name = "ANY_MONSTER_DIE_1049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1049", action = "action_EVENT_ANY_MONSTER_DIE_1049" },
	{ config_id = 1001050, name = "ANY_MONSTER_DIE_1050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1050", action = "action_EVENT_ANY_MONSTER_DIE_1050" },
	{ config_id = 1001051, name = "ANY_MONSTER_DIE_1051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1051", action = "action_EVENT_ANY_MONSTER_DIE_1051" },
	-- 挑战失败延迟刷新group
	{ config_id = 1001052, name = "TIME_AXIS_PASS_1052", event = EventType.EVENT_TIME_AXIS_PASS, source = "failDelay", condition = "condition_EVENT_TIME_AXIS_PASS_1052", action = "action_EVENT_TIME_AXIS_PASS_1052" },
	-- 挑战失败重置门的变量
	{ config_id = 1001053, name = "CHALLENGE_FAIL_1053", event = EventType.EVENT_CHALLENGE_FAIL, source = "457", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1053" }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_WellUnlock", value = 1, no_refresh = false, variable_type = 1 },
	{ config_id = 2, name = "success", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 1001, monster_id = 25210202, pos = { x = -1931.443, y = 209.611, z = 2898.192 }, rot = { x = 0.000, y = 0.477, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 4165 }, isElite = true, area_id = 21 },
		{ config_id = 1007, monster_id = 25210302, pos = { x = -1930.393, y = 209.491, z = 2911.011 }, rot = { x = 0.000, y = 184.515, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 21 }
	},
	triggers = {
		{ config_id = 1001023, name = "GROUP_LOAD_1023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_1023", action = "action_EVENT_GROUP_LOAD_1023" }
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
		gadgets = { 1017 },
		regions = { 1024, 1029 },
		triggers = { "GROUP_LOAD_1020", "GROUP_LOAD_1022", "ENTER_REGION_1024", "CHALLENGE_SUCCESS_1026", "CHALLENGE_FAIL_1027", "LEAVE_REGION_1029", "CHALLENGE_SUCCESS_1034", "CHALLENGE_SUCCESS_1039", "CHALLENGE_FAIL_1046", "GROUP_LOAD_1047", "TIME_AXIS_PASS_1052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1018, 1019 },
		regions = { 1033 },
		triggers = { "ANY_GADGET_DIE_1025", "SELECT_OPTION_1028", "CHALLENGE_SUCCESS_1030", "CHALLENGE_FAIL_1031", "GADGET_STATE_CHANGE_1032", "LEAVE_REGION_1033", "SELECT_OPTION_1035", "CHALLENGE_SUCCESS_1036", "LUA_NOTIFY_1037", "LUA_NOTIFY_1038", "ANY_GADGET_DIE_1040", "ANY_GADGET_DIE_1041", "ANY_GADGET_DIE_1042", "LUA_NOTIFY_1043", "LUA_NOTIFY_1044", "LUA_NOTIFY_1045", "CHALLENGE_FAIL_1053" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1017, 1021 },
		regions = { 1033 },
		triggers = { "GROUP_LOAD_1022", "CHALLENGE_SUCCESS_1026", "CHALLENGE_FAIL_1027", "SELECT_OPTION_1028", "CHALLENGE_SUCCESS_1030", "CHALLENGE_FAIL_1031", "GADGET_STATE_CHANGE_1032", "LEAVE_REGION_1033", "CHALLENGE_SUCCESS_1034", "SELECT_OPTION_1035", "CHALLENGE_SUCCESS_1036", "LUA_NOTIFY_1037", "LUA_NOTIFY_1038", "CHALLENGE_SUCCESS_1039", "LUA_NOTIFY_1043", "LUA_NOTIFY_1044", "LUA_NOTIFY_1045", "CHALLENGE_FAIL_1046", "GROUP_LOAD_1048", "CHALLENGE_FAIL_1053" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1002, 1003, 1004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1049" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1010, 1011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1014", "ANY_MONSTER_DIE_1015" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1012, 1013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 1005, 1006, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1050" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 1009, 1016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1051" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	if 1010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133304019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	if 1011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "door", 1, 133304019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1020(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1022(context, evt)
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1022(context, evt)
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
function condition_EVENT_ENTER_REGION_1024(context, evt)
	if evt.param1 ~= 1024 then return false end
	
	-- 判断是区域1024
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 1024 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1024(context, evt)
			ScriptLib.CreateFatherChallenge(context, 457, 263, 1800, {success=2,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 457, 1457, 264, {2,233,defs.keyNum,1,0,0}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 457)
			ScriptLib.AddExtraGroupSuite(context, 133304001, 2)
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock", defs.defaultNum)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1025(context, evt)
	if gadgets[evt.param1].gadget_id ~= 70330245 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1025(context, evt)
	local value = ScriptLib.GetGroupLogicStateValue(context,"SGV_WellUnlock")
	ScriptLib.SetGroupLogicStateValue(context,"SGV_WellUnlock",value +1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1026(context, evt)
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304001, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304001, EntityType.GADGET, 1021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1027(context, evt)
	-- 将configid为 1017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"failDelay"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "failDelay", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1028(context, evt)
	-- 判断是gadgetid 1021 option_id 770
	if 1021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1028(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304001, EntityType.GADGET, 1021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_1029(context, evt)
	-- 判断是区域1029
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 1029 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_1029(context, evt)
	-- 终止识别id为457的挑战，并判定失败
		ScriptLib.StopChallenge(context, 457, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1030(context, evt)
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304001, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1032(context, evt)
	if 1017 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_1033(context, evt)
	-- 判断是区域1033
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 1033 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_1033(context, evt)
	-- 终止识别id为458的挑战，并判定失败
		ScriptLib.StopChallenge(context, 458, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1034(context, evt)
			ScriptLib.AttachChildChallenge(context, 457, 1458, 265, {9,232,1,1,0,0}, {}, {success=1,fail=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1035(context, evt)
	-- 判断是gadgetid 1021 option_id 770
	if 1021 ~= evt.param1 then
		return false	
	end
	
	if 770 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1035(context, evt)
			ScriptLib.CreateFatherChallenge(context, 458, 266, 1800, {success=1,fail=1,fail_on_wipe=true})
			ScriptLib.AttachChildChallenge(context, 458, 1270, 270, {180,7,234,1}, {}, {success=1,fail=1})
			ScriptLib.StartFatherChallenge(context, 458)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1036(context, evt)
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
function action_EVENT_LUA_NOTIFY_1037(context, evt)
	-- 调用提示id为 1111352 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111352) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_1038(context, evt)
	-- 调用提示id为 1111353 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111353) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1039(context, evt)
	-- 创建id为1021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1040(context, evt)
	if 1018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1040(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1041(context, evt)
	if 1019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1042(context, evt)
	if 568008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_1043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 4)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_1044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 8)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_1045(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304001, 9)
	
	-- 调用提示id为 1111399 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111399) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1046(context, evt)
	-- 将Group内的LogicStateValue： "SGV_WellUnlock" 的值设置为 0
	if 0 ~= ScriptLib.SetGroupLogicStateValue(context, "SGV_WellUnlock", defs.defaultNum) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_LogicStateValue")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_1048(context, evt)
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304001, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 4)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 9)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304001, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1049(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1049(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_1050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1050(context, evt)
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
function condition_EVENT_ANY_MONSTER_DIE_1051(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1051(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_1052(context, evt)
	if "failDelay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1053(context, evt)
	-- 将本组内变量名为 "door" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 0, 133304019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end