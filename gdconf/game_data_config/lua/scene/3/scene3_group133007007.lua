-- 基础信息
local base_info = {
	group_id = 133007007
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
	{ config_id = 18, gadget_id = 70500000, pos = { x = 2652.919, y = 329.524, z = 132.621 }, rot = { x = 0.000, y = 10.579, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 19, gadget_id = 70500000, pos = { x = 2685.607, y = 236.984, z = 182.383 }, rot = { x = 0.000, y = 208.814, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 20, gadget_id = 70500000, pos = { x = 2824.414, y = 253.833, z = -24.742 }, rot = { x = 0.000, y = 301.517, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 21, gadget_id = 70500000, pos = { x = 2559.200, y = 189.600, z = 390.000 }, rot = { x = 0.000, y = 80.269, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 22, gadget_id = 70500000, pos = { x = 2883.167, y = 247.000, z = 299.669 }, rot = { x = 0.000, y = 39.318, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 31, gadget_id = 70500000, pos = { x = 2930.781, y = 218.358, z = -35.443 }, rot = { x = 0.000, y = 62.158, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 32, gadget_id = 70500000, pos = { x = 2743.836, y = 221.599, z = 171.129 }, rot = { x = 0.000, y = 245.821, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 34, gadget_id = 70500000, pos = { x = 2864.567, y = 222.982, z = 88.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 40, gadget_id = 70500000, pos = { x = 2701.714, y = 215.684, z = 232.625 }, rot = { x = 0.000, y = 65.277, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 435, gadget_id = 70500000, pos = { x = 2479.939, y = 226.579, z = 272.291 }, rot = { x = 0.000, y = 240.708, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 693, gadget_id = 70500000, pos = { x = 2643.117, y = 294.964, z = -189.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 941, gadget_id = 70500000, pos = { x = 2315.289, y = 259.776, z = -59.087 }, rot = { x = 0.000, y = 10.579, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 },
	{ config_id = 942, gadget_id = 70500000, pos = { x = 2183.052, y = 272.334, z = 22.826 }, rot = { x = 0.000, y = 10.579, z = 0.000 }, level = 23, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 4 }
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
		gadgets = { 18, 19, 20, 21, 22, 31, 32, 34, 40, 435, 693, 941, 942 },
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