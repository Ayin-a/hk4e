-- 基础信息
local base_info = {
	group_id = 250015036
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
	{ config_id = 36001, gadget_id = 70350007, pos = { x = 1572.970, y = 204.818, z = 931.971 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 36002, gadget_id = 70220006, pos = { x = 1573.183, y = 201.650, z = 945.925 }, rot = { x = 310.955, y = 0.589, z = 359.220 }, level = 1 },
	{ config_id = 36003, gadget_id = 70220006, pos = { x = 1573.204, y = 201.650, z = 932.860 }, rot = { x = 43.710, y = 358.125, z = 357.288 }, level = 1 },
	{ config_id = 36004, gadget_id = 70300101, pos = { x = 1573.062, y = 201.650, z = 939.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36005, gadget_id = 70350007, pos = { x = 1573.016, y = 204.591, z = 947.313 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 36007, gadget_id = 70350007, pos = { x = 1679.831, y = 202.848, z = 926.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36008, gadget_id = 70350007, pos = { x = 1679.831, y = 203.098, z = 943.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36009, gadget_id = 70220006, pos = { x = 1679.513, y = 202.718, z = 934.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036006, name = "ANY_GADGET_DIE_36006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36006", action = "action_EVENT_ANY_GADGET_DIE_36006" },
	{ config_id = 1036010, name = "ANY_GADGET_DIE_36010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36010", action = "action_EVENT_ANY_GADGET_DIE_36010" }
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
		gadgets = { 36001, 36002, 36003, 36004, 36005, 36007, 36008, 36009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_36006", "ANY_GADGET_DIE_36010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36006(context, evt)
	if 36004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 36003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 36001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36010(context, evt)
	if 36009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36010(context, evt)
	-- 将configid为 36007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end