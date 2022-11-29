-- 基础信息
local base_info = {
	group_id = 133223344
}

-- Trigger变量
local defs = {
	gadget_temple = 344001,
	gadget_chest = 344002,
	group_ID = 133223344
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
	{ config_id = 344001, gadget_id = 70900383, pos = { x = -6039.896, y = 227.296, z = -2516.007 }, rot = { x = 0.000, y = 355.260, z = 0.000 }, level = 32, isOneoff = true, persistent = true, interact_id = 42, explore = { name = "temple", exp = 14 }, area_id = 18 },
	{ config_id = 344002, gadget_id = 70211131, pos = { x = -6040.457, y = 228.082, z = -2516.460 }, rot = { x = 0.000, y = 302.947, z = 0.000 }, level = 26, drop_tag = "灵龛稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1344003, name = "GADGET_STATE_CHANGE_344003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_344003", action = "action_EVENT_GADGET_STATE_CHANGE_344003" },
	{ config_id = 1344004, name = "GADGET_CREATE_344004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_344004", action = "", trigger_count = 0 },
	{ config_id = 1344005, name = "ANY_GADGET_DIE_344005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_344005", action = "", trigger_count = 0 },
	{ config_id = 1344006, name = "GADGET_STATE_CHANGE_344006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_344006", action = "", trigger_count = 0 },
	{ config_id = 1344007, name = "GROUP_LOAD_344007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_344007", trigger_count = 0 }
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
		gadgets = { 344001, 344002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_344003", "GADGET_CREATE_344004", "ANY_GADGET_DIE_344005", "GADGET_STATE_CHANGE_344006", "GROUP_LOAD_344007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_344003(context, evt)
	if 344001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_344003(context, evt)
	-- 将configid为 344002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 344002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 344001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_344004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_344005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_344006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_344007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == -1 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_temple})
	end
	
	return 0
end