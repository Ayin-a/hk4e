-- 基础信息
local base_info = {
	group_id = 250010007
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
	{ config_id = 30, gadget_id = 70900033, pos = { x = 424.916, y = 3.200, z = -38.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31, gadget_id = 70380002, pos = { x = 438.032, y = 5.740, z = -34.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6 },
	{ config_id = 32, gadget_id = 70380002, pos = { x = 437.881, y = 5.740, z = -38.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6 },
	{ config_id = 33, gadget_id = 70380002, pos = { x = 437.956, y = 5.740, z = -41.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6 },
	{ config_id = 34, gadget_id = 70380002, pos = { x = 437.618, y = 5.740, z = -45.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6 },
	{ config_id = 35, gadget_id = 70211031, pos = { x = 438.501, y = 4.000, z = -38.493 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000018, name = "GADGET_STATE_CHANGE_18", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18", action = "action_EVENT_GADGET_STATE_CHANGE_18", trigger_count = 0 },
	{ config_id = 1000019, name = "GADGET_STATE_CHANGE_19", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_19", action = "action_EVENT_GADGET_STATE_CHANGE_19", trigger_count = 0 },
	{ config_id = 1000020, name = "ANY_GADGET_DIE_20", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_20" },
	{ config_id = 1000021, name = "VARIABLE_CHANGE_21", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_21", action = "action_EVENT_VARIABLE_CHANGE_21" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = false }
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
		gadgets = { 30 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_18", "GADGET_STATE_CHANGE_19", "ANY_GADGET_DIE_20", "VARIABLE_CHANGE_21" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if 30 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	-- 创建id为31的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 31 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为32的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 32 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为33的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 33 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为34的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 34 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_19(context, evt)
	if 30 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_19(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 31 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 32 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 33 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 34 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 变量"num"赋值为0
	ScriptLib.SetGroupVariableValue(context, "num", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_20(context, evt)
	-- 针对当前group内变量名为 "num" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_21(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num"为4
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_21(context, evt)
	-- 创建id为35的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 35 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end