-- 基础信息
local base_info = {
	group_id = 133102725
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
	{ config_id = 725001, gadget_id = 70360068, pos = { x = 1656.270, y = 278.700, z = 533.030 }, rot = { x = 0.000, y = 206.972, z = 0.000 }, level = 18, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 5 },
	{ config_id = 725002, gadget_id = 70360068, pos = { x = 1541.770, y = 243.920, z = 79.510 }, rot = { x = 0.000, y = 262.256, z = 0.000 }, level = 18, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 5 },
	{ config_id = 725003, gadget_id = 70211131, pos = { x = 1656.301, y = 279.517, z = 533.000 }, rot = { x = 0.000, y = 207.602, z = 0.000 }, level = 16, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 725004, gadget_id = 70211131, pos = { x = 1541.501, y = 244.762, z = 79.500 }, rot = { x = 0.000, y = 262.023, z = 0.000 }, level = 16, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1725005, name = "GADGET_STATE_CHANGE_725005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_725005", action = "action_EVENT_GADGET_STATE_CHANGE_725005" },
	{ config_id = 1725006, name = "GADGET_STATE_CHANGE_725006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_725006", action = "action_EVENT_GADGET_STATE_CHANGE_725006" },
	{ config_id = 1725007, name = "GADGET_CREATE_725007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_725007", action = "", trigger_count = 0 },
	{ config_id = 1725008, name = "ANY_GADGET_DIE_725008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_725008", action = "", trigger_count = 0 },
	{ config_id = 1725009, name = "GADGET_STATE_CHANGE_725009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_725009", action = "", trigger_count = 0 },
	{ config_id = 1725010, name = "GROUP_LOAD_725010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_725010", trigger_count = 0 }
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
		gadgets = { 725001, 725002, 725003, 725004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_725005", "GADGET_STATE_CHANGE_725006", "GADGET_CREATE_725007", "ANY_GADGET_DIE_725008", "GADGET_STATE_CHANGE_725009", "GROUP_LOAD_725010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_725005(context, evt)
	if 725001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_725005(context, evt)
	-- 将configid为 725003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 725003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 725001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_725006(context, evt)
	if 725002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_725006(context, evt)
	-- 将configid为 725004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 725004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 725002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_725007(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_725008(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_725009(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_725010(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133102725, 725001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133102725, 725001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133102725, 725003, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 725001})
	end
	
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133102725, 725002) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133102725, 725002) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133102725, 725004, GadgetState.Default)
	        ScriptLib.KillEntityByConfigId(context, { config_id = 725002})
	end
	
	return 0
end