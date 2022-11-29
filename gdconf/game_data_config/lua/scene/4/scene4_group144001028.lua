-- 基础信息
local base_info = {
	group_id = 144001028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 28030101, pos = { x = 113.465, y = 120.000, z = 391.069 }, rot = { x = 0.000, y = 262.195, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
	{ config_id = 28004, monster_id = 28030101, pos = { x = 206.907, y = 194.384, z = 448.777 }, rot = { x = 0.000, y = 262.195, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
	{ config_id = 28005, monster_id = 28030101, pos = { x = 367.847, y = 189.016, z = 427.084 }, rot = { x = 0.000, y = 93.642, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
	{ config_id = 28010, monster_id = 28030101, pos = { x = 264.177, y = 120.000, z = 232.427 }, rot = { x = 0.000, y = 154.440, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 102 },
	{ config_id = 28012, monster_id = 28030101, pos = { x = 363.061, y = 120.049, z = 389.517 }, rot = { x = 0.000, y = 183.060, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
	{ config_id = 28014, monster_id = 28010103, pos = { x = 375.282, y = 120.000, z = 389.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28015, monster_id = 28010103, pos = { x = 370.201, y = 120.000, z = 386.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28016, monster_id = 28010103, pos = { x = 356.467, y = 120.214, z = 394.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28017, monster_id = 28010103, pos = { x = 274.611, y = 120.174, z = 417.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28018, monster_id = 28010103, pos = { x = 283.936, y = 120.000, z = 414.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28019, monster_id = 28010103, pos = { x = 271.139, y = 120.000, z = 230.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28021, monster_id = 28020102, pos = { x = 204.402, y = 122.049, z = 392.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 102 },
	{ config_id = 28022, monster_id = 28020102, pos = { x = 278.396, y = 121.216, z = 170.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 102 },
	{ config_id = 28023, monster_id = 28020102, pos = { x = 722.758, y = 121.258, z = 220.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 102 },
	{ config_id = 28025, monster_id = 28030204, pos = { x = 162.214, y = 228.364, z = 61.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 102 },
	{ config_id = 28026, monster_id = 28030204, pos = { x = 764.052, y = 165.446, z = 404.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 102 },
	{ config_id = 28027, monster_id = 28010303, pos = { x = 253.930, y = 120.000, z = 231.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28028, monster_id = 28010303, pos = { x = 262.777, y = 120.183, z = 207.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28029, monster_id = 28010303, pos = { x = 359.526, y = 183.596, z = 415.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28030, monster_id = 28010303, pos = { x = 353.953, y = 183.762, z = 423.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 },
	{ config_id = 28031, monster_id = 28010303, pos = { x = 356.704, y = 185.164, z = 426.899 }, rot = { x = 0.000, y = 99.336, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 }
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
		{ config_id = 28002, monster_id = 28030101, pos = { x = 120.991, y = 120.147, z = 398.768 }, rot = { x = 0.000, y = 305.157, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
		{ config_id = 28003, monster_id = 28030101, pos = { x = 132.795, y = 123.909, z = 289.295 }, rot = { x = 0.000, y = 285.168, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 102 },
		{ config_id = 28009, monster_id = 28030101, pos = { x = 263.103, y = 120.000, z = 213.185 }, rot = { x = 0.000, y = 34.112, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 102 },
		{ config_id = 28011, monster_id = 28030101, pos = { x = 281.793, y = 120.032, z = 239.266 }, rot = { x = 0.000, y = 305.123, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 102 },
		{ config_id = 28020, monster_id = 28010103, pos = { x = 258.039, y = 120.000, z = 215.760 }, rot = { x = 0.000, y = 93.951, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 102 }
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
		monsters = { 28001, 28004, 28005, 28010, 28012, 28014, 28015, 28016, 28017, 28018, 28019, 28021, 28022, 28023, 28025, 28026, 28027, 28028, 28029, 28030, 28031 },
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