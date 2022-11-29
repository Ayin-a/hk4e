-- 基础信息
local base_info = {
	group_id = 220000043
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
	{ config_id = 144, gadget_id = 70900221, pos = { x = 105.231, y = 0.500, z = 35.102 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 145, gadget_id = 70900223, pos = { x = 111.219, y = 0.500, z = 35.258 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 146, gadget_id = 71000004, pos = { x = 114.014, y = 0.500, z = 32.412 }, rot = { x = 0.000, y = 301.539, z = 0.000 }, level = 1 },
	{ config_id = 147, gadget_id = 70220007, pos = { x = 108.329, y = 0.500, z = 34.652 }, rot = { x = 0.000, y = 92.063, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000077, name = "CLIENT_EXECUTE_77", event = EventType.EVENT_CLIENT_EXECUTE, source = "LaserSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_77" }
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
		gadgets = { 144, 145, 147 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_77" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_77(context, evt)
	-- 创建id为146的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 144 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end