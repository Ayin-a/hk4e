-- 基础信息
local base_info = {
	group_id = 133003075
}

-- Trigger变量
local defs = {
	group_id = 133003075,
	gadget_riddle_hint = 75001,
	gadget_riddle_1 = 75002,
	gadget_riddle_2 = 75003,
	gadget_riddle_3 = 75004,
	gadget_riddle_4 = 75005,
	gadget_chest = 75006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 拦截点一
	{ config_id = 75009, monster_id = 21020101, pos = { x = 2238.155, y = 232.336, z = -1263.102 }, rot = { x = 0.000, y = 180.940, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 1 },
	-- 拦截点一
	{ config_id = 75011, monster_id = 21011601, pos = { x = 2241.323, y = 234.008, z = -1260.628 }, rot = { x = 0.000, y = 173.755, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 75012, monster_id = 21010401, pos = { x = 2271.336, y = 237.818, z = -1298.842 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 75013, monster_id = 21010401, pos = { x = 2264.968, y = 240.049, z = -1305.773 }, rot = { x = 0.000, y = 86.214, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 75014, monster_id = 21010601, pos = { x = 2256.996, y = 237.268, z = -1296.918 }, rot = { x = 0.000, y = 81.804, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 75015, monster_id = 21010601, pos = { x = 2254.006, y = 235.110, z = -1277.284 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 75001, gadget_id = 70380004, pos = { x = 2282.270, y = 241.425, z = -1327.750 }, rot = { x = 0.000, y = 341.871, z = 0.000 }, level = 1, route_id = 300300336, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 75002, gadget_id = 70360001, pos = { x = 2282.143, y = 241.426, z = -1327.627 }, rot = { x = 0.000, y = 14.769, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 75016, gadget_id = 70300091, pos = { x = 2248.489, y = 236.225, z = -1298.022 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 75018, gadget_id = 70300083, pos = { x = 2234.197, y = 231.757, z = -1261.192 }, rot = { x = 3.933, y = 135.159, z = 1.325 }, level = 30, area_id = 1 },
	{ config_id = 75027, gadget_id = 71700321, pos = { x = 2221.860, y = 230.874, z = -1253.388 }, rot = { x = 0.000, y = 283.638, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 75025, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2281.550, y = 242.578, z = -1328.877 }, area_id = 1 },
	{ config_id = 75026, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2259.201, y = 235.586, z = -1291.403 }, area_id = 1 },
	{ config_id = 75028, shape = RegionShape.SPHERE, radius = 7, pos = { x = 2237.958, y = 232.093, z = -1264.858 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1075003, name = "GADGET_CREATE_75003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_75003", action = "action_EVENT_GADGET_CREATE_75003", trigger_count = 0 },
	{ config_id = 1075004, name = "SELECT_OPTION_75004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_75004", action = "action_EVENT_SELECT_OPTION_75004" },
	{ config_id = 1075005, name = "CHALLENGE_SUCCESS_75005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "555", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_75005", trigger_count = 0 },
	-- 到达点
	{ config_id = 1075006, name = "PLATFORM_REACH_POINT_75006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_75006", action = "action_EVENT_PLATFORM_REACH_POINT_75006", trigger_count = 0, tag = "777" },
	{ config_id = 1075007, name = "CHALLENGE_FAIL_75007", event = EventType.EVENT_CHALLENGE_FAIL, source = "555", condition = "", action = "action_EVENT_CHALLENGE_FAIL_75007", trigger_count = 0 },
	{ config_id = 1075008, name = "ANY_GADGET_DIE_75008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_75008", action = "action_EVENT_ANY_GADGET_DIE_75008" },
	-- 拦截点一停车
	{ config_id = 1075019, name = "PLATFORM_REACH_POINT_75019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_75019", action = "action_EVENT_PLATFORM_REACH_POINT_75019", trigger_count = 0 },
	{ config_id = 1075020, name = "ANY_GADGET_DIE_75020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_75020", action = "action_EVENT_ANY_GADGET_DIE_75020", trigger_count = 0 },
	{ config_id = 1075021, name = "VARIABLE_CHANGE_75021", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_75021", action = "action_EVENT_VARIABLE_CHANGE_75021", trigger_count = 0 },
	{ config_id = 1075025, name = "ENTER_REGION_75025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75025", action = "action_EVENT_ENTER_REGION_75025" },
	{ config_id = 1075026, name = "ENTER_REGION_75026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75026", action = "action_EVENT_ENTER_REGION_75026" },
	{ config_id = 1075028, name = "ENTER_REGION_75028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75028", action = "action_EVENT_ENTER_REGION_75028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = false },
	{ config_id = 2, name = "isObstacle1Available", value = 1, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 75001, 75002 },
		regions = { 75025 },
		triggers = { "GADGET_CREATE_75003", "SELECT_OPTION_75004", "CHALLENGE_SUCCESS_75005", "PLATFORM_REACH_POINT_75006", "CHALLENGE_FAIL_75007", "ANY_GADGET_DIE_75008", "ENTER_REGION_75025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 75009, 75011, 75012, 75013, 75014, 75015 },
		gadgets = { 75016, 75018 },
		regions = { 75026, 75028 },
		triggers = { "PLATFORM_REACH_POINT_75019", "ANY_GADGET_DIE_75020", "VARIABLE_CHANGE_75021", "ENTER_REGION_75026", "ENTER_REGION_75028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
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
		gadgets = { 75027 },
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
function condition_EVENT_GADGET_CREATE_75003(context, evt)
	if 75002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_75003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003075, 75002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_75004(context, evt)
	-- 判断是gadgetid 75002 option_id 7
	if 75002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_75004(context, evt)
	-- 创建编号为555（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 555, 15, 300, 26, 777, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 75001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003075, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2284.057,y=241.4261,z=-1324.152}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110455, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 75002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_75005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030752") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003075, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003075, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_75006(context, evt)
	-- 判断是gadgetid 为 75001的移动平台，是否到达了300300336 的路线中的 10 点
	
	if 75001 ~= evt.param1 then
	  return false
	end
	
	if 300300336 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_75006(context, evt)
	-- 终止识别id为555的挑战，并判定成功
		ScriptLib.StopChallenge(context, 555, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_75007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030755") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003075, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003075, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003075, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_75008(context, evt)
	if 75001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_75008(context, evt)
	-- 终止识别id为555的挑战，并判定失败
		ScriptLib.StopChallenge(context, 555, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_75019(context, evt)
	-- 判断是gadgetid 为 75001的移动平台，是否到达了300300336 的路线中的 8 点
	
	if 75001 ~= evt.param1 then
	  return false
	end
	
	if 300300336 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_75019(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 75001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003075, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_75020(context, evt)
	if 75018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_75020(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_75021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_75021(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 75001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_75025(context, evt)
	if evt.param1 ~= 75025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75025(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2281.55,y=242.5779,z=-1328.877}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110453, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030751") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_75026(context, evt)
	if evt.param1 ~= 75026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75026(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2259.201,y=235.5862,z=-1291.403}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110459, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_75028(context, evt)
	if evt.param1 ~= 75028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75028(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2237.958,y=232.0925,z=-1264.858}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110462, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end