-- 基础信息
local base_info = {
	group_id = 133107083
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
	{ config_id = 83001, gadget_id = 70360068, pos = { x = -633.750, y = 144.300, z = 897.420 }, rot = { x = 0.000, y = 355.404, z = 0.000 }, level = 32, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 8 },
	{ config_id = 83002, gadget_id = 70211131, pos = { x = -633.800, y = 145.142, z = 897.400 }, rot = { x = 0.000, y = 237.528, z = 0.000 }, level = 26, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1083003, name = "GADGET_STATE_CHANGE_83003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83003", action = "action_EVENT_GADGET_STATE_CHANGE_83003" },
	{ config_id = 1083004, name = "GADGET_CREATE_83004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_83004", action = "", trigger_count = 0 },
	{ config_id = 1083005, name = "ANY_GADGET_DIE_83005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_83005", action = "", trigger_count = 0 },
	{ config_id = 1083006, name = "GADGET_STATE_CHANGE_83006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_83006", action = "", trigger_count = 0 },
	{ config_id = 1083007, name = "GROUP_LOAD_83007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_83007", trigger_count = 0 }
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
		gadgets = { 83001, 83002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_83003", "GADGET_CREATE_83004", "ANY_GADGET_DIE_83005", "GADGET_STATE_CHANGE_83006", "GROUP_LOAD_83007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	if 83001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_83003(context, evt)
	-- 将configid为 83002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 83002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 83001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_83004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_83005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_83006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_83007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133107083, 83001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133107083, 83001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133107083, 83002, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 83001})
	end
	
	return 0
end