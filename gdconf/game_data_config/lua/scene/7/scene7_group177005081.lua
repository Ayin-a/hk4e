-- 基础信息
local base_info = {
	group_id = 177005081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81001, gadget_id = 70290234, pos = { x = 269.496, y = 347.727, z = 212.447 }, rot = { x = 0.000, y = 306.799, z = 0.000 }, level = 1, route_id = 700500007, start_route = false, area_id = 210 },
	{ config_id = 81002, gadget_id = 70290302, pos = { x = 269.496, y = 224.372, z = 212.447 }, rot = { x = 0.000, y = 306.799, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 81003, gadget_id = 70360001, pos = { x = 269.456, y = 348.726, z = 212.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 7 } }, area_id = 210 },
	{ config_id = 81008, gadget_id = 70290234, pos = { x = 269.496, y = 347.727, z = 212.447 }, rot = { x = 0.000, y = 306.799, z = 0.000 }, level = 36, start_route = false, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 81005, shape = RegionShape.POLYGON, pos = { x = 269.560, y = 233.500, z = 212.929 }, height = 11.000, point_array = { { x = 265.563, y = 244.825 }, { x = 249.960, y = 238.192 }, { x = 237.546, y = 221.092 }, { x = 239.155, y = 201.586 }, { x = 246.669, y = 190.612 }, { x = 260.338, y = 181.032 }, { x = 279.441, y = 181.978 }, { x = 297.394, y = 193.654 }, { x = 301.575, y = 211.133 }, { x = 299.109, y = 228.205 }, { x = 283.546, y = 241.730 } }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1081004, name = "SELECT_OPTION_81004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_81004", action = "action_EVENT_SELECT_OPTION_81004", trigger_count = 0 },
	{ config_id = 1081005, name = "ENTER_REGION_81005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_81005", action = "action_EVENT_ENTER_REGION_81005", trigger_count = 0 },
	{ config_id = 1081006, name = "QUEST_START_81006", event = EventType.EVENT_QUEST_START, source = "4005113", condition = "", action = "action_EVENT_QUEST_START_81006", trigger_count = 0 },
	{ config_id = 1081007, name = "PLATFORM_REACH_POINT_81007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_81007", action = "action_EVENT_PLATFORM_REACH_POINT_81007", trigger_count = 0 },
	{ config_id = 1081009, name = "GROUP_LOAD_81009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_81009", action = "action_EVENT_GROUP_LOAD_81009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "group_flag", value = 0, no_refresh = true }
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
		gadgets = { 81008 },
		regions = { },
		triggers = { "GROUP_LOAD_81009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 81001, 81003 },
		regions = { 81005 },
		triggers = { "SELECT_OPTION_81004", "ENTER_REGION_81005", "QUEST_START_81006", "PLATFORM_REACH_POINT_81007", "GROUP_LOAD_81009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 81002 },
		regions = { 81005 },
		triggers = { "ENTER_REGION_81005", "GROUP_LOAD_81009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_81004(context, evt)
	-- 判断是gadgetid 81003 option_id 7
	if 81003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_81004(context, evt)
	-- 删除指定group： 177005081 ；指定config：81003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005081, 81003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 81001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_81005(context, evt)
	if evt.param1 ~= 81005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_81005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400511201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_81006(context, evt)
	-- 将本组内变量名为 "group_flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "group_flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 177005081, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_81007(context, evt)
	-- 判断是gadgetid 为 81001的移动平台，是否到达了700500007 的路线中的 2 点
	
	if 81001 ~= evt.param1 then
	  return false
	end
	
	if 700500007 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_81007(context, evt)
	-- 将本组内变量名为 "group_flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "group_flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 177005081, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_81009(context, evt)
	-- 判断变量"group_flag"为1
	if ScriptLib.GetGroupVariableValue(context, "group_flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_81009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 177005081, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end