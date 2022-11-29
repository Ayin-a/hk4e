-- 基础信息
local base_info = {
	group_id = 133302083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83020, monster_id = 28030313, pos = { x = -565.756, y = 131.772, z = 2268.075 }, rot = { x = 0.000, y = 199.002, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 83021, monster_id = 28030313, pos = { x = -651.059, y = 132.255, z = 2263.521 }, rot = { x = 0.000, y = 114.947, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 83022, monster_id = 28030313, pos = { x = -644.980, y = 148.084, z = 2296.782 }, rot = { x = 0.000, y = 114.947, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83001, gadget_id = 70330197, pos = { x = -651.225, y = 132.841, z = 2251.787 }, rot = { x = 0.000, y = 349.975, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83002, gadget_id = 70330197, pos = { x = -630.746, y = 103.207, z = 2307.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83003, gadget_id = 70217020, pos = { x = -571.874, y = 142.266, z = 2231.498 }, rot = { x = 0.000, y = 11.841, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 83004, gadget_id = 70330197, pos = { x = -582.988, y = 102.756, z = 2274.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83005, gadget_id = 70330197, pos = { x = -571.191, y = 109.571, z = 2261.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83006, gadget_id = 70217020, pos = { x = -656.416, y = 145.094, z = 2246.049 }, rot = { x = 0.000, y = 8.149, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 83007, gadget_id = 70217020, pos = { x = -673.361, y = 129.302, z = 2315.201 }, rot = { x = 0.000, y = 64.752, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 83009, gadget_id = 70217020, pos = { x = -696.226, y = 152.164, z = 2302.051 }, rot = { x = 0.000, y = 17.829, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 83011, gadget_id = 70330197, pos = { x = -562.908, y = 103.070, z = 2292.224 }, rot = { x = 351.253, y = 131.294, z = 2.558 }, level = 27, area_id = 24 },
	{ config_id = 83013, gadget_id = 70330197, pos = { x = -643.504, y = 127.339, z = 2327.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83015, gadget_id = 70330197, pos = { x = -554.392, y = 127.772, z = 2279.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 83016, gadget_id = 70330197, pos = { x = -633.467, y = 144.722, z = 2335.377 }, rot = { x = 328.931, y = 356.478, z = 348.968 }, level = 27, area_id = 24 }
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
		{ config_id = 83008, gadget_id = 70217020, pos = { x = -639.800, y = 128.087, z = 2332.786 }, rot = { x = 0.000, y = 338.426, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
		{ config_id = 83014, gadget_id = 70500000, pos = { x = -573.263, y = 142.911, z = 2231.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 24 },
		{ config_id = 83017, gadget_id = 70500000, pos = { x = -572.972, y = 142.841, z = 2231.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 24 },
		{ config_id = 83018, gadget_id = 70500000, pos = { x = -657.649, y = 145.439, z = 2246.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 24 },
		{ config_id = 83019, gadget_id = 70500000, pos = { x = -573.309, y = 143.006, z = 2232.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, area_id = 24 }
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
		monsters = { 83020, 83021, 83022 },
		gadgets = { 83001, 83002, 83003, 83004, 83005, 83006, 83007, 83009, 83011, 83013, 83015, 83016 },
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