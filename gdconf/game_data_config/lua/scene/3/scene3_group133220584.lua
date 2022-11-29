-- 基础信息
local base_info = {
	group_id = 133220584
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 584001, monster_id = 28030306, pos = { x = -3331.986, y = 203.867, z = -4258.198 }, rot = { x = 0.000, y = 262.481, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 },
	{ config_id = 584002, monster_id = 28030306, pos = { x = -3336.839, y = 203.718, z = -4252.952 }, rot = { x = 0.000, y = 209.470, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 11 },
	{ config_id = 584003, monster_id = 28030306, pos = { x = -3333.466, y = 203.489, z = -4254.311 }, rot = { x = 0.000, y = 214.942, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 11 },
	{ config_id = 584004, monster_id = 28030102, pos = { x = -3339.890, y = 205.875, z = -4264.925 }, rot = { x = 0.000, y = 28.615, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 11 },
	{ config_id = 584005, monster_id = 28030102, pos = { x = -3335.996, y = 205.320, z = -4265.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 11 },
	{ config_id = 584006, monster_id = 28030102, pos = { x = -3405.428, y = 200.621, z = -4243.806 }, rot = { x = 0.000, y = 28.615, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 11 },
	{ config_id = 584007, monster_id = 28030102, pos = { x = -3402.661, y = 200.683, z = -4242.471 }, rot = { x = 0.000, y = 284.335, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 11 },
	{ config_id = 584008, monster_id = 28030102, pos = { x = -3371.809, y = 200.229, z = -4287.227 }, rot = { x = 0.000, y = 284.335, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 584015, gadget_id = 70210105, pos = { x = -3367.986, y = 200.000, z = -4239.050 }, rot = { x = 0.000, y = 281.299, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 584016, gadget_id = 70210105, pos = { x = -3388.041, y = 200.000, z = -4267.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
		monsters = { 584001, 584002, 584003, 584004, 584005, 584006, 584007, 584008 },
		gadgets = { 584015, 584016 },
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