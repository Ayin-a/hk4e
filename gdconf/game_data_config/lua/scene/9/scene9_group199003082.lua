-- 基础信息
local base_info = {
	group_id = 199003082
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 900300039,
	gadget_seelie = 82003
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
	{ config_id = 82001, gadget_id = 70500000, pos = { x = -711.678, y = 151.607, z = -171.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 9306, isOneoff = true, persistent = true, area_id = 403 },
	{ config_id = 82003, gadget_id = 70310244, pos = { x = -678.803, y = 134.007, z = -31.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 82007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -678.803, y = 134.007, z = -31.778 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1082002, name = "GROUP_LOAD_82002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82002", action = "action_EVENT_GROUP_LOAD_82002", trigger_count = 0 },
	{ config_id = 1082005, name = "PLATFORM_REACH_POINT_82005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_82005", action = "action_EVENT_PLATFORM_REACH_POINT_82005", trigger_count = 0 },
	{ config_id = 1082006, name = "AVATAR_NEAR_PLATFORM_82006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_82006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_82006", trigger_count = 0 },
	{ config_id = 1082007, name = "ENTER_REGION_82007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82007", action = "action_EVENT_ENTER_REGION_82007", trigger_count = 0 },
	{ config_id = 1082008, name = "GROUP_LOAD_82008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82008", action = "action_EVENT_GROUP_LOAD_82008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1082004, name = "GADGET_STATE_CHANGE_82004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82004", action = "action_EVENT_GADGET_STATE_CHANGE_82004", trigger_count = 0 }
	}
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
		gadgets = { },
		regions = { 82007 },
		triggers = { "GROUP_LOAD_82002", "PLATFORM_REACH_POINT_82005", "AVATAR_NEAR_PLATFORM_82006", "ENTER_REGION_82007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 82003 },
		regions = { 82007 },
		triggers = { "GROUP_LOAD_82002", "PLATFORM_REACH_POINT_82005", "AVATAR_NEAR_PLATFORM_82006", "ENTER_REGION_82007", "GROUP_LOAD_82008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 82001 },
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
function condition_EVENT_GROUP_LOAD_82002(context, evt)
	-- 判断变量"start"为0
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82002(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "star", 199003100) == 1 then
	 ScriptLib.RefreshGroup(context, { group_id = 199003082, suite = 2 }) 
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_82005(context, evt)
	-- 判断是gadgetid 为 82003的移动平台，是否到达了900300039 的路线中的 8 点
	
	if 82003 ~= evt.param1 then
	  return false
	end
	
	if 900300039 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_82005(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003082, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003082, EntityType.GADGET, 82003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_82006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_82006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 82003) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82007(context, evt)
	if evt.param1 ~= 82007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 82003, 900300039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 82003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_82008(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003082, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end