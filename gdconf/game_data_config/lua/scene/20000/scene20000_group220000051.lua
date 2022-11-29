-- 基础信息
local base_info = {
	group_id = 220000051
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
	{ config_id = 253, gadget_id = 70900207, pos = { x = 100.346, y = 0.500, z = 275.668 }, rot = { x = 0.000, y = 141.322, z = 0.000 }, level = 1 },
	{ config_id = 254, gadget_id = 70900208, pos = { x = 99.062, y = 0.500, z = 273.528 }, rot = { x = 0.000, y = 81.885, z = 0.000 }, level = 1 },
	{ config_id = 255, gadget_id = 70900208, pos = { x = 97.158, y = 0.500, z = 271.658 }, rot = { x = 0.000, y = 81.885, z = 0.000 }, level = 1 },
	{ config_id = 256, gadget_id = 70900208, pos = { x = 95.012, y = 0.500, z = 269.915 }, rot = { x = 0.000, y = 45.480, z = 0.000 }, level = 1 },
	{ config_id = 257, gadget_id = 70900208, pos = { x = 93.999, y = 0.500, z = 266.833 }, rot = { x = 0.000, y = 110.915, z = 0.000 }, level = 1 },
	{ config_id = 258, gadget_id = 70900208, pos = { x = 93.523, y = 0.500, z = 263.246 }, rot = { x = 0.000, y = 278.295, z = 0.000 }, level = 1 },
	{ config_id = 259, gadget_id = 70900208, pos = { x = 95.400, y = 0.500, z = 261.466 }, rot = { x = 0.000, y = 51.189, z = 0.000 }, level = 1 },
	{ config_id = 260, gadget_id = 70900208, pos = { x = 77.557, y = 0.500, z = 285.791 }, rot = { x = 0.000, y = 81.885, z = 0.000 }, level = 1 },
	{ config_id = 261, gadget_id = 70900208, pos = { x = 75.654, y = 0.500, z = 283.920 }, rot = { x = 0.000, y = 81.885, z = 0.000 }, level = 1 },
	{ config_id = 262, gadget_id = 70900208, pos = { x = 73.508, y = 0.500, z = 282.177 }, rot = { x = 0.000, y = 45.480, z = 0.000 }, level = 1 },
	{ config_id = 263, gadget_id = 70900208, pos = { x = 72.495, y = 0.500, z = 279.096 }, rot = { x = 0.000, y = 110.915, z = 0.000 }, level = 1 },
	{ config_id = 264, gadget_id = 70900208, pos = { x = 72.019, y = 0.500, z = 275.508 }, rot = { x = 0.000, y = 278.295, z = 0.000 }, level = 1 },
	{ config_id = 265, gadget_id = 70900208, pos = { x = 73.896, y = 0.500, z = 273.728 }, rot = { x = 0.000, y = 51.189, z = 0.000 }, level = 1 },
	{ config_id = 266, gadget_id = 70900224, pos = { x = 74.858, y = 0.500, z = 270.898 }, rot = { x = 0.000, y = 269.642, z = 0.000 }, level = 1 },
	{ config_id = 267, gadget_id = 70350004, pos = { x = 69.524, y = 0.767, z = 270.440 }, rot = { x = 0.000, y = 359.988, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000083, name = "CLIENT_EXECUTE_83", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "", action = "action_EVENT_CLIENT_EXECUTE_83" }
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
		gadgets = { 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_83" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_83(context, evt)
	-- 将configid为 267 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end