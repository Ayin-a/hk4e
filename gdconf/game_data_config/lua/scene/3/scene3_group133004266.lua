-- 基础信息
local base_info = {
	group_id = 133004266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 731, monster_id = 28020301, pos = { x = 2070.839, y = 238.778, z = -567.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 732, monster_id = 28020301, pos = { x = 2080.222, y = 238.122, z = -573.622 }, rot = { x = 0.000, y = 116.215, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 734, monster_id = 28020301, pos = { x = 2079.487, y = 247.374, z = -519.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 735, monster_id = 28020301, pos = { x = 2071.447, y = 242.637, z = -534.053 }, rot = { x = 0.000, y = 150.607, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 736, monster_id = 28020301, pos = { x = 2086.003, y = 246.886, z = -461.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 737, monster_id = 28020301, pos = { x = 2110.688, y = 218.089, z = -479.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 738, monster_id = 28020301, pos = { x = 2152.741, y = 213.082, z = -569.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 740, monster_id = 28020301, pos = { x = 2141.596, y = 213.263, z = -585.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 741, monster_id = 28020301, pos = { x = 2200.474, y = 224.084, z = -559.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 },
	{ config_id = 743, monster_id = 28020301, pos = { x = 2185.346, y = 223.821, z = -561.997 }, rot = { x = 0.000, y = 42.418, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		-- description = suite_2,
		monsters = { 731, 732, 734, 735, 736, 737, 738, 740, 741, 743 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================