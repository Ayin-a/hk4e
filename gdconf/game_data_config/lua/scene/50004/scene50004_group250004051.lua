-- 基础信息
local base_info = {
	group_id = 250004051
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
	{ config_id = 458, gadget_id = 70350004, pos = { x = 1247.767, y = 200.101, z = 234.147 }, rot = { x = 0.000, y = 318.482, z = 0.000 }, level = 1 },
	{ config_id = 459, gadget_id = 70900221, pos = { x = 1244.003, y = 200.044, z = 232.400 }, rot = { x = 0.000, y = 48.363, z = 0.000 }, level = 1 },
	{ config_id = 460, gadget_id = 70900223, pos = { x = 1250.137, y = 200.044, z = 237.949 }, rot = { x = 0.000, y = 49.080, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000090, name = "CLIENT_EXECUTE_90", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_UnHit", condition = "condition_EVENT_CLIENT_EXECUTE_90", action = "action_EVENT_CLIENT_EXECUTE_90" }
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
		gadgets = { 458, 459, 460 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_90" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_90(context, evt)
	if 459 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_90(context, evt)
	-- 将configid为 458 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 458, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end