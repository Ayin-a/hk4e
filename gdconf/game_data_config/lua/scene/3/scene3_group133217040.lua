-- 基础信息
local base_info = {
	group_id = 133217040
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40002, monster_id = 25030201, pos = { x = -4336.548, y = 200.133, z = -4028.057 }, rot = { x = 0.000, y = 76.225, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	{ config_id = 40004, monster_id = 25010601, pos = { x = -4331.802, y = 200.217, z = -4032.527 }, rot = { x = 0.000, y = 60.956, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	-- 拦截点二
	{ config_id = 40005, monster_id = 21020701, pos = { x = -4283.560, y = 201.310, z = -4115.651 }, rot = { x = 0.000, y = 326.426, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 14 },
	-- 拦截点二
	{ config_id = 40006, monster_id = 21030303, pos = { x = -4276.295, y = 202.836, z = -4118.477 }, rot = { x = 0.000, y = 324.144, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 14 },
	{ config_id = 40007, monster_id = 21010701, pos = { x = -4278.731, y = 202.987, z = -4149.641 }, rot = { x = 0.000, y = 340.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	{ config_id = 40008, monster_id = 21010701, pos = { x = -4278.742, y = 202.847, z = -4159.027 }, rot = { x = 0.000, y = 340.091, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	{ config_id = 40009, monster_id = 21010601, pos = { x = -4288.048, y = 203.654, z = -4156.395 }, rot = { x = 0.000, y = 23.461, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 40010, monster_id = 21011601, pos = { x = -4274.300, y = 202.891, z = -4158.591 }, rot = { x = 0.000, y = 288.043, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 40011, monster_id = 25030301, pos = { x = -4320.886, y = 200.001, z = -4040.783 }, rot = { x = 0.000, y = 301.765, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 },
	{ config_id = 40012, monster_id = 25010501, pos = { x = -4327.601, y = 200.056, z = -4037.898 }, rot = { x = 0.000, y = 5.969, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	{ config_id = 40013, monster_id = 25010301, pos = { x = -4326.304, y = 200.000, z = -4029.266 }, rot = { x = 0.000, y = 177.652, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 14 },
	-- 拦截点二
	{ config_id = 40014, monster_id = 21010501, pos = { x = -4286.647, y = 207.503, z = -4122.713 }, rot = { x = 0.000, y = 350.170, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true, pose_id = 32, area_id = 14 },
	{ config_id = 40019, monster_id = 22010301, pos = { x = -4282.359, y = 203.086, z = -4154.745 }, rot = { x = 0.000, y = 336.251, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 40016, gadget_id = 70380019, pos = { x = -4358.323, y = 200.593, z = -3985.772 }, rot = { x = 0.000, y = 144.160, z = 0.000 }, level = 12, route_id = 321700015, start_route = false, persistent = true, area_id = 14 },
	{ config_id = 40017, gadget_id = 70360001, pos = { x = -4358.203, y = 200.563, z = -3985.789 }, rot = { x = 0.000, y = 121.036, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 40018, gadget_id = 70300083, pos = { x = -4281.783, y = 201.458, z = -4119.000 }, rot = { x = 0.825, y = 335.973, z = 357.169 }, level = 1, area_id = 14 },
	{ config_id = 40020, gadget_id = 70710126, pos = { x = -4232.831, y = 199.971, z = -4171.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 40022, gadget_id = 70300090, pos = { x = -4286.415, y = 201.955, z = -4123.121 }, rot = { x = 0.000, y = 165.617, z = 0.000 }, level = 27, area_id = 14 },
	{ config_id = 40026, gadget_id = 70220004, pos = { x = -4317.063, y = 200.059, z = -4045.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40027, gadget_id = 70900388, pos = { x = -4314.146, y = 200.323, z = -4049.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40028, gadget_id = 70220004, pos = { x = -4311.569, y = 200.081, z = -4056.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40029, gadget_id = 70900388, pos = { x = -4329.599, y = 200.029, z = -4026.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40030, gadget_id = 70220004, pos = { x = -4327.482, y = 200.052, z = -4032.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40031, gadget_id = 70900388, pos = { x = -4323.747, y = 200.139, z = -4037.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40033, gadget_id = 70300091, pos = { x = -4281.840, y = 202.923, z = -4159.848 }, rot = { x = 0.000, y = 243.579, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 40036, gadget_id = 70300091, pos = { x = -4282.666, y = 202.311, z = -4150.112 }, rot = { x = 0.000, y = 261.007, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 创建拦截点三埋伏怪并移除拦截点一埋伏怪
	{ config_id = 1040001, name = "PLATFORM_REACH_POINT_40001", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40001", action = "action_EVENT_PLATFORM_REACH_POINT_40001" },
	{ config_id = 1040021, name = "ANY_GADGET_DIE_40021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40021", action = "action_EVENT_ANY_GADGET_DIE_40021" },
	{ config_id = 1040037, name = "GADGET_CREATE_40037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40037", action = "action_EVENT_GADGET_CREATE_40037", trigger_count = 0 },
	{ config_id = 1040038, name = "SELECT_OPTION_40038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40038", action = "action_EVENT_SELECT_OPTION_40038" },
	{ config_id = 1040039, name = "CHALLENGE_SUCCESS_40039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_40039", trigger_count = 0 },
	-- 到达点
	{ config_id = 1040040, name = "PLATFORM_REACH_POINT_40040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40040", action = "action_EVENT_PLATFORM_REACH_POINT_40040", trigger_count = 0, tag = "888" },
	{ config_id = 1040041, name = "CHALLENGE_FAIL_40041", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_40041", trigger_count = 0 },
	{ config_id = 1040042, name = "ANY_GADGET_DIE_40042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40042", action = "action_EVENT_ANY_GADGET_DIE_40042" },
	-- 拦截点一不停车
	{ config_id = 1040043, name = "PLATFORM_REACH_POINT_40043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40043", action = "action_EVENT_PLATFORM_REACH_POINT_40043", trigger_count = 0 },
	-- 拦截点二停车
	{ config_id = 1040045, name = "PLATFORM_REACH_POINT_40045", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40045", action = "action_EVENT_PLATFORM_REACH_POINT_40045", trigger_count = 0 },
	{ config_id = 1040047, name = "VARIABLE_CHANGE_40047", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle2Available", condition = "condition_EVENT_VARIABLE_CHANGE_40047", action = "action_EVENT_VARIABLE_CHANGE_40047", trigger_count = 0 },
	-- 拦截点三停车
	{ config_id = 1040048, name = "PLATFORM_REACH_POINT_40048", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_40048", action = "action_EVENT_PLATFORM_REACH_POINT_40048", trigger_count = 0 },
	{ config_id = 1040049, name = "VARIABLE_CHANGE_40049", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle3Available", condition = "condition_EVENT_VARIABLE_CHANGE_40049", action = "action_EVENT_VARIABLE_CHANGE_40049", trigger_count = 0 },
	{ config_id = 1040050, name = "ANY_GADGET_DIE_40050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40050", action = "action_EVENT_ANY_GADGET_DIE_40050" },
	{ config_id = 1040051, name = "ANY_GADGET_DIE_40051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40051", action = "action_EVENT_ANY_GADGET_DIE_40051" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle2Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle3Available", value = 2, no_refresh = false }
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
		gadgets = { 40016, 40017 },
		regions = { },
		triggers = { "GADGET_CREATE_40037", "SELECT_OPTION_40038", "CHALLENGE_SUCCESS_40039", "PLATFORM_REACH_POINT_40040", "CHALLENGE_FAIL_40041", "ANY_GADGET_DIE_40042" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 40005, 40006, 40014 },
		gadgets = { 40018, 40020, 40022, 40026, 40027, 40028, 40029, 40030, 40031, 40033, 40036 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_40001", "ANY_GADGET_DIE_40021", "PLATFORM_REACH_POINT_40043", "PLATFORM_REACH_POINT_40045", "VARIABLE_CHANGE_40047", "PLATFORM_REACH_POINT_40048", "VARIABLE_CHANGE_40049", "ANY_GADGET_DIE_40050", "ANY_GADGET_DIE_40051" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 拦截点一埋伏怪,
		monsters = { 40002, 40004, 40011, 40012, 40013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 拦截点三埋伏怪,
		monsters = { 40007, 40008, 40009, 40010, 40019 },
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
function condition_EVENT_PLATFORM_REACH_POINT_40001(context, evt)
	-- 判断是gadgetid 为 40016的移动平台，是否到达了321700015 的路线中的 32 点
	
	if 40016 ~= evt.param1 then
	  return false
	end
	
	if 321700015 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40001(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217040, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40021(context, evt)
	if 40018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40021(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_40037(context, evt)
	if 40017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40037(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133217040, 40017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_40038(context, evt)
	-- 判断是gadgetid 40017 option_id 7
	if 40017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40038(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217040, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_40039(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 2)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 5)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217040, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40040(context, evt)
	-- 判断是gadgetid 为 40016的移动平台，是否到达了321700015 的路线中的 52 点
	
	if 40016 ~= evt.param1 then
	  return false
	end
	
	if 321700015 ~= evt.param2 then
	  return false
	end
	
	if 52 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40040(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 40016 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40016, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_40041(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 5)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217040, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40042(context, evt)
	if 40016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40042(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40043(context, evt)
	-- 判断是gadgetid 为 40016的移动平台，是否到达了321700015 的路线中的 5 点
	
	if 40016 ~= evt.param1 then
	  return false
	end
	
	if 321700015 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40043(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217040, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40045(context, evt)
	-- 判断是gadgetid 为 40016的移动平台，是否到达了321700015 的路线中的 28 点
	
	if 40016 ~= evt.param1 then
	  return false
	end
	
	if 321700015 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40045(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217040, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40047(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_40048(context, evt)
	-- 判断是gadgetid 为 40016的移动平台，是否到达了321700015 的路线中的 35 点
	
	if 40016 ~= evt.param1 then
	  return false
	end
	
	if 321700015 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"大于等于1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_40048(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 40016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40049(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 40016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40050(context, evt)
	if 40033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40050(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40051(context, evt)
	if 40036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40051(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end