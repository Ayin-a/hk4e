-- 基础信息
local base_info = {
	group_id = 133002319
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
	{ config_id = 319001, gadget_id = 70360041, pos = { x = 1992.802, y = 236.884, z = -627.664 }, rot = { x = 0.000, y = 287.932, z = 0.000 }, level = 10, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 3 },
	{ config_id = 319002, gadget_id = 70360041, pos = { x = 1579.050, y = 234.450, z = -197.810 }, rot = { x = 0.000, y = 319.040, z = 0.000 }, level = 10, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 3 },
	{ config_id = 319003, gadget_id = 70360041, pos = { x = 1982.435, y = 225.492, z = -994.520 }, rot = { x = 0.000, y = 247.568, z = 0.000 }, level = 5, isOneoff = true, persistent = true, interact_id = 2, explore = { name = "temple", exp = 14 }, area_id = 3 },
	{ config_id = 319004, gadget_id = 70211131, pos = { x = 1992.800, y = 237.792, z = -627.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 319005, gadget_id = 70211131, pos = { x = 1579.100, y = 235.292, z = -197.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 319006, gadget_id = 70211131, pos = { x = 1982.400, y = 226.334, z = -994.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "灵龛蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1319007, name = "GADGET_STATE_CHANGE_319007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319007", action = "action_EVENT_GADGET_STATE_CHANGE_319007" },
	{ config_id = 1319008, name = "GADGET_STATE_CHANGE_319008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319008", action = "action_EVENT_GADGET_STATE_CHANGE_319008" },
	{ config_id = 1319009, name = "GADGET_STATE_CHANGE_319009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319009", action = "action_EVENT_GADGET_STATE_CHANGE_319009" },
	{ config_id = 1319010, name = "GADGET_CREATE_319010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_319010", action = "", trigger_count = 0 },
	{ config_id = 1319011, name = "ANY_GADGET_DIE_319011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_319011", action = "", trigger_count = 0 },
	{ config_id = 1319012, name = "GADGET_STATE_CHANGE_319012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319012", action = "", trigger_count = 0 },
	{ config_id = 1319013, name = "GROUP_LOAD_319013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_319013", trigger_count = 0 }
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
		gadgets = { 319001, 319002, 319003, 319004, 319005, 319006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_319007", "GADGET_STATE_CHANGE_319008", "GADGET_STATE_CHANGE_319009", "GADGET_CREATE_319010", "ANY_GADGET_DIE_319011", "GADGET_STATE_CHANGE_319012", "GROUP_LOAD_319013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319007(context, evt)
	if 319001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319007(context, evt)
	-- 将configid为 319004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 319001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319008(context, evt)
	if 319002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319008(context, evt)
	-- 将configid为 319005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 319002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319009(context, evt)
	if 319003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319009(context, evt)
	-- 将configid为 319006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 319006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 319003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_319010(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_319011(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319012(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_319013(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133002319, 319004, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 319001})
	end
	
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319002) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319002) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133002319, 319005, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 319002})
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319003) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133002319, 319003) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133002319, 319006, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 319003})
	end
	
	return 0
end