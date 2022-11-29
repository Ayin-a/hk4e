-- 基础信息
local base_info = {
	group_id = 133301082
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
	{ config_id = 82009, gadget_id = 70500000, pos = { x = -271.682, y = 192.266, z = 3252.594 }, rot = { x = 356.041, y = 317.973, z = 355.619 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 82010, gadget_id = 70500000, pos = { x = -272.092, y = 192.300, z = 3251.561 }, rot = { x = 354.221, y = 9.932, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 82015, gadget_id = 70540044, pos = { x = -289.453, y = 193.250, z = 3224.470 }, rot = { x = 353.322, y = 308.811, z = 355.409 }, level = 27, area_id = 22 },
	{ config_id = 82016, gadget_id = 70500000, pos = { x = -289.453, y = 193.250, z = 3224.470 }, rot = { x = 353.322, y = 308.811, z = 355.409 }, level = 27, point_type = 2048, owner = 82015, area_id = 22 },
	{ config_id = 82017, gadget_id = 70540044, pos = { x = -280.532, y = 193.250, z = 3222.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 82018, gadget_id = 70500000, pos = { x = -280.532, y = 193.250, z = 3222.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2048, owner = 82017, area_id = 22 },
	{ config_id = 82019, gadget_id = 70540044, pos = { x = -282.779, y = 193.218, z = 3230.261 }, rot = { x = 0.000, y = 46.461, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 82020, gadget_id = 70500000, pos = { x = -282.767, y = 193.218, z = 3230.256 }, rot = { x = 0.000, y = 46.461, z = 0.000 }, level = 27, point_type = 2048, owner = 82019, area_id = 22 },
	{ config_id = 82021, gadget_id = 70540044, pos = { x = -288.128, y = 193.250, z = 3227.594 }, rot = { x = 0.000, y = 53.474, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 82022, gadget_id = 70500000, pos = { x = -288.128, y = 193.250, z = 3227.594 }, rot = { x = 3.559, y = 53.111, z = 348.358 }, level = 27, point_type = 2048, owner = 82021, area_id = 22 },
	{ config_id = 82026, gadget_id = 70540037, pos = { x = -279.082, y = 192.300, z = 3246.859 }, rot = { x = 359.275, y = 54.105, z = 359.496 }, level = 27, area_id = 22 },
	{ config_id = 82027, gadget_id = 70500000, pos = { x = -279.002, y = 192.670, z = 3246.436 }, rot = { x = 359.275, y = 54.105, z = 359.497 }, level = 27, point_type = 2049, owner = 82026, area_id = 22 },
	{ config_id = 82028, gadget_id = 70500000, pos = { x = -278.930, y = 193.026, z = 3247.169 }, rot = { x = 359.497, y = 324.120, z = 0.725 }, level = 27, point_type = 2049, owner = 82026, area_id = 22 },
	{ config_id = 82029, gadget_id = 70500000, pos = { x = -296.980, y = 193.327, z = 3204.473 }, rot = { x = 0.000, y = 36.442, z = 0.000 }, level = 27, point_type = 2045, area_id = 22 },
	{ config_id = 82030, gadget_id = 70500000, pos = { x = -294.905, y = 193.313, z = 3209.486 }, rot = { x = 0.000, y = 131.736, z = 0.000 }, level = 27, point_type = 2045, area_id = 22 },
	{ config_id = 82031, gadget_id = 70500000, pos = { x = -297.912, y = 193.287, z = 3207.357 }, rot = { x = 0.000, y = 140.308, z = 0.000 }, level = 27, point_type = 2045, area_id = 22 }
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
		{ config_id = 82001, monster_id = 28050106, pos = { x = -277.817, y = 193.979, z = 3224.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82002, monster_id = 28050106, pos = { x = -291.813, y = 194.413, z = 3226.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82003, monster_id = 28050106, pos = { x = -282.489, y = 196.341, z = 3214.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82004, monster_id = 28050106, pos = { x = -271.489, y = 196.639, z = 3223.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82005, monster_id = 28050106, pos = { x = -293.198, y = 203.050, z = 3221.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82006, monster_id = 28050106, pos = { x = -296.680, y = 196.882, z = 3226.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82007, monster_id = 28050106, pos = { x = -289.410, y = 194.798, z = 3221.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 82032, monster_id = 28050106, pos = { x = -285.869, y = 193.250, z = 3225.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 }
	},
	gadgets = {
		{ config_id = 82011, gadget_id = 70540039, pos = { x = -272.238, y = 203.817, z = 3213.680 }, rot = { x = 1.019, y = 316.889, z = 359.047 }, level = 27, area_id = 22 },
		{ config_id = 82012, gadget_id = 70500000, pos = { x = -272.575, y = 203.325, z = 3213.695 }, rot = { x = 48.016, y = 241.001, z = 303.525 }, level = 27, point_type = 2050, owner = 82011, area_id = 22 },
		{ config_id = 82013, gadget_id = 70540039, pos = { x = -269.044, y = 200.413, z = 3217.823 }, rot = { x = 359.343, y = 262.921, z = 0.056 }, level = 27, area_id = 22 },
		{ config_id = 82014, gadget_id = 70500000, pos = { x = -269.270, y = 199.924, z = 3217.567 }, rot = { x = 48.540, y = 189.140, z = 306.348 }, level = 27, point_type = 2050, owner = 82013, area_id = 22 }
	}
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
		gadgets = { 82009, 82010, 82015, 82016, 82017, 82018, 82019, 82020, 82021, 82022, 82026, 82027, 82028, 82029, 82030, 82031 },
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