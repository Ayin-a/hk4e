-- 基础信息
local base_info = {
	group_id = 220000047
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
	{ config_id = 191, gadget_id = 70900208, pos = { x = 786.909, y = 5.798, z = 379.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 194, gadget_id = 70900208, pos = { x = 792.978, y = 5.804, z = 380.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 195, gadget_id = 70900208, pos = { x = 799.340, y = 5.804, z = 380.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 196, gadget_id = 70900208, pos = { x = 805.257, y = 5.804, z = 380.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 197, gadget_id = 70900208, pos = { x = 810.885, y = 5.804, z = 379.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 208, gadget_id = 70900206, pos = { x = 826.915, y = 5.901, z = 362.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 209, gadget_id = 70900207, pos = { x = 826.827, y = 7.645, z = 362.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 210, gadget_id = 70380003, pos = { x = 802.765, y = 3.878, z = 363.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000018, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000080, name = "CLIENT_EXECUTE_80", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_80", action = "action_EVENT_CLIENT_EXECUTE_80", trigger_count = 0 }
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
		gadgets = { 191, 194, 195, 196, 197, 208, 209, 210 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_80(context, evt)
	if 209 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_80(context, evt)
	-- 将configid为 208 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 208, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end