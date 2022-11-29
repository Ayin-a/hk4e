-- 基础信息
local base_info = {
	group_id = 201053021
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
	-- icon1
	{ config_id = 21001, gadget_id = 70900201, pos = { x = -129.489, y = 34.289, z = 49.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- icon2
	{ config_id = 21003, gadget_id = 70900201, pos = { x = -136.634, y = 37.292, z = 82.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- icon3
	{ config_id = 21005, gadget_id = 70900201, pos = { x = -136.560, y = 38.532, z = 102.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- icon4
	{ config_id = 21007, gadget_id = 70900201, pos = { x = -120.937, y = 48.324, z = 156.556 }, rot = { x = 0.000, y = 11.778, z = 0.000 }, level = 1 },
	-- icon5
	{ config_id = 21011, gadget_id = 70900201, pos = { x = -125.231, y = 47.073, z = 148.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- icon6
	{ config_id = 21017, gadget_id = 70900201, pos = { x = -116.503, y = 41.382, z = 107.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 21016, shape = RegionShape.SPHERE, radius = 12, pos = { x = -136.634, y = 37.292, z = 82.015 } },
	{ config_id = 21020, shape = RegionShape.SPHERE, radius = 10, pos = { x = -121.558, y = 47.374, z = 137.699 } },
	{ config_id = 21021, shape = RegionShape.SPHERE, radius = 5, pos = { x = -125.233, y = 48.272, z = 148.418 } }
}

-- 触发器
triggers = {
	{ config_id = 1021002, name = "VARIABLE_CHANGE_21002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21002", action = "action_EVENT_VARIABLE_CHANGE_21002", trigger_count = 0 },
	{ config_id = 1021004, name = "VARIABLE_CHANGE_21004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21004", action = "action_EVENT_VARIABLE_CHANGE_21004", trigger_count = 0 },
	{ config_id = 1021006, name = "VARIABLE_CHANGE_21006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21006", action = "action_EVENT_VARIABLE_CHANGE_21006", trigger_count = 0 },
	{ config_id = 1021008, name = "VARIABLE_CHANGE_21008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21008", action = "action_EVENT_VARIABLE_CHANGE_21008", trigger_count = 0 },
	{ config_id = 1021009, name = "VARIABLE_CHANGE_21009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21009", action = "action_EVENT_VARIABLE_CHANGE_21009", trigger_count = 0 },
	{ config_id = 1021010, name = "VARIABLE_CHANGE_21010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21010", action = "action_EVENT_VARIABLE_CHANGE_21010", trigger_count = 0 },
	{ config_id = 1021012, name = "VARIABLE_CHANGE_21012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21012", action = "action_EVENT_VARIABLE_CHANGE_21012", trigger_count = 0 },
	{ config_id = 1021013, name = "VARIABLE_CHANGE_21013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21013", action = "action_EVENT_VARIABLE_CHANGE_21013", trigger_count = 0 },
	{ config_id = 1021014, name = "VARIABLE_CHANGE_21014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21014", action = "action_EVENT_VARIABLE_CHANGE_21014", trigger_count = 0 },
	{ config_id = 1021015, name = "VARIABLE_CHANGE_21015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21015", action = "action_EVENT_VARIABLE_CHANGE_21015", trigger_count = 0 },
	{ config_id = 1021016, name = "ENTER_REGION_21016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21016", action = "action_EVENT_ENTER_REGION_21016" },
	{ config_id = 1021018, name = "VARIABLE_CHANGE_21018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21018", action = "action_EVENT_VARIABLE_CHANGE_21018" },
	{ config_id = 1021019, name = "VARIABLE_CHANGE_21019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21019", action = "action_EVENT_VARIABLE_CHANGE_21019" },
	{ config_id = 1021020, name = "ENTER_REGION_21020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21020", action = "action_EVENT_ENTER_REGION_21020" },
	{ config_id = 1021021, name = "ENTER_REGION_21021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21021", action = "action_EVENT_ENTER_REGION_21021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "icon1Appear", value = 0, no_refresh = false },
	{ config_id = 2, name = "icon2Appear", value = 0, no_refresh = false },
	{ config_id = 3, name = "icon3Appear", value = 0, no_refresh = false },
	{ config_id = 4, name = "icon4Appear", value = 0, no_refresh = false },
	{ config_id = 5, name = "default", value = 0, no_refresh = false },
	{ config_id = 6, name = "icon5Appear", value = 0, no_refresh = false },
	{ config_id = 7, name = "icon6Appear", value = 0, no_refresh = false },
	{ config_id = 8, name = "icon7Appear", value = 0, no_refresh = false },
	{ config_id = 9, name = "icon8Appear", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { 21016, 21020, 21021 },
		triggers = { "VARIABLE_CHANGE_21002", "VARIABLE_CHANGE_21004", "VARIABLE_CHANGE_21006", "VARIABLE_CHANGE_21008", "VARIABLE_CHANGE_21009", "VARIABLE_CHANGE_21010", "VARIABLE_CHANGE_21012", "VARIABLE_CHANGE_21013", "VARIABLE_CHANGE_21014", "VARIABLE_CHANGE_21015", "ENTER_REGION_21016", "VARIABLE_CHANGE_21018", "VARIABLE_CHANGE_21019", "ENTER_REGION_21020", "ENTER_REGION_21021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon1Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon1Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21002(context, evt)
	-- 创建id为21001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon2Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon2Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21004(context, evt)
	-- 创建id为21003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon3Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon3Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21006(context, evt)
	-- 创建id为21005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon4Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon4Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21008(context, evt)
	-- 创建id为21007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon4Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon4Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon5Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon5Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21010(context, evt)
	-- 创建id为21011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon5Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon5Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon1Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon1Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon2Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon2Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon3Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon3Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21016(context, evt)
	if evt.param1 ~= 21016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21016(context, evt)
	-- 将本组内变量名为 "icon2Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "icon2Appear", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon6Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "icon6Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21018(context, evt)
	-- 创建id为21017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 21017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"icon6Appear"为2
	if ScriptLib.GetGroupVariableValue(context, "icon6Appear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 21017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21020(context, evt)
	if evt.param1 ~= 21020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21020(context, evt)
	-- 将本组内变量名为 "icon4Appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon4Appear", 1, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21021(context, evt)
	if evt.param1 ~= 21021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21021(context, evt)
	-- 将本组内变量名为 "icon5Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon5Appear", 2, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end