-- 基础信息
local base_info = {
	group_id = 133102099
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
	{ config_id = 99001, gadget_id = 70690006, pos = { x = 1559.194, y = 228.090, z = 189.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 99002, gadget_id = 70360005, pos = { x = 1559.110, y = 227.552, z = 189.206 }, rot = { x = 0.000, y = 311.998, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 99003, gadget_id = 70690006, pos = { x = 1552.489, y = 239.154, z = 183.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099004, name = "GADGET_STATE_CHANGE_99004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99004", action = "action_EVENT_GADGET_STATE_CHANGE_99004", trigger_count = 0 },
	{ config_id = 1099005, name = "GADGET_STATE_CHANGE_99005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_99005", action = "action_EVENT_GADGET_STATE_CHANGE_99005", trigger_count = 0 }
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
		gadgets = { 99002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_99004", "GADGET_STATE_CHANGE_99005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	if 99002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99004(context, evt)
	-- 创建id为99001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为99003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 99003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
	-- 检测config_id为99002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 99002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_99005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 99001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 99003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end