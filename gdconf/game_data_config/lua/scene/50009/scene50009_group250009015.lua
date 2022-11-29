-- 基础信息
local base_info = {
	group_id = 250009015
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
	{ config_id = 15001, gadget_id = 70330003, pos = { x = 112.688, y = 9.070, z = -172.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15002, gadget_id = 70330001, pos = { x = 95.815, y = 23.240, z = -206.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15003, gadget_id = 70900314, pos = { x = 78.546, y = 20.494, z = -209.095 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 15004, gadget_id = 70900314, pos = { x = 34.336, y = 26.202, z = -210.508 }, rot = { x = 0.000, y = 0.000, z = 268.500 }, level = 1 },
	{ config_id = 15006, gadget_id = 70211131, pos = { x = 19.597, y = 36.440, z = -215.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true },
	{ config_id = 15007, gadget_id = 40000001, pos = { x = 112.670, y = 8.620, z = -164.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15008, gadget_id = 70330001, pos = { x = 112.513, y = 8.878, z = -164.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15009, gadget_id = 70900314, pos = { x = 105.054, y = 10.129, z = -173.433 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015005, name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005" },
	{ config_id = 1015010, name = "GADGET_STATE_CHANGE_15010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15010", action = "action_EVENT_GADGET_STATE_CHANGE_15010" }
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
		gadgets = { 15001, 15002, 15003, 15004, 15006, 15007, 15008, 15009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_15005", "GADGET_STATE_CHANGE_15010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	if 15002 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 将configid为 15003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 15004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	if 15008 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	-- 将configid为 15009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end