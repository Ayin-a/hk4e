-- 基础信息
local base_info = {
	group_id = 199003012
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 900300038,
	gadget_seelie = 12007
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
	{ config_id = 12001, gadget_id = 70310456, pos = { x = -687.751, y = 139.839, z = -157.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 },
	{ config_id = 12002, gadget_id = 70360001, pos = { x = -687.768, y = 138.847, z = -157.418 }, rot = { x = 0.000, y = 334.921, z = 0.000 }, level = 20, persistent = true, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 12007, gadget_id = 70310244, pos = { x = -687.751, y = 139.731, z = -157.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 12006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -688.244, y = 139.924, z = -155.849 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "SELECT_OPTION_12003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12003", action = "action_EVENT_SELECT_OPTION_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "PLATFORM_REACH_POINT_12004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_12004", action = "action_EVENT_PLATFORM_REACH_POINT_12004", trigger_count = 0 },
	{ config_id = 1012005, name = "AVATAR_NEAR_PLATFORM_12005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_12005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_12005", trigger_count = 0 },
	{ config_id = 1012006, name = "ENTER_REGION_12006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12006", action = "action_EVENT_ENTER_REGION_12006", trigger_count = 0 },
	{ config_id = 1012008, name = "GROUP_LOAD_12008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12008", action = "action_EVENT_GROUP_LOAD_12008", trigger_count = 0 },
	{ config_id = 1012009, name = "GROUP_LOAD_12009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12009", action = "action_EVENT_GROUP_LOAD_12009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reach", value = 0, no_refresh = true }
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
		gadgets = { 12001, 12002 },
		regions = { 12006 },
		triggers = { "SELECT_OPTION_12003", "PLATFORM_REACH_POINT_12004", "AVATAR_NEAR_PLATFORM_12005", "ENTER_REGION_12006", "GROUP_LOAD_12008", "GROUP_LOAD_12009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12007 },
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
function condition_EVENT_SELECT_OPTION_12003(context, evt)
	-- 判断是gadgetid 12002 option_id 411
	if 12002 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12003(context, evt)
	-- 将本组内变量名为 "reach" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003012, EntityType.GADGET, 12001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 199003012 ；指定config：12002；物件身上指定option：411；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003012, 12002, 411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003012, EntityType.GADGET, 12002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为12007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 12007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 12007, 900300038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 12007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_12004(context, evt)
	-- 判断是gadgetid 为 12007的移动平台，是否到达了900300038 的路线中的 8 点
	
	if 12007 ~= evt.param1 then
	  return false
	end
	
	if 900300038 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_12004(context, evt)
	-- 将本组内变量名为 "reach" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "star", 1, 199003100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_12005(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_12005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 12007) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12006(context, evt)
	if evt.param1 ~= 12006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 12007, 900300038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 12007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12008(context, evt)
	-- 判断变量"reach"为1
	if ScriptLib.GetGroupVariableValue(context, "reach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12009(context, evt)
	-- 判断变量"reach"为2
	if ScriptLib.GetGroupVariableValue(context, "reach") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12009(context, evt)
	-- 将本组内变量名为 "star" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "star", 1, 199003100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end