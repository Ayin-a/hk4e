-- 基础信息
local base_info = {
	group_id = 133210299
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
	{ config_id = 299001, gadget_id = 70350292, pos = { x = -3641.779, y = 150.160, z = -898.116 }, rot = { x = 0.000, y = 147.531, z = 0.000 }, level = 30, route_id = 321000066, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299002, name = "VARIABLE_CHANGE_299002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_299002", action = "action_EVENT_VARIABLE_CHANGE_299002", trigger_count = 0 },
	{ config_id = 1299003, name = "PLATFORM_REACH_POINT_299003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_299003", action = "action_EVENT_PLATFORM_REACH_POINT_299003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_299002", "PLATFORM_REACH_POINT_299003" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_299002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_299002(context, evt)
	-- 创建id为299001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 299001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_299003(context, evt)
	-- 判断是gadgetid 为 299001的移动平台，是否到达了321000066 的路线中的 4 点
	
	if 299001 ~= evt.param1 then
	  return false
	end
	
	if 321000066 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_299003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 299001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end