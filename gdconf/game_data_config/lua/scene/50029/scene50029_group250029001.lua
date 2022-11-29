-- 基础信息
local base_info = {
	group_id = 250029001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010301, pos = { x = 54.497, y = 4.350, z = -54.328 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 21010201, pos = { x = 54.392, y = 4.350, z = -50.933 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 21010301, pos = { x = 56.732, y = 4.350, z = -50.610 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010201, pos = { x = 56.833, y = 4.350, z = -54.401 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 21010301, pos = { x = 52.482, y = 4.350, z = -54.332 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 21010201, pos = { x = 52.800, y = 4.350, z = -50.837 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 57.636, y = 0.500, z = -15.880 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 21010301, pos = { x = 57.531, y = 0.500, z = -12.485 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 21010201, pos = { x = 59.871, y = 0.500, z = -12.162 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 21010301, pos = { x = 59.972, y = 0.500, z = -15.954 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 21010301, pos = { x = 55.621, y = 0.500, z = -15.884 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 21010201, pos = { x = 55.939, y = 0.500, z = -12.390 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 21020201, pos = { x = 54.200, y = 4.350, z = -54.351 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 21010201, pos = { x = 54.095, y = 4.350, z = -50.956 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 21010201, pos = { x = 56.435, y = 4.350, z = -50.633 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1016, monster_id = 21010201, pos = { x = 56.536, y = 4.350, z = -54.425 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 21010201, pos = { x = 52.185, y = 4.350, z = -54.355 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 21010201, pos = { x = 52.503, y = 4.350, z = -50.861 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 21020201, pos = { x = 57.520, y = 0.500, z = -16.288 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 21010201, pos = { x = 57.415, y = 0.500, z = -12.892 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1021, monster_id = 21010201, pos = { x = 59.755, y = 0.500, z = -12.570 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1022, monster_id = 21010201, pos = { x = 59.856, y = 0.500, z = -16.361 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1023, monster_id = 21010201, pos = { x = 55.505, y = 0.500, z = -16.292 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1024, monster_id = 21010201, pos = { x = 55.823, y = 0.500, z = -12.797 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 },
	{ config_id = 1025, monster_id = 21020101, pos = { x = 54.058, y = 4.350, z = -54.354 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1026, monster_id = 21010201, pos = { x = 53.953, y = 4.350, z = -50.959 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1027, monster_id = 21010201, pos = { x = 56.293, y = 4.350, z = -50.636 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1028, monster_id = 21010201, pos = { x = 56.394, y = 4.350, z = -54.427 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1029, monster_id = 21010201, pos = { x = 52.043, y = 4.350, z = -54.358 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1030, monster_id = 21010201, pos = { x = 52.361, y = 4.350, z = -50.863 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 },
	{ config_id = 1031, monster_id = 21020101, pos = { x = 57.554, y = 0.500, z = -16.683 }, rot = { x = 0.000, y = 280.815, z = 0.000 }, level = 1 },
	{ config_id = 1032, monster_id = 21010201, pos = { x = 57.449, y = 0.500, z = -13.287 }, rot = { x = 0.000, y = 265.824, z = 0.000 }, level = 1 },
	{ config_id = 1033, monster_id = 21010201, pos = { x = 59.789, y = 0.500, z = -12.965 }, rot = { x = 0.000, y = 257.377, z = 0.000 }, level = 1 },
	{ config_id = 1034, monster_id = 21010201, pos = { x = 59.890, y = 0.500, z = -16.756 }, rot = { x = 0.000, y = 293.839, z = 0.000 }, level = 1 },
	{ config_id = 1035, monster_id = 21010201, pos = { x = 55.539, y = 0.500, z = -16.687 }, rot = { x = 0.000, y = 303.528, z = 0.000 }, level = 1 },
	{ config_id = 1036, monster_id = 21010201, pos = { x = 55.858, y = 0.500, z = -13.192 }, rot = { x = 0.000, y = 258.239, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1037, gadget_id = 70350023, pos = { x = -43.424, y = 4.392, z = -31.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70350035, pos = { x = -43.424, y = 4.392, z = -31.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001039, name = "GADGET_CREATE_1039", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1039", action = "action_EVENT_GADGET_CREATE_1039" },
	{ config_id = 1001040, name = "SELECT_OPTION_1040", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1040", action = "action_EVENT_SELECT_OPTION_1040" },
	{ config_id = 1001041, name = "ANY_MONSTER_DIE_1041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1041", action = "action_EVENT_ANY_MONSTER_DIE_1041", trigger_count = 0 },
	{ config_id = 1001042, name = "ANY_MONSTER_DIE_1042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1042", action = "action_EVENT_ANY_MONSTER_DIE_1042", trigger_count = 0 },
	{ config_id = 1001043, name = "ANY_MONSTER_DIE_1043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1043", action = "action_EVENT_ANY_MONSTER_DIE_1043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 1037, 1038 },
		regions = { },
		triggers = { "GADGET_CREATE_1039", "SELECT_OPTION_1040", "ANY_MONSTER_DIE_1041", "ANY_MONSTER_DIE_1042", "ANY_MONSTER_DIE_1043" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1039(context, evt)
	if 1037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1037, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1040(context, evt)
	-- 判断是gadgetid 1037 option_id 7
	if 1037 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1040(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250029001, 2)
	
	-- 删除指定group： 250029001 ；指定config：1037；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250029001, 1037, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1041(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1041(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250029001, 3)
	
	-- 将本组内变量名为 "wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave", 1, 250029001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1042(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1042(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250029001, 4)
	
	-- 将本组内变量名为 "wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave", 2, 250029001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1043(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为2
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1043(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250029001, 2)
	
	-- 将本组内变量名为 "wave" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wave", 0, 250029001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end