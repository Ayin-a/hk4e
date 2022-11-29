-- 基础信息
local base_info = {
	group_id = 250004033
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
	{ config_id = 347, gadget_id = 70900221, pos = { x = 254.666, y = -10.280, z = 272.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 348, gadget_id = 70900223, pos = { x = 254.706, y = -10.280, z = 284.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 349, gadget_id = 70900221, pos = { x = 259.335, y = -10.280, z = 275.327 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 350, gadget_id = 70900221, pos = { x = 249.652, y = -10.280, z = 275.479 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 351, gadget_id = 70900223, pos = { x = 257.974, y = -10.280, z = 283.760 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 352, gadget_id = 70900223, pos = { x = 251.390, y = -10.280, z = 283.635 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1 },
	{ config_id = 353, gadget_id = 70350004, pos = { x = 255.110, y = -10.280, z = 288.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000068, name = "CLIENT_EXECUTE_68", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_68", trigger_count = 0 }
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
		gadgets = { 347, 348, 349, 350, 351, 352, 353 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_68" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_68(context, evt)
	-- 将configid为 353 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 353, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end