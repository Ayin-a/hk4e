-- 基础信息
local base_info = {
	group_id = 133001409
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 409014, monster_id = 26010101, pos = { x = 1615.111, y = 203.619, z = -2690.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "骗骗花", area_id = 2 },
	{ config_id = 409016, monster_id = 20010801, pos = { x = 1615.892, y = 203.391, z = -2688.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 409017, monster_id = 20010801, pos = { x = 1612.645, y = 203.959, z = -2689.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 409007, gadget_id = 70500000, pos = { x = 1629.962, y = 198.506, z = -2613.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409008, gadget_id = 70500000, pos = { x = 1633.110, y = 198.181, z = -2621.760 }, rot = { x = 0.000, y = 305.225, z = 0.000 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409009, gadget_id = 70500000, pos = { x = 1629.178, y = 198.739, z = -2617.765 }, rot = { x = 20.813, y = 43.365, z = 339.384 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409010, gadget_id = 70500000, pos = { x = 1634.356, y = 198.222, z = -2611.906 }, rot = { x = 0.000, y = 278.684, z = 0.000 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409011, gadget_id = 70500000, pos = { x = 1633.495, y = 198.450, z = -2618.235 }, rot = { x = 0.000, y = 292.291, z = 0.000 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409012, gadget_id = 70500000, pos = { x = 1656.836, y = 195.325, z = -2634.839 }, rot = { x = 350.545, y = 290.743, z = 3.111 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409013, gadget_id = 70500000, pos = { x = 1655.001, y = 195.836, z = -2634.823 }, rot = { x = 0.000, y = 0.000, z = 19.894 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409015, gadget_id = 70500000, pos = { x = 1655.546, y = 194.697, z = -2639.065 }, rot = { x = 330.387, y = 0.000, z = 0.000 }, level = 20, point_type = 1002, area_id = 2 },
	{ config_id = 409026, gadget_id = 70900340, pos = { x = 1672.987, y = 208.527, z = -2672.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 2 },
	{ config_id = 409027, gadget_id = 70900340, pos = { x = 1673.233, y = 208.029, z = -2678.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 2 },
	{ config_id = 409028, gadget_id = 70900340, pos = { x = 1676.702, y = 209.038, z = -2677.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 2 }
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
	gadgets = {
		{ config_id = 409001, gadget_id = 70500000, pos = { x = 1678.181, y = 204.160, z = -2629.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409002, gadget_id = 70500000, pos = { x = 1671.860, y = 204.006, z = -2622.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409003, gadget_id = 70500000, pos = { x = 1697.030, y = 208.811, z = -2642.956 }, rot = { x = 29.423, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409004, gadget_id = 70500000, pos = { x = 1698.513, y = 208.954, z = -2641.681 }, rot = { x = 0.000, y = 62.488, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409005, gadget_id = 70500000, pos = { x = 1681.126, y = 204.552, z = -2631.767 }, rot = { x = 0.000, y = 225.736, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409006, gadget_id = 70500000, pos = { x = 1700.757, y = 209.682, z = -2643.932 }, rot = { x = 0.000, y = 11.099, z = 345.324 }, level = 20, point_type = 1001, area_id = 2 },
		{ config_id = 409018, gadget_id = 70500000, pos = { x = 1607.090, y = 205.031, z = -2676.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409019, gadget_id = 70500000, pos = { x = 1672.215, y = 207.419, z = -2694.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409020, gadget_id = 70500000, pos = { x = 1682.423, y = 211.080, z = -2671.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409021, gadget_id = 70500000, pos = { x = 1665.759, y = 209.391, z = -2637.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409022, gadget_id = 70500000, pos = { x = 1670.742, y = 202.431, z = -2611.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409023, gadget_id = 70500000, pos = { x = 1597.454, y = 205.215, z = -2629.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409024, gadget_id = 70500000, pos = { x = 1615.998, y = 203.423, z = -2615.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
		{ config_id = 409025, gadget_id = 70500000, pos = { x = 1626.700, y = 205.762, z = -2599.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 }
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
		monsters = { 409014, 409016, 409017 },
		gadgets = { 409007, 409008, 409009, 409010, 409011, 409012, 409013, 409015, 409026, 409027, 409028 },
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