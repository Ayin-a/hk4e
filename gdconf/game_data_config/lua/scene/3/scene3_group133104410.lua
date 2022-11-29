-- 基础信息
local base_info = {
	group_id = 133104410
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410001, monster_id = 22010101, pos = { x = 497.532, y = 196.737, z = 299.532 }, rot = { x = 354.690, y = 162.859, z = 9.931 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 410002, monster_id = 21011001, pos = { x = 495.745, y = 197.408, z = 296.804 }, rot = { x = 10.699, y = 116.507, z = 13.875 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 410003, monster_id = 21010201, pos = { x = 501.021, y = 197.267, z = 295.183 }, rot = { x = 13.966, y = 264.130, z = 358.579 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 410004, monster_id = 21010201, pos = { x = 497.853, y = 196.875, z = 293.042 }, rot = { x = 355.467, y = 8.202, z = 347.812 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 410005, monster_id = 21011001, pos = { x = 500.033, y = 196.780, z = 299.957 }, rot = { x = 2.351, y = 210.685, z = 339.441 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410006, gadget_id = 70300107, pos = { x = 498.517, y = 197.003, z = 295.700 }, rot = { x = 358.264, y = 345.846, z = 0.438 }, level = 1, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 410007, gadget_id = 70220013, pos = { x = 498.403, y = 196.187, z = 305.205 }, rot = { x = 353.721, y = 90.796, z = 2.581 }, level = 1, area_id = 9 },
	{ config_id = 410008, gadget_id = 70220013, pos = { x = 500.998, y = 196.703, z = 304.551 }, rot = { x = 5.721, y = 355.177, z = 14.405 }, level = 1, area_id = 9 }
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
		-- description = suite_1,
		monsters = { 410001, 410002, 410003, 410004, 410005 },
		gadgets = { 410006, 410007, 410008 },
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