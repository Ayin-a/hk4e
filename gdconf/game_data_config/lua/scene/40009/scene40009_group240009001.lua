-- 基础信息
local base_info = {
	group_id = 240009001
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
	{ config_id = 1001, gadget_id = 70900037, pos = { x = -62.337, y = -8.029, z = 96.646 }, rot = { x = 0.000, y = 180.176, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1002, gadget_id = 70900037, pos = { x = -63.942, y = -8.020, z = 90.390 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1005, gadget_id = 70360020, pos = { x = -64.962, y = -1.186, z = 90.309 }, rot = { x = 85.656, y = 180.000, z = 87.953 }, level = 1 },
	{ config_id = 1007, gadget_id = 70360019, pos = { x = -65.067, y = -5.065, z = 90.287 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = -57.892, y = -8.072, z = 99.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70220025, pos = { x = -57.941, y = -8.070, z = 100.217 }, rot = { x = 271.025, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220013, pos = { x = -55.703, y = -8.111, z = 100.868 }, rot = { x = 0.000, y = 42.338, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70220014, pos = { x = -58.365, y = -8.055, z = 101.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220013, pos = { x = -46.392, y = -7.984, z = 83.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220014, pos = { x = -46.036, y = -7.984, z = 85.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220025, pos = { x = -46.423, y = -7.984, z = 84.004 }, rot = { x = 275.558, y = 139.394, z = 130.739 }, level = 1 },
	{ config_id = 1015, gadget_id = 70360016, pos = { x = -64.615, y = -3.044, z = 90.285 }, rot = { x = 0.000, y = 0.000, z = 278.818 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "GADGET_STATE_CHANGE_1006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1006", action = "action_EVENT_GADGET_STATE_CHANGE_1006" }
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
		gadgets = { 1001, 1002, 1005, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	if 1005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end