-- 基础信息
local base_info = {
	group_id = 243001006
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
	{ config_id = 6001, gadget_id = 70350215, pos = { x = 57.241, y = 39.999, z = -8.118 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70350215, pos = { x = 72.616, y = 40.011, z = -53.088 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70360100, pos = { x = -18.812, y = 40.960, z = -0.927 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 3 },
	{ config_id = 6004, gadget_id = 70360100, pos = { x = -22.270, y = 43.096, z = -0.927 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 1 },
	{ config_id = 6005, gadget_id = 70360100, pos = { x = -20.773, y = 42.019, z = -0.927 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 2 },
	{ config_id = 6006, gadget_id = 70360100, pos = { x = 60.764, y = 43.859, z = -55.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 4 },
	{ config_id = 6007, gadget_id = 70360100, pos = { x = 59.750, y = 42.821, z = -55.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 5 },
	{ config_id = 6008, gadget_id = 70360100, pos = { x = 58.615, y = 44.623, z = -55.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 6 },
	{ config_id = 6009, gadget_id = 70360100, pos = { x = 30.915, y = 42.371, z = -82.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 10 },
	{ config_id = 6010, gadget_id = 70360100, pos = { x = 28.383, y = 41.729, z = -82.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 7 },
	{ config_id = 6011, gadget_id = 70360100, pos = { x = 28.383, y = 41.729, z = -70.738 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 8 },
	{ config_id = 6012, gadget_id = 70360100, pos = { x = 30.861, y = 42.241, z = -70.738 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 9 },
	{ config_id = 6013, gadget_id = 70220011, pos = { x = 24.614, y = 40.018, z = -10.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 70220011, pos = { x = 11.825, y = 40.020, z = -9.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 70220011, pos = { x = 78.690, y = 40.018, z = -80.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70220011, pos = { x = 69.512, y = 40.001, z = -69.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 70220011, pos = { x = -29.006, y = 40.000, z = -25.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 70220011, pos = { x = -40.334, y = 40.000, z = -33.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6019, gadget_id = 70220011, pos = { x = 27.441, y = -19.559, z = -56.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70220011, pos = { x = 37.670, y = -19.556, z = -47.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================