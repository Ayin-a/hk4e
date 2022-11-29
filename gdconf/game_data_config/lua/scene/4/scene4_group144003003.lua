-- 基础信息
local base_info = {
	group_id = 144003003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 28030101, pos = { x = -291.310, y = 122.516, z = 429.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 3002, monster_id = 28030101, pos = { x = -292.179, y = 123.375, z = 426.183 }, rot = { x = 0.000, y = 286.615, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 3003, monster_id = 28030204, pos = { x = -135.794, y = 150.270, z = 539.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 103 },
	{ config_id = 3004, monster_id = 28030101, pos = { x = -737.831, y = 123.777, z = 411.751 }, rot = { x = 0.000, y = 229.089, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 3005, monster_id = 28030101, pos = { x = -733.159, y = 122.951, z = 423.735 }, rot = { x = 0.000, y = 320.721, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 3006, monster_id = 28030101, pos = { x = -718.995, y = 127.280, z = 392.760 }, rot = { x = 0.000, y = 229.089, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 103 },
	{ config_id = 3007, monster_id = 28040103, pos = { x = -726.809, y = 90.285, z = 406.791 }, rot = { x = 0.000, y = 155.287, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 103 },
	{ config_id = 3008, monster_id = 28040103, pos = { x = -726.315, y = 90.285, z = 407.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 103 },
	{ config_id = 3009, monster_id = 28010202, pos = { x = -725.448, y = 101.112, z = 417.317 }, rot = { x = 0.000, y = 301.659, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 3010, monster_id = 28010203, pos = { x = -731.125, y = 103.030, z = 407.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 3011, monster_id = 28010203, pos = { x = -730.142, y = 103.030, z = 408.406 }, rot = { x = 0.000, y = 257.259, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 },
	{ config_id = 3012, monster_id = 28010203, pos = { x = -719.551, y = 120.700, z = 400.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 103 }
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
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012 },
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