-- 基础信息
local base_info = {
	group_id = 133212186
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 拦截点一
	{ config_id = 186001, monster_id = 21020701, pos = { x = -3583.148, y = 200.116, z = -2814.071 }, rot = { x = 0.000, y = 154.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 13 },
	-- 拦截点一
	{ config_id = 186002, monster_id = 21010601, pos = { x = -3576.445, y = 200.759, z = -2813.564 }, rot = { x = 0.000, y = 40.804, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9011, area_id = 13 },
	-- 拦截点一
	{ config_id = 186003, monster_id = 21011601, pos = { x = -3585.399, y = 200.000, z = -2819.097 }, rot = { x = 0.000, y = 142.086, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 186007, monster_id = 25030301, pos = { x = -3562.463, y = 200.000, z = -2690.261 }, rot = { x = 0.000, y = 301.728, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 },
	-- 拦截点一
	{ config_id = 186024, monster_id = 21010301, pos = { x = -3577.266, y = 201.061, z = -2819.565 }, rot = { x = 0.000, y = 255.347, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	-- 拦截点一
	{ config_id = 186025, monster_id = 21010701, pos = { x = -3582.472, y = 200.513, z = -2825.931 }, rot = { x = 0.000, y = 21.497, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 13 },
	-- 拦截点一
	{ config_id = 186026, monster_id = 21010301, pos = { x = -3576.974, y = 201.177, z = -2822.749 }, rot = { x = 0.000, y = 279.553, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 186027, monster_id = 25030201, pos = { x = -3568.348, y = 200.160, z = -2656.739 }, rot = { x = 0.000, y = 147.244, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 },
	{ config_id = 186029, monster_id = 25010301, pos = { x = -3554.751, y = 200.109, z = -2654.046 }, rot = { x = 0.000, y = 243.682, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 13 },
	{ config_id = 186030, monster_id = 25010501, pos = { x = -3571.827, y = 200.000, z = -2663.311 }, rot = { x = 0.000, y = 104.876, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 13 },
	{ config_id = 186031, monster_id = 25010501, pos = { x = -3562.023, y = 200.192, z = -2675.506 }, rot = { x = 0.000, y = 292.557, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 13 },
	{ config_id = 186032, monster_id = 25010301, pos = { x = -3575.286, y = 200.005, z = -2682.351 }, rot = { x = 0.000, y = 80.559, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 13 },
	-- 拦截点三
	{ config_id = 186044, monster_id = 21010901, pos = { x = -3551.142, y = 206.360, z = -2511.783 }, rot = { x = 0.000, y = 120.291, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 13 },
	-- 拦截点三
	{ config_id = 186045, monster_id = 21010501, pos = { x = -3559.997, y = 205.554, z = -2527.574 }, rot = { x = 0.000, y = 112.654, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 13 },
	-- 拦截点三
	{ config_id = 186046, monster_id = 21030601, pos = { x = -3547.323, y = 200.584, z = -2534.254 }, rot = { x = 0.000, y = 322.620, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 },
	-- 拦截点三
	{ config_id = 186048, monster_id = 22010401, pos = { x = -3552.370, y = 200.516, z = -2521.756 }, rot = { x = 0.000, y = 117.797, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 186004, gadget_id = 70380019, pos = { x = -3631.584, y = 200.389, z = -2927.132 }, rot = { x = 0.000, y = 14.769, z = 0.000 }, level = 12, route_id = 321200089, start_route = false, persistent = true, area_id = 12 },
	{ config_id = 186005, gadget_id = 70360001, pos = { x = -3631.577, y = 200.389, z = -2927.133 }, rot = { x = 0.000, y = 14.769, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 186006, gadget_id = 70300083, pos = { x = -3579.800, y = 200.290, z = -2810.602 }, rot = { x = 0.000, y = 0.724, z = 4.150 }, level = 1, area_id = 13 },
	{ config_id = 186008, gadget_id = 70710126, pos = { x = -3591.826, y = 200.573, z = -2434.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 186022, gadget_id = 70300092, pos = { x = -3636.361, y = 200.348, z = -2928.596 }, rot = { x = 0.000, y = 296.337, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 186033, gadget_id = 70900388, pos = { x = -3568.176, y = 200.078, z = -2695.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186034, gadget_id = 70220004, pos = { x = -3566.567, y = 200.173, z = -2663.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186035, gadget_id = 70900388, pos = { x = -3563.780, y = 200.231, z = -2660.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186036, gadget_id = 70900388, pos = { x = -3565.522, y = 200.176, z = -2673.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186037, gadget_id = 70220004, pos = { x = -3563.630, y = 200.552, z = -2654.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186038, gadget_id = 70900388, pos = { x = -3571.634, y = 200.316, z = -2721.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186039, gadget_id = 70220004, pos = { x = -3570.538, y = 200.370, z = -2708.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 186040, gadget_id = 70300090, pos = { x = -3560.065, y = 200.103, z = -2527.626 }, rot = { x = 0.000, y = 296.256, z = 0.000 }, level = 27, area_id = 13 },
	-- 拦截点三
	{ config_id = 186041, gadget_id = 70300083, pos = { x = -3557.154, y = 200.476, z = -2522.964 }, rot = { x = 0.000, y = 297.729, z = 1.070 }, level = 1, area_id = 13 },
	-- 拦截点三
	{ config_id = 186042, gadget_id = 70300083, pos = { x = -3553.811, y = 200.637, z = -2516.438 }, rot = { x = 0.000, y = 297.729, z = 1.170 }, level = 1, area_id = 13 },
	{ config_id = 186043, gadget_id = 70300090, pos = { x = -3551.327, y = 200.701, z = -2511.654 }, rot = { x = 0.000, y = 305.352, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1186009, name = "GADGET_CREATE_186009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_186009", action = "action_EVENT_GADGET_CREATE_186009", trigger_count = 0 },
	{ config_id = 1186010, name = "SELECT_OPTION_186010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_186010", action = "action_EVENT_SELECT_OPTION_186010" },
	{ config_id = 1186011, name = "CHALLENGE_SUCCESS_186011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_186011", trigger_count = 0 },
	-- 到达点
	{ config_id = 1186012, name = "PLATFORM_REACH_POINT_186012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_186012", action = "action_EVENT_PLATFORM_REACH_POINT_186012", trigger_count = 0, tag = "888" },
	{ config_id = 1186013, name = "CHALLENGE_FAIL_186013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_186013", trigger_count = 0 },
	{ config_id = 1186014, name = "ANY_GADGET_DIE_186014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186014", action = "action_EVENT_ANY_GADGET_DIE_186014" },
	-- 拦截点一停车
	{ config_id = 1186015, name = "PLATFORM_REACH_POINT_186015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_186015", action = "action_EVENT_PLATFORM_REACH_POINT_186015", trigger_count = 0 },
	{ config_id = 1186016, name = "ANY_GADGET_DIE_186016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186016", action = "action_EVENT_ANY_GADGET_DIE_186016", trigger_count = 0 },
	-- 拦截点二不停车
	{ config_id = 1186017, name = "PLATFORM_REACH_POINT_186017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_186017", action = "action_EVENT_PLATFORM_REACH_POINT_186017", trigger_count = 0 },
	-- 拦截点一开车
	{ config_id = 1186018, name = "VARIABLE_CHANGE_186018", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_186018", action = "action_EVENT_VARIABLE_CHANGE_186018", trigger_count = 0 },
	-- 拦截点三
	{ config_id = 1186019, name = "ANY_GADGET_DIE_186019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186019", action = "action_EVENT_ANY_GADGET_DIE_186019" },
	-- 拦截点三停车
	{ config_id = 1186020, name = "PLATFORM_REACH_POINT_186020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_186020", action = "action_EVENT_PLATFORM_REACH_POINT_186020", trigger_count = 0 },
	-- 拦截点三开车
	{ config_id = 1186049, name = "VARIABLE_CHANGE_186049", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle3Available", condition = "condition_EVENT_VARIABLE_CHANGE_186049", action = "action_EVENT_VARIABLE_CHANGE_186049", trigger_count = 0 },
	-- 拦截点三
	{ config_id = 1186050, name = "ANY_GADGET_DIE_186050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186050", action = "action_EVENT_ANY_GADGET_DIE_186050" },
	-- 拦截点一
	{ config_id = 1186051, name = "ANY_GADGET_DIE_186051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_186051", action = "action_EVENT_ANY_GADGET_DIE_186051" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 2, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 2, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 186021, gadget_id = 70220048, pos = { x = -3635.532, y = 200.332, z = -2931.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 186023, gadget_id = 70220048, pos = { x = -3637.665, y = 200.305, z = -2931.749 }, rot = { x = 0.000, y = 41.498, z = 0.000 }, level = 27, area_id = 12 }
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
		gadgets = { 186004, 186005, 186022 },
		regions = { },
		triggers = { "GADGET_CREATE_186009", "SELECT_OPTION_186010", "CHALLENGE_SUCCESS_186011", "PLATFORM_REACH_POINT_186012", "CHALLENGE_FAIL_186013", "ANY_GADGET_DIE_186014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 186001, 186002, 186003, 186044, 186045, 186046, 186048 },
		gadgets = { 186006, 186008, 186033, 186034, 186035, 186036, 186037, 186038, 186039, 186040, 186041, 186042, 186043 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_186015", "ANY_GADGET_DIE_186016", "PLATFORM_REACH_POINT_186017", "VARIABLE_CHANGE_186018", "ANY_GADGET_DIE_186019", "PLATFORM_REACH_POINT_186020", "VARIABLE_CHANGE_186049", "ANY_GADGET_DIE_186050", "ANY_GADGET_DIE_186051" },
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
		monsters = { 186024, 186025, 186026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 拦截点二埋伏怪,
		monsters = { 186007, 186027, 186029, 186030, 186031, 186032 },
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
function condition_EVENT_GADGET_CREATE_186009(context, evt)
	if 186005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_186009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212186, 186005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_186010(context, evt)
	-- 判断是gadgetid 186005 option_id 7
	if 186005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_186010(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 186004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 186005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212186, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_186011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212186, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212186, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212186, 5)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212186, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_186012(context, evt)
	-- 判断是gadgetid 为 186004的移动平台，是否到达了321200089 的路线中的 64 点
	
	if 186004 ~= evt.param1 then
	  return false
	end
	
	if 321200089 ~= evt.param2 then
	  return false
	end
	
	if 64 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_186012(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 186004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 186004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_186013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212186, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212186, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186014(context, evt)
	if 186004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186014(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_186015(context, evt)
	-- 判断是gadgetid 为 186004的移动平台，是否到达了321200089 的路线中的 14 点
	
	if 186004 ~= evt.param1 then
	  return false
	end
	
	if 321200089 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_186015(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 186004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212186, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186016(context, evt)
	if 186006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186016(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_186017(context, evt)
	-- 判断是gadgetid 为 186004的移动平台，是否到达了321200089 的路线中的 24 点
	
	if 186004 ~= evt.param1 then
	  return false
	end
	
	if 321200089 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_186017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212186, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_186018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_186018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 186004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186019(context, evt)
	if 186042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186019(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_186020(context, evt)
	-- 判断是gadgetid 为 186004的移动平台，是否到达了321200089 的路线中的 46 点
	
	if 186004 ~= evt.param1 then
	  return false
	end
	
	if 321200089 ~= evt.param2 then
	  return false
	end
	
	if 46 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_186020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 186004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_186049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_186049(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 186004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186050(context, evt)
	if 186041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186050(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_186051(context, evt)
	if 186042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_186051(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end