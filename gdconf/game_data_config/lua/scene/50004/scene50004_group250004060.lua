-- 基础信息
local base_info = {
	group_id = 250004060
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
	{ config_id = 591, gadget_id = 70350004, pos = { x = -603.431, y = -11.246, z = -508.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 592, gadget_id = 70900249, pos = { x = -600.000, y = -11.000, z = -524.463 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 593, gadget_id = 70900249, pos = { x = -600.000, y = -11.000, z = -521.844 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 594, gadget_id = 70900249, pos = { x = -600.000, y = -11.000, z = -519.203 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 595, gadget_id = 70900249, pos = { x = -600.000, y = -11.000, z = -516.497 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 596, gadget_id = 70900249, pos = { x = -600.000, y = -11.000, z = -513.689 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 597, gadget_id = 70900249, pos = { x = -599.829, y = -11.000, z = -510.774 }, rot = { x = 0.000, y = 9.513, z = 0.000 }, level = 1 },
	{ config_id = 598, gadget_id = 70900224, pos = { x = -599.802, y = -7.544, z = -509.382 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000106, name = "CLIENT_EXECUTE_106", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_106", action = "action_EVENT_CLIENT_EXECUTE_106", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 591, 592, 593, 594, 595, 596, 597, 598 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_106" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_106(context, evt)
	if 598 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_106(context, evt)
	-- 将configid为 591 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end