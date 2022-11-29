-- 基础信息
local base_info = {
	group_id = 133101182
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
	{ config_id = 182001, gadget_id = 70360068, pos = { x = 1443.960, y = 246.060, z = 1308.900 }, rot = { x = 0.000, y = 210.942, z = 0.000 }, level = 19, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 5 },
	{ config_id = 182002, gadget_id = 70211131, pos = { x = 1444.000, y = 246.826, z = 1308.900 }, rot = { x = 0.000, y = 93.825, z = 0.000 }, level = 16, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 182003, gadget_id = 70360068, pos = { x = 1216.430, y = 261.640, z = 1292.340 }, rot = { x = 0.000, y = 210.942, z = 0.000 }, level = 24, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 6 },
	{ config_id = 182004, gadget_id = 70211131, pos = { x = 1216.400, y = 262.430, z = 1292.300 }, rot = { x = 0.000, y = 335.688, z = 0.000 }, level = 21, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 182005, gadget_id = 70360068, pos = { x = 1055.440, y = 317.770, z = 1416.280 }, rot = { x = 0.000, y = 210.942, z = 0.000 }, level = 19, isOneoff = true, persistent = true, interact_id = 3, explore = { name = "temple", exp = 14 }, area_id = 6 },
	{ config_id = 182006, gadget_id = 70211131, pos = { x = 1055.400, y = 318.600, z = 1416.300 }, rot = { x = 0.000, y = 213.742, z = 0.000 }, level = 21, drop_tag = "灵龛璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182007, name = "GADGET_STATE_CHANGE_182007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182007", action = "action_EVENT_GADGET_STATE_CHANGE_182007" },
	{ config_id = 1182008, name = "GADGET_STATE_CHANGE_182008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182008", action = "action_EVENT_GADGET_STATE_CHANGE_182008" },
	{ config_id = 1182009, name = "GADGET_STATE_CHANGE_182009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182009", action = "action_EVENT_GADGET_STATE_CHANGE_182009" },
	{ config_id = 1182010, name = "GADGET_CREATE_182010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_182010", action = "", trigger_count = 0 },
	{ config_id = 1182011, name = "ANY_GADGET_DIE_182011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182011", action = "", trigger_count = 0 },
	{ config_id = 1182012, name = "GADGET_STATE_CHANGE_182012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182012", action = "", trigger_count = 0 },
	{ config_id = 1182013, name = "GROUP_LOAD_182013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_182013", trigger_count = 0 }
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
		gadgets = { 182001, 182002, 182003, 182004, 182005, 182006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_182007", "GADGET_STATE_CHANGE_182008", "GADGET_STATE_CHANGE_182009", "GADGET_CREATE_182010", "ANY_GADGET_DIE_182011", "GADGET_STATE_CHANGE_182012", "GROUP_LOAD_182013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182007(context, evt)
	if 182001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_182007(context, evt)
	-- 将configid为 182002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182008(context, evt)
	if 182003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_182008(context, evt)
	-- 将configid为 182004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182009(context, evt)
	if 182005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_182009(context, evt)
	-- 将configid为 182006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_182010(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182011(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182012(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182013(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182001) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182001) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133101182, 182002, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 182001})
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182003) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182003) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133101182, 182004, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 182003})
	end
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182005) == -1 or ScriptLib.GetGadgetStateByConfigId(context, 133101182, 182005) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, 133101182, 182006, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = 182005})
	end
	
	return 0
end