-- 基础信息
local base_info = {
	group_id = 133220409
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
	{ config_id = 409001, gadget_id = 70290107, pos = { x = -2361.000, y = 201.172, z = -4270.566 }, rot = { x = 0.000, y = 49.413, z = 0.000 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 409002, gadget_id = 70500000, pos = { x = -2360.271, y = 201.435, z = -4269.968 }, rot = { x = 0.000, y = 46.347, z = 0.000 }, level = 27, point_type = 9142, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 409003, gadget_id = 71700288, pos = { x = -2360.294, y = 201.357, z = -4269.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1409004, name = "GADGET_STATE_CHANGE_409004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_409004", action = "action_EVENT_GADGET_STATE_CHANGE_409004", trigger_count = 0 },
	{ config_id = 1409005, name = "GATHER_409005", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_409005", action = "action_EVENT_GATHER_409005", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 409001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_409004", "GATHER_409005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_409004(context, evt)
	if 409001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_409004(context, evt)
	-- 创建id为409002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 409002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为409003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 409003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_409005(context, evt)
	if 409002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_409005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220409, EntityType.GADGET, 409003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end