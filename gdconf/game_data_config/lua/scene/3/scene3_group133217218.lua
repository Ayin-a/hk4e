-- 基础信息
local base_info = {
	group_id = 133217218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218009, monster_id = 25080201, pos = { x = -4619.641, y = 200.147, z = -4003.191 }, rot = { x = 0.000, y = 15.634, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, climate_area_id = 10, area_id = 14 },
	{ config_id = 218010, monster_id = 25080101, pos = { x = -4623.748, y = 200.606, z = -4000.758 }, rot = { x = 0.000, y = 345.487, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, climate_area_id = 10, area_id = 14 },
	{ config_id = 218014, monster_id = 25080301, pos = { x = -4623.309, y = 200.390, z = -3997.617 }, rot = { x = 0.000, y = 199.216, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218003, gadget_id = 70900393, pos = { x = -4617.615, y = 199.965, z = -4007.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 218004, gadget_id = 70310006, pos = { x = -4623.175, y = 200.448, z = -3998.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 218005, gadget_id = 70220048, pos = { x = -4616.797, y = 198.839, z = -4004.251 }, rot = { x = 31.391, y = 344.364, z = 331.750 }, level = 30, area_id = 14 },
	{ config_id = 218006, gadget_id = 70220051, pos = { x = -4616.563, y = 199.562, z = -4005.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 218007, gadget_id = 70220050, pos = { x = -4614.934, y = 199.608, z = -4004.747 }, rot = { x = 0.000, y = 0.000, z = 343.578 }, level = 30, area_id = 14 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 218001, monster_id = 23030101, pos = { x = -5193.127, y = 200.322, z = -3821.505 }, rot = { x = 0.000, y = 69.083, z = 0.000 }, level = 30, drop_tag = "召唤师", area_id = 14 },
		{ config_id = 218002, monster_id = 23040101, pos = { x = -4997.475, y = 199.976, z = -3778.721 }, rot = { x = 0.000, y = 251.064, z = 0.000 }, level = 30, drop_tag = "召唤师", area_id = 14 },
		{ config_id = 218008, monster_id = 23010301, pos = { x = -5101.156, y = 199.702, z = -3810.421 }, rot = { x = 0.000, y = 165.607, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 14 }
	},
	gadgets = {
		{ config_id = 218011, gadget_id = 70500000, pos = { x = -5045.711, y = 199.981, z = -3780.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2034, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 218012, gadget_id = 70500000, pos = { x = -5046.476, y = 200.019, z = -3780.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2034, isOneoff = true, persistent = true, area_id = 14 },
		{ config_id = 218013, gadget_id = 70900393, pos = { x = -5079.440, y = 200.000, z = -3759.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218015, gadget_id = 70220050, pos = { x = -5055.440, y = 199.926, z = -3755.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218016, gadget_id = 70220050, pos = { x = -5080.791, y = 199.782, z = -3738.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218017, gadget_id = 70220050, pos = { x = -5050.252, y = 199.820, z = -3756.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218018, gadget_id = 70220051, pos = { x = -5076.024, y = 199.253, z = -3733.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218019, gadget_id = 70220052, pos = { x = -5055.387, y = 200.314, z = -3760.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218020, gadget_id = 70220052, pos = { x = -5055.085, y = 200.008, z = -3757.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218021, gadget_id = 70220051, pos = { x = -5078.185, y = 201.048, z = -3730.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218022, gadget_id = 70220051, pos = { x = -5079.987, y = 199.917, z = -3739.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 218023, gadget_id = 70220051, pos = { x = -5051.378, y = 199.932, z = -3757.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 218009, 218010, 218014 },
		gadgets = { 218003, 218004, 218005, 218006, 218007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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