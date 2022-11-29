-- 基础信息
local base_info = {
	group_id = 133308581
}

-- DEFS_MISCS
local markList = {581004}

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
	{ config_id = 581001, gadget_id = 70330264, pos = { x = -1925.555, y = 140.805, z = 5297.497 }, rot = { x = 0.000, y = 179.604, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 581002, gadget_id = 70330264, pos = { x = -1905.776, y = 129.205, z = 5357.021 }, rot = { x = 0.000, y = 359.775, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 581003, gadget_id = 70330264, pos = { x = -1900.884, y = 140.826, z = 5312.480 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 581004, gadget_id = 70330264, pos = { x = -1890.733, y = 129.159, z = 5362.372 }, rot = { x = 0.000, y = 90.507, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 581005, gadget_id = 70330264, pos = { x = -1920.780, y = 129.164, z = 5361.917 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 581006, gadget_id = 70330264, pos = { x = -1905.823, y = 129.165, z = 5307.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 581007, gadget_id = 70330264, pos = { x = -1885.880, y = 128.775, z = 5346.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 581008, gadget_id = 70330392, pos = { x = -1886.669, y = 134.466, z = 5314.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1581009, name = "VARIABLE_CHANGE_581009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581009", action = "action_EVENT_VARIABLE_CHANGE_581009", trigger_count = 0 },
	{ config_id = 1581010, name = "VARIABLE_CHANGE_581010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581010", action = "action_EVENT_VARIABLE_CHANGE_581010", trigger_count = 0 },
	{ config_id = 1581011, name = "GROUP_LOAD_581011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581011", action = "action_EVENT_GROUP_LOAD_581011", trigger_count = 0 },
	{ config_id = 1581012, name = "GROUP_LOAD_581012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581012", action = "action_EVENT_GROUP_LOAD_581012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "redblue", value = 0, no_refresh = true }
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
		-- description = 红0,
		monsters = { },
		gadgets = { 581001, 581002, 581003, 581004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_581009", "VARIABLE_CHANGE_581010", "GROUP_LOAD_581011", "GROUP_LOAD_581012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 蓝1,
		monsters = { },
		gadgets = { 581005, 581006, 581007, 581008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_581009", "VARIABLE_CHANGE_581010", "GROUP_LOAD_581011", "GROUP_LOAD_581012" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"redblue"为0
	if ScriptLib.GetGroupVariableValue(context, "redblue") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581009(context, evt)
	-- 创建id为581001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"redblue"为1
	if ScriptLib.GetGroupVariableValue(context, "redblue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581010(context, evt)
	-- 创建id为581005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581011(context, evt)
	-- 判断变量"redblue"为0
	if ScriptLib.GetGroupVariableValue(context, "redblue") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581011(context, evt)
	-- 创建id为581001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581012(context, evt)
	-- 判断变量"redblue"为1
	if ScriptLib.GetGroupVariableValue(context, "redblue") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581012(context, evt)
	-- 创建id为581005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为581008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133308581, EntityType.GADGET, 581004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_1/Transparent_Mark"