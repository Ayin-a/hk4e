-- 基础信息
local base_info = {
	group_id = 133222032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 25100101, pos = { x = -4486.760, y = 200.750, z = -4314.143 }, rot = { x = 0.000, y = 53.733, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1002, climate_area_id = 10, area_id = 14 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 32004, monster_id = 25010501, pos = { x = -4474.004, y = 200.507, z = -4319.658 }, rot = { x = 0.000, y = 296.819, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9003, climate_area_id = 10, area_id = 14 },
		{ config_id = 32005, monster_id = 25010301, pos = { x = -4471.528, y = 200.829, z = -4306.755 }, rot = { x = 0.000, y = 32.940, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9003, climate_area_id = 10, area_id = 14 },
		{ config_id = 32006, monster_id = 25100201, pos = { x = -4447.299, y = 201.653, z = -4311.240 }, rot = { x = 0.000, y = 294.993, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1001, climate_area_id = 10, area_id = 14 },
		{ config_id = 32007, monster_id = 25100201, pos = { x = -4448.336, y = 200.687, z = -4314.832 }, rot = { x = 0.000, y = 257.862, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1, climate_area_id = 10, area_id = 14 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 32001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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