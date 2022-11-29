-- 基础信息
local base_info = {
	group_id = 220134017
}

-- Trigger变量
local defs = {
	point_sum = 35,
	route_2 = 3,
	gadget_seelie = 17001
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 17001, gadget_id = 70310244, pos = { x = 620.426, y = 618.834, z = -1537.330 }, rot = { x = 0.000, y = 222.805, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 17005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 620.426, y = 618.834, z = -1537.330 } }
}

-- 触发器
triggers = {
	{ config_id = 1017002, name = "GADGET_CREATE_17002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_17002", action = "action_EVENT_GADGET_CREATE_17002", trigger_count = 0 },
	{ config_id = 1017003, name = "PLATFORM_REACH_POINT_17003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_17003", action = "action_EVENT_PLATFORM_REACH_POINT_17003", trigger_count = 0 },
	{ config_id = 1017004, name = "AVATAR_NEAR_PLATFORM_17004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_17004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_17004", trigger_count = 0 },
	{ config_id = 1017005, name = "ENTER_REGION_17005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17005", action = "action_EVENT_ENTER_REGION_17005", trigger_count = 0 },
	{ config_id = 1017006, name = "VARIABLE_CHANGE_17006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_17006", action = "action_EVENT_VARIABLE_CHANGE_17006", trigger_count = 0 },
	{ config_id = 1017007, name = "GROUP_LOAD_17007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_17007", trigger_count = 0 },
	{ config_id = 1017008, name = "AVATAR_NEAR_PLATFORM_17008", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_17008", action = "action_EVENT_AVATAR_NEAR_PLATFORM_17008", trigger_count = 0 },
	{ config_id = 1017009, name = "AVATAR_NEAR_PLATFORM_17009", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_17009", action = "action_EVENT_AVATAR_NEAR_PLATFORM_17009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reach", value = 0, no_refresh = true },
	{ config_id = 2, name = "reach2", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { },
		regions = { 17005 },
		triggers = { "GADGET_CREATE_17002", "PLATFORM_REACH_POINT_17003", "AVATAR_NEAR_PLATFORM_17004", "ENTER_REGION_17005", "VARIABLE_CHANGE_17006", "GROUP_LOAD_17007", "AVATAR_NEAR_PLATFORM_17008", "AVATAR_NEAR_PLATFORM_17009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 17001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_17006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_17002(context, evt)
	if 17001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_17002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 17001, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_17003(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_17003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "reach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_17004(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_17004(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17005(context, evt)
	if evt.param1 ~= 17005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 17001, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_17006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reach2"为1
	if ScriptLib.GetGroupVariableValue(context, "reach2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_17006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 17001, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute3complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "reach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17007(context, evt)
	-- 添加suite2的新内容
	    if ScriptLib.GetHostQuestState(context,4007604)==2 then
	    ScriptLib.AddExtraGroupSuite(context, 220134017, 2)
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_17008(context, evt)
	-- 判断是gadgetid 为 17001的移动平台，是否到达了5 的路线中的 1 点
	
	if 17001 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_17008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_17009(context, evt)
	-- 判断是gadgetid 为 17001的移动平台，是否到达了5 的路线中的 3 点
	
	if 17001 ~= evt.param1 then
	  return false
	end
	
	if 5 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_17009(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 17001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end