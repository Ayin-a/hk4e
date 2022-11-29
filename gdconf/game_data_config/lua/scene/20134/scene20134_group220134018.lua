-- 基础信息
local base_info = {
	group_id = 220134018
}

-- Trigger变量
local defs = {
	point_sum = 46,
	route_2 = 4,
	gadget_seelie = 18001
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
	{ config_id = 18001, gadget_id = 70310244, pos = { x = 410.585, y = 612.426, z = -1531.172 }, rot = { x = 0.000, y = 297.679, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 18005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 410.408, y = 612.426, z = -1531.509 } }
}

-- 触发器
triggers = {
	{ config_id = 1018002, name = "GADGET_CREATE_18002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_18002", action = "action_EVENT_GADGET_CREATE_18002", trigger_count = 0 },
	{ config_id = 1018003, name = "PLATFORM_REACH_POINT_18003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_18003", action = "action_EVENT_PLATFORM_REACH_POINT_18003", trigger_count = 0 },
	{ config_id = 1018004, name = "AVATAR_NEAR_PLATFORM_18004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_18004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_18004", trigger_count = 0 },
	{ config_id = 1018005, name = "ENTER_REGION_18005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18005", action = "action_EVENT_ENTER_REGION_18005", trigger_count = 0 },
	{ config_id = 1018006, name = "PLATFORM_REACH_POINT_18006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_18006", action = "action_EVENT_PLATFORM_REACH_POINT_18006", trigger_count = 0 },
	{ config_id = 1018007, name = "PLATFORM_REACH_POINT_18007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_18007", action = "action_EVENT_PLATFORM_REACH_POINT_18007", trigger_count = 0 },
	{ config_id = 1018008, name = "GROUP_LOAD_18008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18008", trigger_count = 0 },
	{ config_id = 1018009, name = "QUEST_START_18009", event = EventType.EVENT_QUEST_START, source = "", condition = "condition_EVENT_QUEST_START_18009", action = "action_EVENT_QUEST_START_18009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "reach", value = 0, no_refresh = true }
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
		regions = { 18005 },
		triggers = { "GADGET_CREATE_18002", "PLATFORM_REACH_POINT_18003", "AVATAR_NEAR_PLATFORM_18004", "ENTER_REGION_18005", "PLATFORM_REACH_POINT_18006", "PLATFORM_REACH_POINT_18007", "GROUP_LOAD_18008", "QUEST_START_18009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 18001 },
		regions = { 18005 },
		triggers = { "GADGET_CREATE_18002", "PLATFORM_REACH_POINT_18003", "AVATAR_NEAR_PLATFORM_18004", "ENTER_REGION_18005", "PLATFORM_REACH_POINT_18006", "PLATFORM_REACH_POINT_18007", "QUEST_START_18009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_18002(context, evt)
	if 18001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_18002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 18001, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 18001) then
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
function condition_EVENT_PLATFORM_REACH_POINT_18003(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_18003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 18001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_18004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_18004(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 18001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_18005(context, evt)
	if evt.param1 ~= 18005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 18001, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 18001) then
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
function condition_EVENT_PLATFORM_REACH_POINT_18006(context, evt)
	-- 判断是gadgetid 为 18001的移动平台，是否到达了4 的路线中的 27 点
	
	if 18001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_18006(context, evt)
	-- 将本组内变量名为 "reach2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reach2", 1, 220134017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_18007(context, evt)
	-- 判断是gadgetid 为 18001的移动平台，是否到达了4 的路线中的 45 点
	
	if 18001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 45 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_18007(context, evt)
	-- 将本组内变量名为 "starreach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "starreach", 1, 220134033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220134018, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18008(context, evt)
	-- 添加suite2的新内容
	    if ScriptLib.GetHostQuestState(context,4007607)==2 then
	    ScriptLib.AddExtraGroupSuite(context, 220134018, 2)
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_18009(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_18009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroute4complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end