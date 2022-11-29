-- 基础信息
local base_info = {
	group_id = 133310115
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 115001, monster_id = 28060101, pos = { x = -2511.990, y = 251.790, z = 4149.563 }, rot = { x = 0.000, y = 121.954, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 115002, monster_id = 28060101, pos = { x = -2459.781, y = 252.500, z = 4252.695 }, rot = { x = 0.000, y = 321.378, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 115003, monster_id = 28030104, pos = { x = -2486.934, y = 252.733, z = 4187.478 }, rot = { x = 0.000, y = 280.121, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, area_id = 26 },
	{ config_id = 115004, monster_id = 28030104, pos = { x = -2485.490, y = 253.348, z = 4179.374 }, rot = { x = 0.000, y = 274.632, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 26 },
	{ config_id = 115005, monster_id = 28030104, pos = { x = -2482.146, y = 252.572, z = 4186.397 }, rot = { x = 0.000, y = 109.071, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 26 },
	{ config_id = 115006, monster_id = 28040101, pos = { x = -2527.148, y = 252.500, z = 4160.193 }, rot = { x = 0.000, y = 339.278, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115007, monster_id = 28040103, pos = { x = -2472.963, y = 251.808, z = 4188.806 }, rot = { x = 0.000, y = 301.457, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115008, monster_id = 28040101, pos = { x = -2524.751, y = 252.500, z = 4164.420 }, rot = { x = 0.000, y = 26.364, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115009, monster_id = 28040103, pos = { x = -2512.083, y = 251.775, z = 4190.396 }, rot = { x = 0.000, y = 331.753, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115010, monster_id = 28040103, pos = { x = -2517.647, y = 251.775, z = 4176.435 }, rot = { x = 0.000, y = 316.374, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115011, monster_id = 28040102, pos = { x = -2531.003, y = 251.775, z = 4169.602 }, rot = { x = 0.000, y = 53.892, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 26 },
	{ config_id = 115012, monster_id = 28030104, pos = { x = -2526.547, y = 259.267, z = 4137.251 }, rot = { x = 0.000, y = 277.170, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 26 }
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
		monsters = { 115001, 115002, 115003, 115004, 115005, 115006, 115007, 115008, 115009, 115010, 115011, 115012 },
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