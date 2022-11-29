-- 基础信息
local base_info = {
	group_id = 133003080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 拦截点一
	{ config_id = 80001, monster_id = 21020101, pos = { x = 2340.059, y = 247.663, z = -1369.932 }, rot = { x = 0.000, y = 335.132, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 1 },
	-- 拦截点一
	{ config_id = 80003, monster_id = 21011601, pos = { x = 2341.022, y = 247.905, z = -1372.757 }, rot = { x = 0.000, y = 327.946, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 80007, monster_id = 21010401, pos = { x = 2296.348, y = 244.288, z = -1360.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 80008, monster_id = 21010401, pos = { x = 2307.561, y = 244.766, z = -1356.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 80009, monster_id = 21010601, pos = { x = 2318.171, y = 252.979, z = -1373.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 80010, monster_id = 21010601, pos = { x = 2312.992, y = 246.912, z = -1364.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80011, gadget_id = 70300091, pos = { x = 2295.878, y = 244.437, z = -1362.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 80012, gadget_id = 70300090, pos = { x = 2318.201, y = 247.248, z = -1373.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 80013, gadget_id = 71700321, pos = { x = 2354.052, y = 248.018, z = -1386.491 }, rot = { x = 0.000, y = 182.729, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 80016, gadget_id = 70380004, pos = { x = 2284.458, y = 241.425, z = -1331.661 }, rot = { x = 0.000, y = 141.475, z = 0.000 }, level = 1, route_id = 300300335, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 80017, gadget_id = 70360001, pos = { x = 2284.478, y = 241.426, z = -1331.678 }, rot = { x = 0.000, y = 14.769, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 80018, gadget_id = 70300083, pos = { x = 2345.289, y = 247.173, z = -1367.255 }, rot = { x = 3.933, y = 289.350, z = 1.325 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 80014, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2284.393, y = 242.247, z = -1331.739 }, area_id = 1 },
	{ config_id = 80015, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2306.903, y = 245.512, z = -1365.837 }, area_id = 1 },
	{ config_id = 80019, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2340.843, y = 247.443, z = -1365.846 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1080014, name = "ENTER_REGION_80014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80014", action = "action_EVENT_ENTER_REGION_80014" },
	{ config_id = 1080015, name = "ENTER_REGION_80015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80015", action = "action_EVENT_ENTER_REGION_80015" },
	{ config_id = 1080019, name = "ENTER_REGION_80019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80019", action = "action_EVENT_ENTER_REGION_80019" },
	{ config_id = 1080034, name = "GADGET_CREATE_80034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_80034", action = "action_EVENT_GADGET_CREATE_80034", trigger_count = 0 },
	{ config_id = 1080035, name = "SELECT_OPTION_80035", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80035", action = "action_EVENT_SELECT_OPTION_80035" },
	{ config_id = 1080036, name = "CHALLENGE_SUCCESS_80036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_80036", trigger_count = 0 },
	-- 到达点
	{ config_id = 1080037, name = "PLATFORM_REACH_POINT_80037", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_80037", action = "action_EVENT_PLATFORM_REACH_POINT_80037", trigger_count = 0, tag = "888" },
	{ config_id = 1080038, name = "CHALLENGE_FAIL_80038", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_80038", trigger_count = 0 },
	{ config_id = 1080039, name = "ANY_GADGET_DIE_80039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_80039", action = "action_EVENT_ANY_GADGET_DIE_80039" },
	-- 拦截点一停车
	{ config_id = 1080040, name = "PLATFORM_REACH_POINT_80040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_80040", action = "action_EVENT_PLATFORM_REACH_POINT_80040", trigger_count = 0 },
	{ config_id = 1080041, name = "ANY_GADGET_DIE_80041", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_80041", action = "action_EVENT_ANY_GADGET_DIE_80041", trigger_count = 0 },
	{ config_id = 1080043, name = "VARIABLE_CHANGE_80043", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_80043", action = "action_EVENT_VARIABLE_CHANGE_80043", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 0, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 2, no_refresh = false }
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
		gadgets = { 80016, 80017 },
		regions = { 80014 },
		triggers = { "ENTER_REGION_80014", "GADGET_CREATE_80034", "SELECT_OPTION_80035", "CHALLENGE_SUCCESS_80036", "PLATFORM_REACH_POINT_80037", "CHALLENGE_FAIL_80038", "ANY_GADGET_DIE_80039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 80001, 80003, 80007, 80008, 80009, 80010 },
		gadgets = { 80011, 80012, 80018 },
		regions = { 80015, 80019 },
		triggers = { "ENTER_REGION_80015", "ENTER_REGION_80019", "PLATFORM_REACH_POINT_80040", "ANY_GADGET_DIE_80041", "VARIABLE_CHANGE_80043" },
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 80013 },
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
function condition_EVENT_ENTER_REGION_80014(context, evt)
	if evt.param1 ~= 80014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2284.393,y=242.2473,z=-1331.739}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110453, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_80015(context, evt)
	if evt.param1 ~= 80015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2308.437,y=245.5122,z=-1369.492}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110459, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_80019(context, evt)
	if evt.param1 ~= 80019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80019(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2340.843,y=247.4431,z=-1365.846}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110462, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_80034(context, evt)
	if 80017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_80034(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003080, 80017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80035(context, evt)
	-- 判断是gadgetid 80017 option_id 7
	if 80017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80035(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2284.057,y=241.4261,z=-1324.152}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110455, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 80016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 80017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003080, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_80036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003080, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003080, 4)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_80037(context, evt)
	-- 判断是gadgetid 为 80016的移动平台，是否到达了300300335 的路线中的 12 点
	
	if 80016 ~= evt.param1 then
	  return false
	end
	
	if 300300335 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_80037(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_80038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030805") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003080, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003080, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003080, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_80039(context, evt)
	if 80016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80039(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_80040(context, evt)
	-- 判断是gadgetid 为 80016的移动平台，是否到达了300300335 的路线中的 10 点
	
	if 80016 ~= evt.param1 then
	  return false
	end
	
	if 300300335 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_80040(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 80016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003080, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_80041(context, evt)
	if 80018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80041(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_80043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_80043(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 80016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end