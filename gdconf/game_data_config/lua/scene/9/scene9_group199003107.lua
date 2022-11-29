-- 基础信息
local base_info = {
	group_id = 199003107
}

-- Trigger变量
local defs = {
	point_sum = 10,
	route_2 = 900300030,
	gadget_seelie = 107002
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
	{ config_id = 107001, gadget_id = 70500000, pos = { x = -694.875, y = 157.230, z = -196.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9306, isOneoff = true, persistent = true, autopick = true, area_id = 403 },
	{ config_id = 107002, gadget_id = 70310244, pos = { x = -709.205, y = 131.518, z = -184.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, drop_count = 1, start_route = false, area_id = 403 },
	{ config_id = 107006, gadget_id = 70220038, pos = { x = -708.386, y = 128.842, z = -184.494 }, rot = { x = 7.224, y = 17.046, z = 0.972 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 107005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -712.284, y = 132.163, z = -186.603 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1107003, name = "GADGET_STATE_CHANGE_107003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107003", action = "action_EVENT_GADGET_STATE_CHANGE_107003" },
	{ config_id = 1107004, name = "AVATAR_NEAR_PLATFORM_107004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_107004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_107004", trigger_count = 0 },
	{ config_id = 1107005, name = "ENTER_REGION_107005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107005", action = "action_EVENT_ENTER_REGION_107005", trigger_count = 0 },
	{ config_id = 1107007, name = "ANY_GADGET_DIE_107007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_107007", action = "action_EVENT_ANY_GADGET_DIE_107007" },
	{ config_id = 1107008, name = "PLATFORM_REACH_POINT_107008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_107008", action = "action_EVENT_PLATFORM_REACH_POINT_107008", trigger_count = 0 },
	{ config_id = 1107009, name = "GROUP_LOAD_107009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_107009", action = "action_EVENT_GROUP_LOAD_107009", trigger_count = 0 },
	{ config_id = 1107010, name = "GROUP_LOAD_107010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_107010", action = "action_EVENT_GROUP_LOAD_107010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "star", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		gadgets = { 107002 },
		regions = { 107005 },
		triggers = { "GADGET_STATE_CHANGE_107003", "AVATAR_NEAR_PLATFORM_107004", "ENTER_REGION_107005", "PLATFORM_REACH_POINT_107008", "GROUP_LOAD_107009", "GROUP_LOAD_107010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 107006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_107007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107003(context, evt)
	if 107001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 107002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_107004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_107004(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 107002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107005(context, evt)
	if evt.param1 ~= 107005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 107002, 900300030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 107002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_107007(context, evt)
	if 107006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_107007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003107, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_107008(context, evt)
	-- 判断是gadgetid 为 107002的移动平台，是否到达了900300030 的路线中的 9 点
	
	if 107002 ~= evt.param1 then
	  return false
	end
	
	if 900300030 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_107008(context, evt)
	-- 将本组内变量名为 "star" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为107001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003107, EntityType.GADGET, 107002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_107009(context, evt)
	-- 判断变量"star"为0
	if ScriptLib.GetGroupVariableValue(context, "star") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_107009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003107, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_107010(context, evt)
	-- 判断变量"star"为1
	if ScriptLib.GetGroupVariableValue(context, "star") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_107010(context, evt)
	-- 创建id为107001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end