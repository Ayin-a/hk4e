-- 基础信息
local base_info = {
	group_id = 166001135
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135004, monster_id = 28030405, pos = { x = 1079.513, y = 961.466, z = 685.181 }, rot = { x = 0.000, y = 183.668, z = 0.000 }, level = 36, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 300 },
	{ config_id = 135005, monster_id = 28030405, pos = { x = 1087.196, y = 962.419, z = 667.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 135001, gadget_id = 70290289, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 135002, gadget_id = 70500000, pos = { x = 1076.015, y = 962.169, z = 679.423 }, rot = { x = 10.640, y = 344.469, z = 0.140 }, level = 36, point_type = 2006, isOneoff = true, area_id = 300 },
	{ config_id = 135003, gadget_id = 70500000, pos = { x = 1092.858, y = 963.080, z = 677.336 }, rot = { x = 0.000, y = 0.000, z = 301.332 }, level = 36, point_type = 3002, isOneoff = true, area_id = 300 },
	{ config_id = 135006, gadget_id = 70210101, pos = { x = 1092.893, y = 962.718, z = 677.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 135007, gadget_id = 70220015, pos = { x = 1081.197, y = 962.522, z = 690.383 }, rot = { x = 0.000, y = 32.735, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 135008, gadget_id = 70220015, pos = { x = 1088.230, y = 961.528, z = 688.650 }, rot = { x = 270.071, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 135004, 135005 },
		gadgets = { 135001, 135002, 135003, 135006, 135007, 135008 },
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