-- 基础信息
local base_info = {
	group_id = 133220684
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第一拦截点怪物
	{ config_id = 684001, monster_id = 21011001, pos = { x = -2844.575, y = 204.376, z = -4180.502 }, rot = { x = 0.000, y = 91.300, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	-- 第一拦截点怪物
	{ config_id = 684002, monster_id = 21010901, pos = { x = -2846.227, y = 204.562, z = -4184.148 }, rot = { x = 0.000, y = 91.300, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	{ config_id = 684005, monster_id = 21020101, pos = { x = -2877.586, y = 201.967, z = -4184.848 }, rot = { x = 0.000, y = 118.400, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1031 }, isElite = true, area_id = 11 },
	{ config_id = 684006, monster_id = 21011001, pos = { x = -2878.762, y = 202.154, z = -4186.699 }, rot = { x = 0.000, y = 118.400, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	{ config_id = 684007, monster_id = 21020201, pos = { x = -2929.843, y = 202.270, z = -4193.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 684008, monster_id = 21010101, pos = { x = -2927.829, y = 202.279, z = -4191.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 684009, monster_id = 21010701, pos = { x = -2875.356, y = 202.026, z = -4184.848 }, rot = { x = 0.000, y = 118.400, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 684010, monster_id = 21010601, pos = { x = -2877.586, y = 202.403, z = -4187.869 }, rot = { x = 0.000, y = 118.400, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	{ config_id = 684011, monster_id = 21010101, pos = { x = -2930.947, y = 202.124, z = -4191.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 684013, monster_id = 22010401, pos = { x = -2927.143, y = 202.396, z = -4194.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 684017, gadget_id = 70380004, pos = { x = -2822.692, y = 206.320, z = -4175.391 }, rot = { x = 0.000, y = 236.790, z = 351.510 }, level = 1, route_id = 322000203, start_route = false, persistent = true, area_id = 11 },
	{ config_id = 684018, gadget_id = 70360001, pos = { x = -2822.576, y = 207.595, z = -4174.955 }, rot = { x = 0.000, y = 236.790, z = 351.510 }, level = 30, area_id = 11 },
	-- 第一拦截点路障
	{ config_id = 684019, gadget_id = 70300075, pos = { x = -2848.896, y = 204.232, z = -4183.783 }, rot = { x = 6.480, y = 344.600, z = 0.000 }, level = 30, area_id = 11 },
	-- 第三拦截点路障
	{ config_id = 684020, gadget_id = 70300075, pos = { x = -2932.030, y = 201.942, z = -4187.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 第二拦截点路障
	{ config_id = 684024, gadget_id = 70300075, pos = { x = -2878.939, y = 201.872, z = -4180.363 }, rot = { x = 2.800, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第一拦截点路障
	{ config_id = 1684015, name = "ANY_GADGET_DIE_684015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_684015", action = "action_EVENT_ANY_GADGET_DIE_684015", trigger_count = 0 },
	-- 第三拦截点路障
	{ config_id = 1684016, name = "ANY_GADGET_DIE_684016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_684016", action = "action_EVENT_ANY_GADGET_DIE_684016" },
	{ config_id = 1684048, name = "GADGET_CREATE_684048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_684048", action = "action_EVENT_GADGET_CREATE_684048", trigger_count = 0 },
	{ config_id = 1684049, name = "SELECT_OPTION_684049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_684049", action = "action_EVENT_SELECT_OPTION_684049" },
	{ config_id = 1684050, name = "CHALLENGE_SUCCESS_684050", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_684050", trigger_count = 0 },
	{ config_id = 1684051, name = "PLATFORM_REACH_POINT_684051", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_684051", action = "action_EVENT_PLATFORM_REACH_POINT_684051", trigger_count = 0, tag = "888" },
	{ config_id = 1684052, name = "CHALLENGE_FAIL_684052", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_684052", trigger_count = 0 },
	{ config_id = 1684053, name = "ANY_GADGET_DIE_684053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_684053", action = "action_EVENT_ANY_GADGET_DIE_684053" },
	-- 第一拦截点停车
	{ config_id = 1684054, name = "PLATFORM_REACH_POINT_684054", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_684054", action = "action_EVENT_PLATFORM_REACH_POINT_684054", trigger_count = 0 },
	-- 第一拦截点路障
	{ config_id = 1684055, name = "ANY_MONSTER_DIE_684055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_684055", action = "action_EVENT_ANY_MONSTER_DIE_684055", trigger_count = 0 },
	-- 第二拦截点路障1
	{ config_id = 1684056, name = "ANY_GADGET_DIE_684056", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_684056", action = "action_EVENT_ANY_GADGET_DIE_684056", trigger_count = 0 },
	-- 第二拦截点停车
	{ config_id = 1684057, name = "PLATFORM_REACH_POINT_684057", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_684057", action = "action_EVENT_PLATFORM_REACH_POINT_684057", trigger_count = 0 },
	-- 第二拦截点路障2
	{ config_id = 1684058, name = "ANY_MONSTER_DIE_684058", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_684058", action = "action_EVENT_ANY_MONSTER_DIE_684058", trigger_count = 0 },
	-- 第一拦截点开车
	{ config_id = 1684059, name = "VARIABLE_CHANGE_684059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684059", action = "action_EVENT_VARIABLE_CHANGE_684059" },
	-- 第二拦截点开车
	{ config_id = 1684060, name = "VARIABLE_CHANGE_684060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684060", action = "action_EVENT_VARIABLE_CHANGE_684060" },
	-- 第三拦截点开车
	{ config_id = 1684061, name = "VARIABLE_CHANGE_684061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_684061", action = "action_EVENT_VARIABLE_CHANGE_684061" },
	-- 第三拦截点路障
	{ config_id = 1684062, name = "ANY_MONSTER_DIE_684062", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_684062", action = "action_EVENT_ANY_MONSTER_DIE_684062", trigger_count = 0 },
	-- 第三拦截点停车
	{ config_id = 1684063, name = "PLATFORM_REACH_POINT_684063", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_684063", action = "action_EVENT_PLATFORM_REACH_POINT_684063", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available1", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available1", value = 1, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available1", value = 1, no_refresh = false },
	{ config_id = 4, name = "isObstacle1Available2", value = 1, no_refresh = false },
	{ config_id = 5, name = "isObstacle2Available2", value = 1, no_refresh = false },
	{ config_id = 6, name = "isObstacle3Available2", value = 1, no_refresh = false }
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
		gadgets = { 684017, 684018 },
		regions = { },
		triggers = { "GADGET_CREATE_684048", "SELECT_OPTION_684049", "CHALLENGE_SUCCESS_684050", "PLATFORM_REACH_POINT_684051", "CHALLENGE_FAIL_684052", "ANY_GADGET_DIE_684053" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 684001, 684002 },
		gadgets = { 684019, 684020, 684024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_684015", "ANY_GADGET_DIE_684016", "PLATFORM_REACH_POINT_684054", "ANY_MONSTER_DIE_684055", "ANY_GADGET_DIE_684056", "PLATFORM_REACH_POINT_684057", "ANY_MONSTER_DIE_684058", "VARIABLE_CHANGE_684059", "VARIABLE_CHANGE_684060", "VARIABLE_CHANGE_684061", "ANY_MONSTER_DIE_684062", "PLATFORM_REACH_POINT_684063" },
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
		-- description = 第一拦截点埋伏怪,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二拦截点埋伏怪,
		monsters = { 684005, 684006, 684009, 684010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪,
		monsters = { 684007, 684008, 684011, 684013 },
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
function condition_EVENT_ANY_GADGET_DIE_684015(context, evt)
	if 684019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_684015(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_684016(context, evt)
	if 684020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_684016(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_684048(context, evt)
	if 684018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_684048(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220684, 684018, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 调用提示id为 191110185 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_684049(context, evt)
	-- 判断是gadgetid 684018 option_id 7
	if 684018 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_684049(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 684018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220684, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_684050(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220684, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220684, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220684, 5)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220684, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "191210901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_684051(context, evt)
	-- 判断是gadgetid 为 684017的移动平台，是否到达了322000203 的路线中的 15 点
	
	if 684017 ~= evt.param1 then
	  return false
	end
	
	if 322000203 ~= evt.param2 then
	  return false
	end
	
	if 15 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_684051(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 684017 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 684017, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_684052(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "191210902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_684053(context, evt)
	if 684017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_684053(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_684054(context, evt)
	-- 判断是gadgetid 为 684017的移动平台，是否到达了322000203 的路线中的 3 点
	
	if 684017 ~= evt.param1 then
	  return false
	end
	
	if 322000203 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available2"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_684054(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220684, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_684055(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_684055(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_684056(context, evt)
	if 684024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_684056(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available2" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available2", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_684057(context, evt)
	-- 判断是gadgetid 为 684017的移动平台，是否到达了322000203 的路线中的 8 点
	
	if 684017 ~= evt.param1 then
	  return false
	end
	
	if 322000203 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_684057(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220684, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_684058(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_684058(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_684059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available1"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available1") ~= 0 then
			return false
	end
	
	-- 判断变量"isObstacle1Available2"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_684059(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 调用提示id为 191110186 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110186) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_684060(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle2Available1"为-1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available1") ~= -1 then
			return false
	end
	
	-- 判断变量"isObstacle2Available2"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_684060(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 调用提示id为 191110187 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 191110187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_684061(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle3Available1"为-2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available1") ~= -2 then
			return false
	end
	
	-- 判断变量"isObstacle3Available2"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_684061(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_684062(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_684062(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available1" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available1", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_684063(context, evt)
	-- 判断是gadgetid 为 684017的移动平台，是否到达了322000203 的路线中的 13 点
	
	if 684017 ~= evt.param1 then
	  return false
	end
	
	if 322000203 ~= evt.param2 then
	  return false
	end
	
	if 13 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_684063(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 684017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220684, 6)
	
	return 0
end