-- 基础信息
local base_info = {
	group_id = 133303206
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
	{ config_id = 206001, gadget_id = 70310479, pos = { x = -1697.373, y = 274.375, z = 3907.914 }, rot = { x = 352.115, y = 356.993, z = 355.122 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206002, gadget_id = 70310479, pos = { x = -1683.211, y = 272.590, z = 3899.834 }, rot = { x = 0.000, y = 304.137, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206004, gadget_id = 70310479, pos = { x = -1570.290, y = 261.283, z = 3872.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206005, gadget_id = 70310479, pos = { x = -1576.954, y = 261.293, z = 3856.435 }, rot = { x = 0.000, y = 327.724, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206006, gadget_id = 70310479, pos = { x = -1577.320, y = 261.283, z = 3870.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206007, gadget_id = 70310479, pos = { x = -1569.314, y = 252.356, z = 3825.990 }, rot = { x = 0.000, y = 335.080, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206008, gadget_id = 70310479, pos = { x = -1624.060, y = 259.907, z = 3863.740 }, rot = { x = 0.000, y = 317.289, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206009, gadget_id = 70310479, pos = { x = -1624.946, y = 259.907, z = 3855.250 }, rot = { x = 0.000, y = 317.289, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206010, gadget_id = 70310479, pos = { x = -1663.115, y = 263.514, z = 3865.418 }, rot = { x = 0.000, y = 317.289, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206012, gadget_id = 70310479, pos = { x = -1661.969, y = 263.507, z = 3874.551 }, rot = { x = 0.000, y = 317.289, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206013, gadget_id = 70310479, pos = { x = -1590.048, y = 253.172, z = 3845.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206014, gadget_id = 70310479, pos = { x = -1563.390, y = 261.293, z = 3860.340 }, rot = { x = 0.000, y = 278.505, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206015, gadget_id = 70310479, pos = { x = -1555.264, y = 252.356, z = 3829.556 }, rot = { x = 0.000, y = 356.706, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206016, gadget_id = 70310479, pos = { x = -1650.480, y = 281.580, z = 3812.490 }, rot = { x = 344.696, y = 287.190, z = 339.761 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206017, gadget_id = 70310479, pos = { x = -1062.137, y = 211.568, z = 3879.490 }, rot = { x = 0.000, y = 285.433, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206018, gadget_id = 70310479, pos = { x = -1057.110, y = 209.943, z = 3911.100 }, rot = { x = 0.000, y = 356.015, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 206019, gadget_id = 70310479, pos = { x = -1236.660, y = 234.569, z = 3749.104 }, rot = { x = 0.000, y = 279.471, z = 357.729 }, level = 30, area_id = 23 },
	{ config_id = 206020, gadget_id = 70310479, pos = { x = -1238.995, y = 243.667, z = 3725.024 }, rot = { x = 354.581, y = 280.049, z = 353.902 }, level = 30, area_id = 23 },
	{ config_id = 206021, gadget_id = 70310479, pos = { x = -1234.660, y = 233.560, z = 3737.230 }, rot = { x = 0.000, y = 279.471, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 206022, gadget_id = 70310479, pos = { x = -1074.188, y = 339.048, z = 4033.940 }, rot = { x = 3.744, y = 0.000, z = 2.619 }, level = 30, area_id = 23 },
	{ config_id = 206025, gadget_id = 70310479, pos = { x = -1097.326, y = 340.864, z = 3990.047 }, rot = { x = 0.001, y = 359.914, z = -0.002 }, level = 30, area_id = 23 },
	{ config_id = 206026, gadget_id = 70310479, pos = { x = -1062.539, y = 336.967, z = 3957.513 }, rot = { x = 1.027, y = 359.923, z = 0.596 }, level = 30, area_id = 23 },
	{ config_id = 206028, gadget_id = 70310479, pos = { x = -1067.084, y = 342.048, z = 4017.420 }, rot = { x = 359.428, y = 0.251, z = 1.170 }, level = 30, area_id = 23 },
	{ config_id = 206030, gadget_id = 70310479, pos = { x = -1054.700, y = 347.830, z = 4012.380 }, rot = { x = 0.787, y = 359.566, z = 0.591 }, level = 30, area_id = 23 }
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
		gadgets = { 206001, 206002, 206004, 206005, 206006, 206007, 206008, 206009, 206010, 206012, 206013, 206014, 206015, 206016, 206017, 206018, 206019, 206020, 206021, 206022, 206025, 206026, 206028, 206030 },
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