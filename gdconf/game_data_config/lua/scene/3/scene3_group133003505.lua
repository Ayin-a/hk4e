-- 基础信息
local base_info = {
	group_id = 133003505
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
	{ config_id = 505001, gadget_id = 70360041, pos = { x = 2874.310, y = 286.960, z = -1194.430 }, rot = { x = 0.000, y = 187.336, z = 0.000 }, level = 30, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 1 },
	{ config_id = 505002, gadget_id = 70360041, pos = { x = 2589.540, y = 261.620, z = -1679.190 }, rot = { x = 0.000, y = 36.802, z = 0.000 }, level = 30, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 1 },
	{ config_id = 505003, gadget_id = 70211131, pos = { x = 2874.300, y = 287.802, z = -1194.400 }, rot = { x = 0.000, y = 187.729, z = 0.000 }, level = 26, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 505004, gadget_id = 70211131, pos = { x = 2589.499, y = 262.462, z = -1679.198 }, rot = { x = 0.000, y = 215.434, z = 0.000 }, level = 6, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1505005, name = "GADGET_STATE_CHANGE_505005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505005", action = "action_EVENT_GADGET_STATE_CHANGE_505005" },
	{ config_id = 1505006, name = "GADGET_STATE_CHANGE_505006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505006", action = "action_EVENT_GADGET_STATE_CHANGE_505006" },
	{ config_id = 1505007, name = "GADGET_CREATE_505007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_505007", action = "", trigger_count = 0 },
	{ config_id = 1505008, name = "ANY_GADGET_DIE_505008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_505008", action = "", trigger_count = 0 },
	{ config_id = 1505009, name = "GADGET_STATE_CHANGE_505009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_505009", action = "", trigger_count = 0 },
	{ config_id = 1505010, name = "GROUP_LOAD_505010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_505010", trigger_count = 0 }
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
		gadgets = { 505001, 505002, 505003, 505004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_505005", "GADGET_STATE_CHANGE_505006", "GADGET_CREATE_505007", "ANY_GADGET_DIE_505008", "GADGET_STATE_CHANGE_505009", "GROUP_LOAD_505010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505005(context, evt)
	if 505001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505005(context, evt)
	-- 将configid为 505003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 505001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505006(context, evt)
	if 505002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_505006(context, evt)
	-- 将configid为 505004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 505002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_505007(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_505008(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_505009(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_505010(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133003505, 505001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133003505, 505001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133003505, 505003, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 505001})
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133003505, 505002) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133003505, 505002) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133003505, 505004, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 505002})
	end
	
	return 0
end