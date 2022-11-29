-- 基础信息
local base_info = {
	group_id = 133301522
}

-- Trigger变量
local defs = {
	gadget_temple = 522001,
	gadget_chest = 522002,
	group_ID = 133301522
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
	{ config_id = 522001, gadget_id = 70360363, pos = { x = -301.208, y = 318.888, z = 4016.293 }, rot = { x = 0.000, y = 240.799, z = 0.000 }, level = 33, isOneoff = true, persistent = true, interact_id = 123, explore = { name = "temple", exp = 140 }, area_id = 22 },
	{ config_id = 522002, gadget_id = 70211131, pos = { x = -301.202, y = 319.653, z = 4016.257 }, rot = { x = 0.000, y = 241.261, z = 0.000 }, level = 26, drop_tag = "灵龛须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1522003, name = "GADGET_STATE_CHANGE_522003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_522003", action = "action_EVENT_GADGET_STATE_CHANGE_522003" },
	{ config_id = 1522004, name = "GADGET_CREATE_522004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_522004", action = "", trigger_count = 0 },
	{ config_id = 1522005, name = "ANY_GADGET_DIE_522005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_522005", action = "", trigger_count = 0 },
	{ config_id = 1522006, name = "GADGET_STATE_CHANGE_522006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_522006", action = "", trigger_count = 0 },
	{ config_id = 1522007, name = "GROUP_LOAD_522007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_522007", trigger_count = 0 }
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
		gadgets = { 522001, 522002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_522003", "GADGET_CREATE_522004", "ANY_GADGET_DIE_522005", "GADGET_STATE_CHANGE_522006", "GROUP_LOAD_522007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_522003(context, evt)
	if 522001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_522003(context, evt)
	-- 将configid为 522002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 522002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 522001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_522004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_522005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_522006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_522007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == -1 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_temple})
	end
	
	return 0
end