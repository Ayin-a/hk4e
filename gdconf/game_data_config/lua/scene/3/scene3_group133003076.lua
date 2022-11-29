-- 基础信息
local base_info = {
	group_id = 133003076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 拦截点一
	{ config_id = 76010, monster_id = 21020101, pos = { x = 2238.155, y = 232.336, z = -1263.102 }, rot = { x = 0.000, y = 180.940, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 1 },
	-- 拦截点一
	{ config_id = 76012, monster_id = 21011601, pos = { x = 2241.323, y = 234.008, z = -1260.628 }, rot = { x = 0.000, y = 173.755, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76013, monster_id = 21010401, pos = { x = 2271.336, y = 237.818, z = -1298.842 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76014, monster_id = 21010401, pos = { x = 2264.968, y = 240.049, z = -1305.773 }, rot = { x = 0.000, y = 86.214, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76015, monster_id = 21010601, pos = { x = 2256.996, y = 237.268, z = -1296.918 }, rot = { x = 0.000, y = 81.804, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76016, monster_id = 21010601, pos = { x = 2254.169, y = 235.123, z = -1277.362 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76024, monster_id = 25010201, pos = { x = 2212.886, y = 229.427, z = -1253.340 }, rot = { x = 0.000, y = 46.753, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76025, monster_id = 25030201, pos = { x = 2214.049, y = 229.947, z = -1248.583 }, rot = { x = 0.000, y = 157.698, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76026, monster_id = 25020201, pos = { x = 2211.235, y = 229.131, z = -1251.608 }, rot = { x = 0.000, y = 89.832, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 76027, monster_id = 25030301, pos = { x = 2212.484, y = 229.473, z = -1249.784 }, rot = { x = 0.000, y = 123.570, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 76001, gadget_id = 70380004, pos = { x = 2282.270, y = 241.425, z = -1327.750 }, rot = { x = 0.000, y = 341.871, z = 0.000 }, level = 1, route_id = 300300337, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 76002, gadget_id = 70360001, pos = { x = 2282.143, y = 241.426, z = -1327.627 }, rot = { x = 0.000, y = 14.769, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 76017, gadget_id = 70300091, pos = { x = 2248.482, y = 236.216, z = -1298.184 }, rot = { x = 0.000, y = 205.809, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 76019, gadget_id = 70300083, pos = { x = 2234.197, y = 231.757, z = -1261.192 }, rot = { x = 3.933, y = 135.159, z = 1.325 }, level = 30, area_id = 1 },
	{ config_id = 76029, gadget_id = 71700321, pos = { x = 2221.889, y = 230.664, z = -1253.415 }, rot = { x = 0.000, y = 286.817, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 76009, shape = RegionShape.SPHERE, radius = 35, pos = { x = 2281.550, y = 242.578, z = -1328.877 }, area_id = 1 },
	{ config_id = 76023, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2259.201, y = 235.586, z = -1291.403 }, area_id = 1 },
	{ config_id = 76030, shape = RegionShape.SPHERE, radius = 12, pos = { x = 2233.552, y = 231.667, z = -1260.060 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1076003, name = "GADGET_CREATE_76003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_76003", action = "action_EVENT_GADGET_CREATE_76003", trigger_count = 0 },
	{ config_id = 1076004, name = "SELECT_OPTION_76004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76004", action = "action_EVENT_SELECT_OPTION_76004" },
	{ config_id = 1076005, name = "CHALLENGE_SUCCESS_76005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "333", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_76005", trigger_count = 0 },
	-- 到达点
	{ config_id = 1076006, name = "PLATFORM_REACH_POINT_76006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_76006", action = "action_EVENT_PLATFORM_REACH_POINT_76006", trigger_count = 0, tag = "444" },
	{ config_id = 1076007, name = "CHALLENGE_FAIL_76007", event = EventType.EVENT_CHALLENGE_FAIL, source = "333", condition = "", action = "action_EVENT_CHALLENGE_FAIL_76007", trigger_count = 0 },
	{ config_id = 1076008, name = "ANY_GADGET_DIE_76008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_76008", action = "action_EVENT_ANY_GADGET_DIE_76008" },
	{ config_id = 1076009, name = "ENTER_REGION_76009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76009", action = "action_EVENT_ENTER_REGION_76009" },
	-- 拦截点一停车
	{ config_id = 1076020, name = "PLATFORM_REACH_POINT_76020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_76020", action = "action_EVENT_PLATFORM_REACH_POINT_76020", trigger_count = 0 },
	{ config_id = 1076021, name = "ANY_GADGET_DIE_76021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_76021", action = "action_EVENT_ANY_GADGET_DIE_76021", trigger_count = 0 },
	{ config_id = 1076022, name = "VARIABLE_CHANGE_76022", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_76022", action = "action_EVENT_VARIABLE_CHANGE_76022", trigger_count = 0 },
	{ config_id = 1076023, name = "ENTER_REGION_76023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76023", action = "action_EVENT_ENTER_REGION_76023" },
	{ config_id = 1076028, name = "ANY_MONSTER_DIE_76028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76028", action = "action_EVENT_ANY_MONSTER_DIE_76028" },
	{ config_id = 1076030, name = "ENTER_REGION_76030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76030", action = "action_EVENT_ENTER_REGION_76030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false }
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
		gadgets = { 76001, 76002 },
		regions = { 76009 },
		triggers = { "GADGET_CREATE_76003", "SELECT_OPTION_76004", "CHALLENGE_SUCCESS_76005", "PLATFORM_REACH_POINT_76006", "CHALLENGE_FAIL_76007", "ANY_GADGET_DIE_76008", "ENTER_REGION_76009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 76010, 76012, 76013, 76014, 76015, 76016 },
		gadgets = { 76017, 76019 },
		regions = { 76023, 76030 },
		triggers = { "PLATFORM_REACH_POINT_76020", "ANY_GADGET_DIE_76021", "VARIABLE_CHANGE_76022", "ENTER_REGION_76023", "ENTER_REGION_76030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 76024, 76025, 76026, 76027 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76028" },
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
		gadgets = { 76029 },
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
function condition_EVENT_GADGET_CREATE_76003(context, evt)
	if 76002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_76003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003076, 76002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_76004(context, evt)
	-- 判断是gadgetid 76002 option_id 7
	if 76002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_76004(context, evt)
	-- 创建编号为333（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 333, 15, 300, 26, 444, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 76001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003076, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2284.057,y=241.4261,z=-1324.152}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110455, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 76002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_76005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2221.124,y=230.5935,z=-1254.522}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110467, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030762") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003076, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003076, 4)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003076, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_76006(context, evt)
	-- 判断是gadgetid 为 76001的移动平台，是否到达了300300337 的路线中的 10 点
	
	if 76001 ~= evt.param1 then
	  return false
	end
	
	if 300300337 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_76006(context, evt)
	-- 终止识别id为333的挑战，并判定成功
		ScriptLib.StopChallenge(context, 333, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_76007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030765") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003076, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003076, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003076, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_76008(context, evt)
	if 76001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_76008(context, evt)
	-- 终止识别id为333的挑战，并判定失败
		ScriptLib.StopChallenge(context, 333, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_76009(context, evt)
	if evt.param1 ~= 76009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2281.55,y=242.5779,z=-1328.877}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110453, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030761") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_76020(context, evt)
	-- 判断是gadgetid 为 76001的移动平台，是否到达了300300337 的路线中的 8 点
	
	if 76001 ~= evt.param1 then
	  return false
	end
	
	if 300300337 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_76020(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 76001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_76021(context, evt)
	if 76019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_76021(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_76022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_76022(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 76001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_76023(context, evt)
	if evt.param1 ~= 76023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76023(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2259.201,y=235.5862,z=-1291.403}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110459, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030763") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_76030(context, evt)
	if evt.param1 ~= 76030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76030(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2233.552,y=231.6669,z=-1260.06}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110464, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end