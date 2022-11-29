-- 基础信息
local base_info = {
	group_id = 250004013
}

-- Trigger变量
local defs = {
	gadget_id_1 = 125
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
	{ config_id = 125, gadget_id = 70900224, pos = { x = 370.311, y = -10.096, z = -131.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 126, gadget_id = 70350004, pos = { x = 372.257, y = -10.889, z = -135.078 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 161, gadget_id = 70900208, pos = { x = 367.399, y = -11.140, z = -131.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 162, gadget_id = 70900208, pos = { x = 364.359, y = -11.167, z = -131.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000023, name = "CLIENT_EXECUTE_23", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_23", action = "action_EVENT_CLIENT_EXECUTE_23", trigger_count = 0 }
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
		gadgets = { 125, 126, 161, 162 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_23" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_23(context, evt)
	-- 判断是gadgetid 57 option_id 0
	if defs.gadget_id_1 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_23(context, evt)
	-- 将configid为 126 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 126, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end