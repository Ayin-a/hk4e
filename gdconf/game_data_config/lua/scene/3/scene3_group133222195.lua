-- 基础信息
local base_info = {
	group_id = 133222195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 28010105, pos = { x = -4622.623, y = 200.347, z = -4103.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195002, monster_id = 28010105, pos = { x = -4616.841, y = 200.321, z = -4124.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195003, monster_id = 28010105, pos = { x = -4838.889, y = 200.241, z = -4100.342 }, rot = { x = 0.000, y = 185.683, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195004, monster_id = 28010104, pos = { x = -4631.710, y = 200.781, z = -4173.424 }, rot = { x = 0.000, y = 219.524, z = 0.000 }, level = 30, drop_tag = "采集动物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195005, monster_id = 28050104, pos = { x = -4756.966, y = 206.448, z = -4305.402 }, rot = { x = 0.000, y = 358.754, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195006, monster_id = 28050104, pos = { x = -4740.127, y = 209.620, z = -4328.952 }, rot = { x = 0.000, y = 315.954, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195007, monster_id = 28050104, pos = { x = -4758.769, y = 205.990, z = -4237.029 }, rot = { x = 0.000, y = 36.071, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195008, monster_id = 28050104, pos = { x = -4751.837, y = 204.846, z = -4223.489 }, rot = { x = 0.000, y = 187.035, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195009, monster_id = 28050104, pos = { x = -4774.476, y = 208.394, z = -4256.199 }, rot = { x = 0.000, y = 128.641, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195010, monster_id = 28050104, pos = { x = -4712.543, y = 204.656, z = -4190.020 }, rot = { x = 0.000, y = 291.195, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 },
	{ config_id = 195011, monster_id = 28050104, pos = { x = -4713.367, y = 205.282, z = -4189.459 }, rot = { x = 0.000, y = 207.396, z = 0.000 }, level = 30, drop_tag = "魔法生物", climate_area_id = 10, area_id = 14 }
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
		monsters = { 195001, 195002, 195003, 195004, 195005, 195006, 195007, 195008, 195009, 195010, 195011 },
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