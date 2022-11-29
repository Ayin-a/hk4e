-- 基础信息
local base_info = {
	group_id = 133107155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 25010601, pos = { x = -373.927, y = 242.348, z = 730.701 }, rot = { x = 0.000, y = 200.743, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 155003, monster_id = 25010201, pos = { x = -364.511, y = 242.453, z = 724.492 }, rot = { x = 0.000, y = 223.363, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 155025, monster_id = 25010301, pos = { x = -361.926, y = 241.397, z = 731.444 }, rot = { x = 0.000, y = 223.363, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 155026, monster_id = 25060101, pos = { x = -376.388, y = 244.603, z = 723.327 }, rot = { x = 0.000, y = 223.363, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 8 },
	{ config_id = 155028, monster_id = 21030301, pos = { x = -406.547, y = 275.304, z = 623.596 }, rot = { x = 0.000, y = 43.687, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 7 },
	{ config_id = 155029, monster_id = 21011001, pos = { x = -411.925, y = 273.842, z = 618.849 }, rot = { x = 0.000, y = 60.402, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 155030, monster_id = 21011001, pos = { x = -411.171, y = 275.631, z = 624.933 }, rot = { x = 0.000, y = 71.456, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 155033, monster_id = 21010501, pos = { x = -403.399, y = 271.815, z = 575.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 7 },
	{ config_id = 155034, monster_id = 21020301, pos = { x = -392.330, y = 267.813, z = 569.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 7 },
	{ config_id = 155035, monster_id = 21011201, pos = { x = -380.386, y = 272.257, z = 574.343 }, rot = { x = 0.000, y = 240.485, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 7 },
	{ config_id = 155036, monster_id = 21011201, pos = { x = -378.736, y = 272.257, z = 570.069 }, rot = { x = 0.000, y = 270.273, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 7 },
	{ config_id = 155037, monster_id = 21010601, pos = { x = -387.482, y = 268.821, z = 567.809 }, rot = { x = 0.000, y = 344.308, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155004, gadget_id = 70380019, pos = { x = -439.484, y = 233.778, z = 791.364 }, rot = { x = 0.000, y = 148.570, z = 0.000 }, level = 1, route_id = 310700065, start_route = false, persistent = true, area_id = 8 },
	{ config_id = 155005, gadget_id = 70380004, pos = { x = -439.484, y = 233.778, z = 791.364 }, rot = { x = 0.000, y = 148.570, z = 0.000 }, level = 1, route_id = 310700065, start_route = false, persistent = true, area_id = 8 },
	{ config_id = 155006, gadget_id = 70300075, pos = { x = -391.194, y = 252.420, z = 686.205 }, rot = { x = 357.223, y = 280.090, z = 345.304 }, level = 1, area_id = 7 },
	{ config_id = 155007, gadget_id = 70220035, pos = { x = -404.106, y = 271.974, z = 578.012 }, rot = { x = 353.939, y = 33.920, z = 3.826 }, level = 1, area_id = 7 },
	{ config_id = 155008, gadget_id = 70900201, pos = { x = -436.328, y = 248.502, z = 515.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 155009, gadget_id = 70360001, pos = { x = -439.460, y = 234.882, z = 791.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 155027, gadget_id = 70690012, pos = { x = -398.371, y = 262.259, z = 631.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 155031, gadget_id = 70300083, pos = { x = -391.892, y = 268.033, z = 564.913 }, rot = { x = 6.102, y = 0.766, z = 2.567 }, level = 1, area_id = 7 },
	{ config_id = 155032, gadget_id = 70300083, pos = { x = -399.165, y = 268.121, z = 565.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155002, name = "PLATFORM_REACH_POINT_155002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155002", action = "action_EVENT_PLATFORM_REACH_POINT_155002", trigger_count = 0 },
	{ config_id = 1155010, name = "SELECT_OPTION_155010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_155010", action = "action_EVENT_SELECT_OPTION_155010" },
	{ config_id = 1155011, name = "CHALLENGE_SUCCESS_155011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_155011" },
	{ config_id = 1155012, name = "PLATFORM_REACH_POINT_155012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155012", action = "action_EVENT_PLATFORM_REACH_POINT_155012", tag = "888" },
	{ config_id = 1155013, name = "CHALLENGE_FAIL_155013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_155013" },
	{ config_id = 1155014, name = "ANY_GADGET_DIE_155014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155014", action = "action_EVENT_ANY_GADGET_DIE_155014" },
	{ config_id = 1155015, name = "PLATFORM_REACH_POINT_155015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155015", action = "action_EVENT_PLATFORM_REACH_POINT_155015" },
	{ config_id = 1155016, name = "GADGET_CREATE_155016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_155016", action = "action_EVENT_GADGET_CREATE_155016" },
	{ config_id = 1155017, name = "PLATFORM_REACH_POINT_155017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155017", action = "action_EVENT_PLATFORM_REACH_POINT_155017", trigger_count = 0 },
	{ config_id = 1155018, name = "ANY_MONSTER_DIE_155018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155018", action = "action_EVENT_ANY_MONSTER_DIE_155018" },
	{ config_id = 1155019, name = "ANY_MONSTER_DIE_155019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155019", action = "action_EVENT_ANY_MONSTER_DIE_155019" },
	{ config_id = 1155020, name = "PLATFORM_REACH_POINT_155020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155020", action = "action_EVENT_PLATFORM_REACH_POINT_155020", trigger_count = 0 },
	{ config_id = 1155021, name = "ANY_GADGET_DIE_155021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155021", action = "action_EVENT_ANY_GADGET_DIE_155021" },
	{ config_id = 1155038, name = "PLATFORM_REACH_POINT_155038", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_155038", action = "action_EVENT_PLATFORM_REACH_POINT_155038", trigger_count = 0 },
	{ config_id = 1155039, name = "ANY_GADGET_DIE_155039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155039", action = "action_EVENT_ANY_GADGET_DIE_155039" },
	{ config_id = 1155040, name = "ANY_GADGET_DIE_155040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155040", action = "action_EVENT_ANY_GADGET_DIE_155040" },
	{ config_id = 1155041, name = "VARIABLE_CHANGE_155041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_155041", action = "action_EVENT_VARIABLE_CHANGE_155041" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle2Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle3Available", value = 1, no_refresh = false },
	{ config_id = 3, name = "finalbarriernum", value = 2, no_refresh = false },
	{ config_id = 4, name = "isObstacle1Available", value = 1, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 8,
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
		gadgets = { 155004, 155009 },
		regions = { },
		triggers = { "SELECT_OPTION_155010", "CHALLENGE_SUCCESS_155011", "PLATFORM_REACH_POINT_155012", "CHALLENGE_FAIL_155013", "ANY_GADGET_DIE_155014", "GADGET_CREATE_155016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 155006, 155008 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_155002", "PLATFORM_REACH_POINT_155015", "PLATFORM_REACH_POINT_155017", "PLATFORM_REACH_POINT_155020", "ANY_GADGET_DIE_155021", "PLATFORM_REACH_POINT_155038" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 155001, 155003, 155025, 155026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 155027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 155028, 155029, 155030 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155019" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 155033, 155034, 155035, 155036, 155037 },
		gadgets = { 155007, 155031, 155032 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_155039", "ANY_GADGET_DIE_155040", "VARIABLE_CHANGE_155041" },
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
		-- description = 摆设热气球,
		monsters = { },
		gadgets = { 155005 },
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
function condition_EVENT_PLATFORM_REACH_POINT_155002(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 17 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_155010(context, evt)
	-- 判断是gadgetid 155009 option_id 7
	if 155009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_155010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 155009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 155005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107155, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_155011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331071551") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155012(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 34 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155012(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_155013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331071552") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107155, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107155, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155014(context, evt)
	if 155004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107155, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155015(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 9 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155015(context, evt)
	-- 触发镜头注目，注目位置为坐标（-381，244，719），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-381, y=244, z=719}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107155, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_155016(context, evt)
	if 155009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_155016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107155, 155009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155017(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 9 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155017(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155018(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-391,y=252,z=687}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110216, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155019(context, evt)
	if 155028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155019(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107155, EntityType.GADGET, 155027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107155, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155020(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 17 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-396,y=264,z=618}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110218, pos, 150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155021(context, evt)
	if 155006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155021(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107155, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107155, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_155038(context, evt)
	-- 判断是gadgetid 为 155004的移动平台，是否到达了310700065 的路线中的 23 点
	
	if 155004 ~= evt.param1 then
	  return false
	end
	
	if 310700065 ~= evt.param2 then
	  return false
	end
	
	if 23 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_155038(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155039(context, evt)
	if 155032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155039(context, evt)
	-- 针对当前group内变量名为 "finalbarriernum" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finalbarriernum", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155040(context, evt)
	if 155031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155040(context, evt)
	-- 针对当前group内变量名为 "finalbarriernum" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finalbarriernum", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_155041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finalbarriernum"为0
	if ScriptLib.GetGroupVariableValue(context, "finalbarriernum") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_155041(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 155004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end