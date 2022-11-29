-- 基础信息
local base_info = {
	group_id = 133209024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24002, monster_id = 25010201, pos = { x = -2603.474, y = 200.567, z = -3931.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24016, monster_id = 25010301, pos = { x = -2610.760, y = 200.000, z = -3967.926 }, rot = { x = 0.000, y = 0.000, z = 2.531 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24018, monster_id = 25010201, pos = { x = -2604.638, y = 200.424, z = -3999.797 }, rot = { x = 0.000, y = 29.051, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24020, monster_id = 25030301, pos = { x = -2606.137, y = 200.477, z = -3927.937 }, rot = { x = 0.000, y = 79.084, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24021, monster_id = 25010601, pos = { x = -2606.253, y = 200.504, z = -3931.885 }, rot = { x = 0.000, y = 60.132, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24022, monster_id = 25010501, pos = { x = -2608.634, y = 200.440, z = -3930.584 }, rot = { x = 0.000, y = 60.783, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24023, monster_id = 25020201, pos = { x = -2606.689, y = 200.000, z = -3959.759 }, rot = { x = 0.000, y = 321.752, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24024, monster_id = 25020201, pos = { x = -2612.649, y = 200.014, z = -3967.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24025, monster_id = 25080201, pos = { x = -2610.852, y = 200.094, z = -3960.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 24026, monster_id = 25030201, pos = { x = -2615.664, y = 200.064, z = -3961.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24027, monster_id = 25100201, pos = { x = -2609.789, y = 200.354, z = -3995.259 }, rot = { x = 0.000, y = 72.427, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 24028, monster_id = 25020201, pos = { x = -2608.051, y = 200.260, z = -4003.149 }, rot = { x = 0.000, y = 18.276, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 24029, monster_id = 25080201, pos = { x = -2609.716, y = 200.392, z = -3998.131 }, rot = { x = 0.000, y = 67.900, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 24030, monster_id = 25010201, pos = { x = -2610.568, y = 200.386, z = -4002.340 }, rot = { x = 0.000, y = 53.992, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24004, gadget_id = 70710438, pos = { x = -2560.674, y = 209.310, z = -3888.238 }, rot = { x = 0.000, y = 214.363, z = 0.000 }, level = 30, route_id = 320900002, start_route = false, persistent = true, area_id = 11 },
	{ config_id = 24005, gadget_id = 70360001, pos = { x = -2560.674, y = 209.150, z = -3888.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 24007, gadget_id = 70710408, pos = { x = -2613.222, y = 199.936, z = -3965.458 }, rot = { x = 351.452, y = 344.713, z = 0.635 }, level = 1, area_id = 11 },
	{ config_id = 24008, gadget_id = 70900201, pos = { x = -2550.435, y = 214.219, z = -3989.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 24031, gadget_id = 70710408, pos = { x = -2610.717, y = 199.969, z = -3964.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 24039, gadget_id = 70710408, pos = { x = -2600.669, y = 200.502, z = -3929.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 24040, gadget_id = 70710408, pos = { x = -2605.668, y = 200.385, z = -3924.918 }, rot = { x = 0.000, y = 77.683, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 24041, gadget_id = 70710408, pos = { x = -2604.943, y = 200.077, z = -4002.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 24042, gadget_id = 70710408, pos = { x = -2612.759, y = 200.295, z = -3998.469 }, rot = { x = 0.000, y = 74.072, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 24043, gadget_id = 70710408, pos = { x = -2612.944, y = 199.911, z = -3994.729 }, rot = { x = 0.000, y = 50.634, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一波 4号点 检查是否停车
	{ config_id = 1024001, name = "PLATFORM_REACH_POINT_24001", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24001", action = "action_EVENT_PLATFORM_REACH_POINT_24001", trigger_count = 0 },
	{ config_id = 1024003, name = "ANY_MONSTER_DIE_24003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24003", action = "action_EVENT_ANY_MONSTER_DIE_24003", trigger_count = 0 },
	-- 到第二波停车点 检查是否停车
	{ config_id = 1024006, name = "PLATFORM_REACH_POINT_24006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24006", action = "action_EVENT_PLATFORM_REACH_POINT_24006", trigger_count = 0 },
	{ config_id = 1024009, name = "GADGET_CREATE_24009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_24009", action = "action_EVENT_GADGET_CREATE_24009", trigger_count = 0 },
	{ config_id = 1024010, name = "SELECT_OPTION_24010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24010", action = "action_EVENT_SELECT_OPTION_24010", trigger_count = 0 },
	{ config_id = 1024011, name = "CHALLENGE_SUCCESS_24011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_24011", trigger_count = 0 },
	{ config_id = 1024012, name = "PLATFORM_REACH_POINT_24012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24012", action = "action_EVENT_PLATFORM_REACH_POINT_24012", trigger_count = 0, tag = "888" },
	{ config_id = 1024013, name = "CHALLENGE_FAIL_24013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_24013", trigger_count = 0 },
	-- 车子损毁检查
	{ config_id = 1024014, name = "ANY_GADGET_DIE_24014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24014", action = "action_EVENT_ANY_GADGET_DIE_24014", trigger_count = 0 },
	-- 拒马1号被破坏 时检测gadget2
	{ config_id = 1024015, name = "ANY_GADGET_DIE_24015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24015", action = "action_EVENT_ANY_GADGET_DIE_24015", trigger_count = 0 },
	{ config_id = 1024017, name = "PLATFORM_REACH_POINT_24017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24017", action = "action_EVENT_PLATFORM_REACH_POINT_24017", trigger_count = 0 },
	{ config_id = 1024019, name = "ANY_MONSTER_DIE_24019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24019", action = "action_EVENT_ANY_MONSTER_DIE_24019", trigger_count = 0 },
	-- 第一波 3号点 出怪
	{ config_id = 1024032, name = "PLATFORM_REACH_POINT_24032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24032", action = "action_EVENT_PLATFORM_REACH_POINT_24032", trigger_count = 0 },
	-- 拒马1号检测 只改变量
	{ config_id = 1024033, name = "ANY_GADGET_DIE_24033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24033", action = "action_EVENT_ANY_GADGET_DIE_24033", trigger_count = 0 },
	-- 拒马2号检测 只改变量
	{ config_id = 1024034, name = "ANY_GADGET_DIE_24034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24034", action = "action_EVENT_ANY_GADGET_DIE_24034", trigger_count = 0 },
	-- 拒马2号被破坏 时检测gadget1
	{ config_id = 1024035, name = "ANY_GADGET_DIE_24035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_24035", action = "action_EVENT_ANY_GADGET_DIE_24035", trigger_count = 0 },
	-- 到第二波触发点时 移除第一波trigger suite2
	{ config_id = 1024036, name = "PLATFORM_REACH_POINT_24036", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24036", action = "action_EVENT_PLATFORM_REACH_POINT_24036" },
	{ config_id = 1024037, name = "ANY_MONSTER_DIE_24037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24037", action = "action_EVENT_ANY_MONSTER_DIE_24037", trigger_count = 0 },
	{ config_id = 1024038, name = "ANY_MONSTER_DIE_24038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24038", action = "action_EVENT_ANY_MONSTER_DIE_24038", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle0Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "gadget1", value = 1, no_refresh = false },
	{ config_id = 4, name = "gadget2", value = 1, no_refresh = false },
	{ config_id = 5, name = "monster3", value = 1, no_refresh = false }
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
		gadgets = { 24004, 24005, 24007, 24031, 24039, 24040, 24041, 24042, 24043 },
		regions = { },
		triggers = { "GADGET_CREATE_24009", "SELECT_OPTION_24010", "CHALLENGE_SUCCESS_24011", "PLATFORM_REACH_POINT_24012", "CHALLENGE_FAIL_24013", "ANY_GADGET_DIE_24014", "PLATFORM_REACH_POINT_24032", "ANY_GADGET_DIE_24033", "ANY_GADGET_DIE_24034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_24001", "ANY_MONSTER_DIE_24003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 24002, 24020, 24021, 24022 },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_24006", "ANY_GADGET_DIE_24015", "ANY_GADGET_DIE_24035", "PLATFORM_REACH_POINT_24036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 24016, 24023, 24024, 24025, 24026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24037", "ANY_MONSTER_DIE_24038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_24017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 24018, 24027, 24028, 24029, 24030 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24019" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 24008 },
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
function condition_EVENT_PLATFORM_REACH_POINT_24001(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 4 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle0Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle0Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24001(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 4)
	
	-- 将本组内变量名为 "isObstacle0Available" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isObstacle0Available", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24006(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 12 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"gadget1"和"gadget2"变量
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 1 and ScriptLib.GetGroupVariableValue(context, "gadget2") ~= 1 and ScriptLib.GetGroupVariableValue(context, "monster3") ~= 1 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24006(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2610,y=200,z=-3964}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 20130903, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_24009(context, evt)
	if 24005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_24009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133209024, 24005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24010(context, evt)
	-- 判断是gadgetid 24005 option_id 7
	if 24005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24010(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 24005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_24011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133209024") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24012(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 24 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24012(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_24013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13320902401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24014(context, evt)
	if 24004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24014(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24015(context, evt)
	if 24007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gadget2"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget2") ~= 0 then
			return false
	end
	
	-- 判断变量"monster3"为0
	if ScriptLib.GetGroupVariableValue(context, "monster3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24015(context, evt)
	-- 将本组内变量名为 "gadget1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24017(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 20 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 20 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24017(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 6)
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133209024, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2609,y=200,z=-3998}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 20130906, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24019(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24032(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 3 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2606,y=200,z=-3933}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 20130901, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24033(context, evt)
	if 24007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24033(context, evt)
	-- 将本组内变量名为 "gadget1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24034(context, evt)
	if 24031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24034(context, evt)
	-- 将本组内变量名为 "gadget2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_24035(context, evt)
	if 24031 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	-- 判断变量"monster3"为0
	if ScriptLib.GetGroupVariableValue(context, "monster3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_24035(context, evt)
	-- 将本组内变量名为 "gadget2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24036(context, evt)
	-- 判断是gadgetid 为 24004的移动平台，是否到达了320900002 的路线中的 12 点
	
	if 24004 ~= evt.param1 then
	  return false
	end
	
	if 320900002 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133209024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24037(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24037(context, evt)
	-- 将本组内变量名为 "monster3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24038(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"gadget1"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget1") ~= 0 then
			return false
	end
	
	-- 判断变量"gadget2"为0
	if ScriptLib.GetGroupVariableValue(context, "gadget2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24038(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209024, 5)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 24004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end