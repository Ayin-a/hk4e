-- 基础信息
local base_info = {
	group_id = 133315162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 28030313, pos = { x = 94.183, y = 203.153, z = 2605.503 }, rot = { x = 0.000, y = 268.521, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 162002, monster_id = 28030313, pos = { x = 32.804, y = 211.088, z = 2615.233 }, rot = { x = 0.000, y = 122.834, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 162003, monster_id = 28030401, pos = { x = 117.409, y = 249.932, z = 2489.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 162004, monster_id = 28030401, pos = { x = 117.038, y = 249.276, z = 2492.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 162005, monster_id = 28030401, pos = { x = 113.079, y = 249.069, z = 2487.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 162006, monster_id = 28030402, pos = { x = 80.378, y = 191.018, z = 2558.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 162007, monster_id = 28030402, pos = { x = 77.963, y = 192.203, z = 2556.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 162008, monster_id = 28010208, pos = { x = 89.333, y = 188.276, z = 2563.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 162009, monster_id = 28020102, pos = { x = 26.325, y = 215.183, z = 2517.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 162010, monster_id = 28020102, pos = { x = 99.525, y = 246.151, z = 2484.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 162011, monster_id = 28020201, pos = { x = 46.480, y = 244.175, z = 2415.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 162012, monster_id = 28020201, pos = { x = 45.272, y = 244.264, z = 2417.407 }, rot = { x = 0.000, y = 175.849, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 162013, monster_id = 28020201, pos = { x = -5.616, y = 260.189, z = 2500.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 162014, monster_id = 28060201, pos = { x = 146.204, y = 292.462, z = 2441.688 }, rot = { x = 0.000, y = 253.753, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 4, area_id = 20 },
	{ config_id = 162015, monster_id = 28030313, pos = { x = 44.404, y = 212.291, z = 2522.752 }, rot = { x = 0.000, y = 193.152, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 20 },
	{ config_id = 162016, monster_id = 28050106, pos = { x = 121.819, y = 203.857, z = 2531.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 162017, monster_id = 28050106, pos = { x = 123.144, y = 203.750, z = 2533.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 }
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
		monsters = { 162001, 162002, 162003, 162004, 162005, 162006, 162007, 162008, 162009, 162010, 162011, 162012, 162013, 162014, 162015, 162016, 162017 },
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