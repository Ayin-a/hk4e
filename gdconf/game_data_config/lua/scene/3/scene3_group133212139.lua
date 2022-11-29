-- 基础信息
local base_info = {
	group_id = 133212139
}

-- Trigger变量
local defs = {
	gadget_temple = 139001,
	gadget_chest = 139002,
	group_ID = 133212139
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
	{ config_id = 139001, gadget_id = 70900383, pos = { x = -4076.589, y = 278.707, z = -2233.034 }, rot = { x = 359.961, y = 245.983, z = 0.010 }, level = 32, isOneoff = true, persistent = true, interact_id = 42, explore = { name = "temple", exp = 14 }, area_id = 13 },
	{ config_id = 139002, gadget_id = 70211131, pos = { x = -4076.598, y = 279.572, z = -2232.557 }, rot = { x = 0.000, y = 313.896, z = 0.000 }, level = 26, drop_tag = "灵龛稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139003, name = "GADGET_STATE_CHANGE_139003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139003", action = "action_EVENT_GADGET_STATE_CHANGE_139003" },
	{ config_id = 1139004, name = "GADGET_CREATE_139004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_139004", action = "", trigger_count = 0 },
	{ config_id = 1139005, name = "ANY_GADGET_DIE_139005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_139005", action = "", trigger_count = 0 },
	{ config_id = 1139006, name = "GADGET_STATE_CHANGE_139006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_139006", action = "", trigger_count = 0 },
	{ config_id = 1139007, name = "GROUP_LOAD_139007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_139007", trigger_count = 0 }
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
		gadgets = { 139001, 139002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_139003", "GADGET_CREATE_139004", "ANY_GADGET_DIE_139005", "GADGET_STATE_CHANGE_139006", "GROUP_LOAD_139007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139003(context, evt)
	if 139001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_139003(context, evt)
	-- 将configid为 139002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 139001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_139004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_139005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_139006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == -1 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_temple})
	end
	
	return 0
end