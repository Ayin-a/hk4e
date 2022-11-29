-- 基础信息
local base_info = {
	group_id = 177006074
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
	{ config_id = 74001, gadget_id = 70500000, pos = { x = 276.361, y = 235.480, z = -375.918 }, rot = { x = 0.000, y = 83.282, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74002, gadget_id = 70500000, pos = { x = 278.208, y = 234.530, z = -373.399 }, rot = { x = 334.841, y = 312.361, z = 335.429 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74003, gadget_id = 70500000, pos = { x = 285.459, y = 230.997, z = -372.849 }, rot = { x = 350.824, y = 99.226, z = 358.516 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74004, gadget_id = 70500000, pos = { x = 433.979, y = 167.827, z = -284.826 }, rot = { x = 0.000, y = 8.144, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74011, gadget_id = 70500000, pos = { x = 450.716, y = 174.531, z = -189.510 }, rot = { x = 0.000, y = 155.125, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74012, gadget_id = 70500000, pos = { x = 484.347, y = 178.945, z = -200.618 }, rot = { x = 0.000, y = 185.989, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74013, gadget_id = 70500000, pos = { x = 429.187, y = 177.980, z = -234.444 }, rot = { x = 359.216, y = 10.182, z = 4.348 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74014, gadget_id = 70500000, pos = { x = 238.249, y = 175.273, z = -404.008 }, rot = { x = 0.000, y = 297.147, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74015, gadget_id = 70500000, pos = { x = 362.026, y = 166.135, z = -221.300 }, rot = { x = 345.956, y = 255.427, z = 331.356 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74016, gadget_id = 70500000, pos = { x = 474.139, y = 180.147, z = -348.525 }, rot = { x = 354.366, y = 102.194, z = 354.018 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74019, gadget_id = 70500000, pos = { x = 234.851, y = 204.746, z = -228.585 }, rot = { x = 0.000, y = 326.867, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74021, gadget_id = 70500000, pos = { x = 366.324, y = 186.923, z = -267.712 }, rot = { x = 0.000, y = 271.043, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74022, gadget_id = 70500000, pos = { x = 414.999, y = 186.234, z = -272.432 }, rot = { x = 353.922, y = 276.629, z = 345.851 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74025, gadget_id = 70500000, pos = { x = 149.440, y = 199.612, z = -342.967 }, rot = { x = 0.000, y = 254.273, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74027, gadget_id = 70500000, pos = { x = 183.111, y = 213.034, z = -266.422 }, rot = { x = 0.000, y = 51.649, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74031, gadget_id = 70500000, pos = { x = 376.000, y = 180.126, z = -342.885 }, rot = { x = 0.000, y = 8.225, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74032, gadget_id = 70500000, pos = { x = 374.181, y = 180.456, z = -353.156 }, rot = { x = 0.000, y = 277.664, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 },
	{ config_id = 74033, gadget_id = 70500000, pos = { x = 468.638, y = 183.003, z = -366.783 }, rot = { x = 0.000, y = 338.688, z = 0.000 }, level = 36, point_type = 9198, persistent = true, area_id = 210 }
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
		gadgets = { 74001, 74002, 74003, 74004, 74011, 74012, 74013, 74014, 74015, 74016, 74019, 74021, 74022, 74025, 74027, 74031, 74032, 74033 },
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