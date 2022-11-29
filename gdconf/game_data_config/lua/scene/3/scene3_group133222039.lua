-- 基础信息
local base_info = {
	group_id = 133222039
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39001, monster_id = 24020301, pos = { x = -4666.845, y = 201.539, z = -4323.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 39002, monster_id = 24020301, pos = { x = -4744.071, y = 200.227, z = -4274.394 }, rot = { x = 0.000, y = 327.554, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 39003, monster_id = 24020301, pos = { x = -4746.429, y = 200.064, z = -4263.952 }, rot = { x = 0.000, y = 216.307, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 39004, monster_id = 24020201, pos = { x = -4751.775, y = 200.763, z = -4270.047 }, rot = { x = 11.375, y = 85.308, z = 358.192 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 39005, monster_id = 24020101, pos = { x = -4650.345, y = 200.517, z = -4314.496 }, rot = { x = 0.000, y = 265.843, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 10, area_id = 14 },
	{ config_id = 39009, monster_id = 24020101, pos = { x = -4685.537, y = 201.206, z = -4323.801 }, rot = { x = 0.000, y = 265.843, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 10, area_id = 14 },
	{ config_id = 39010, monster_id = 24020101, pos = { x = -4750.302, y = 200.670, z = -4251.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 10, area_id = 14 },
	{ config_id = 39011, monster_id = 24020301, pos = { x = -4679.663, y = 200.573, z = -4185.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 39012, monster_id = 24020301, pos = { x = -4672.199, y = 200.311, z = -4186.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 }
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
		{ config_id = 39006, monster_id = 24020101, pos = { x = -4654.255, y = 184.951, z = -4257.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
		{ config_id = 39007, monster_id = 24020201, pos = { x = -4647.363, y = 184.630, z = -4248.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
		{ config_id = 39008, monster_id = 24020201, pos = { x = -4652.405, y = 184.886, z = -4239.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 }
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
		monsters = { 39001, 39002, 39003, 39004, 39005, 39009, 39010, 39011, 39012 },
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