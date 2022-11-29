-- 基础信息
local base_info = {
	group_id = 133217146
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
	{ config_id = 146001, gadget_id = 70210105, pos = { x = -4406.464, y = 200.000, z = -3666.550 }, rot = { x = 0.000, y = 264.086, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146002, gadget_id = 70210105, pos = { x = -4458.917, y = 200.000, z = -3708.121 }, rot = { x = 0.000, y = 324.049, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146003, gadget_id = 70210105, pos = { x = -4423.031, y = 200.000, z = -3677.850 }, rot = { x = 0.000, y = 315.405, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146004, gadget_id = 70210105, pos = { x = -4442.939, y = 200.000, z = -3690.988 }, rot = { x = 0.000, y = 10.441, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146005, gadget_id = 70210105, pos = { x = -4386.741, y = 200.000, z = -3637.214 }, rot = { x = 0.000, y = 18.279, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146006, gadget_id = 70210105, pos = { x = -4378.407, y = 200.000, z = -3650.460 }, rot = { x = 0.000, y = 290.375, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146007, gadget_id = 70210105, pos = { x = -4326.691, y = 200.000, z = -3652.728 }, rot = { x = 0.000, y = 144.338, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146008, gadget_id = 70210105, pos = { x = -4314.844, y = 200.000, z = -3656.589 }, rot = { x = 0.000, y = 240.926, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146009, gadget_id = 70210105, pos = { x = -4656.881, y = 200.000, z = -3528.044 }, rot = { x = 0.000, y = 22.197, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146010, gadget_id = 70210105, pos = { x = -4671.684, y = 200.000, z = -3514.219 }, rot = { x = 0.000, y = 230.515, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146011, gadget_id = 70210105, pos = { x = -4225.715, y = 200.000, z = -3808.073 }, rot = { x = 0.000, y = 101.358, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146012, gadget_id = 70210105, pos = { x = -4235.709, y = 200.000, z = -3749.655 }, rot = { x = 0.000, y = 96.138, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 146013, gadget_id = 70210105, pos = { x = -4218.078, y = 200.000, z = -3765.380 }, rot = { x = 0.000, y = 113.754, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
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
		gadgets = { 146001, 146002, 146003, 146004, 146005, 146006, 146007, 146008, 146009, 146010, 146011, 146012, 146013 },
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