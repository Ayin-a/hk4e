-- 基础信息
local base_info = {
	group_id = 133004281
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
	{ config_id = 281001, gadget_id = 70360041, pos = { x = 2154.550, y = 279.360, z = -281.790 }, rot = { x = 0.000, y = 55.938, z = 0.000 }, level = 15, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 3 },
	{ config_id = 281002, gadget_id = 70360041, pos = { x = 2751.630, y = 250.760, z = -535.800 }, rot = { x = 0.000, y = 89.379, z = 0.000 }, level = 15, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 4 },
	{ config_id = 281003, gadget_id = 70211131, pos = { x = 2154.600, y = 280.202, z = -281.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 281004, gadget_id = 70211131, pos = { x = 2751.600, y = 251.602, z = -535.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1281005, name = "GADGET_STATE_CHANGE_281005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281005", action = "action_EVENT_GADGET_STATE_CHANGE_281005" },
	{ config_id = 1281006, name = "GADGET_STATE_CHANGE_281006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281006", action = "action_EVENT_GADGET_STATE_CHANGE_281006" },
	{ config_id = 1281007, name = "GADGET_CREATE_281007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_281007", action = "", trigger_count = 0 },
	{ config_id = 1281008, name = "ANY_GADGET_DIE_281008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_281008", action = "", trigger_count = 0 },
	{ config_id = 1281009, name = "GADGET_STATE_CHANGE_281009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281009", action = "", trigger_count = 0 },
	{ config_id = 1281010, name = "GROUP_LOAD_281010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_281010", trigger_count = 0 }
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
		gadgets = { 281001, 281002, 281003, 281004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_281005", "GADGET_STATE_CHANGE_281006", "GADGET_CREATE_281007", "ANY_GADGET_DIE_281008", "GADGET_STATE_CHANGE_281009", "GROUP_LOAD_281010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281005(context, evt)
	if 281001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281005(context, evt)
	-- 将configid为 281003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 281001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281006(context, evt)
	if 281002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281006(context, evt)
	-- 将configid为 281004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 281002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_281007(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_281008(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281009(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_281010(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133004281, 281001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133004281, 281001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133004281, 281003, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 281001})
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133004281, 281002) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133004281, 281002) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133004281, 281004, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 281002})
	end
	
	return 0
end