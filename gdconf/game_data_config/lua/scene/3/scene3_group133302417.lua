-- 基础信息
local base_info = {
	group_id = 133302417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 28030313, pos = { x = -699.458, y = 240.235, z = 2231.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417002, monster_id = 28030313, pos = { x = -567.444, y = 290.887, z = 2212.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417003, monster_id = 28030313, pos = { x = -748.938, y = 210.692, z = 2375.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417004, monster_id = 28030313, pos = { x = -737.763, y = 239.649, z = 2338.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417005, monster_id = 28030313, pos = { x = -712.834, y = 203.713, z = 2485.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417006, monster_id = 28030313, pos = { x = -483.625, y = 293.264, z = 2233.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417007, monster_id = 28030313, pos = { x = -391.561, y = 282.564, z = 2183.290 }, rot = { x = 0.000, y = 128.205, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417008, monster_id = 28030313, pos = { x = -628.173, y = 367.977, z = 2146.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417009, monster_id = 28020313, pos = { x = -715.771, y = 231.370, z = 2216.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 417010, monster_id = 28020313, pos = { x = -737.992, y = 233.520, z = 2193.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 417011, monster_id = 28030402, pos = { x = -555.324, y = 284.877, z = 2234.002 }, rot = { x = 0.000, y = 190.405, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 417012, monster_id = 28030402, pos = { x = -561.289, y = 284.125, z = 2234.585 }, rot = { x = 0.000, y = 186.877, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 417013, monster_id = 28020313, pos = { x = -756.383, y = 224.861, z = 2229.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
	{ config_id = 417014, monster_id = 28060201, pos = { x = -733.754, y = 200.954, z = 2282.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 3, area_id = 24 },
	{ config_id = 417015, monster_id = 28060601, pos = { x = -731.362, y = 235.031, z = 2177.967 }, rot = { x = 0.000, y = 141.098, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 417016, monster_id = 28030313, pos = { x = -712.034, y = 203.654, z = 2484.699 }, rot = { x = 0.000, y = 63.739, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 417017, monster_id = 28030202, pos = { x = -636.959, y = 381.392, z = 2095.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 417018, monster_id = 28040101, pos = { x = -335.102, y = 272.296, z = 2145.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 417019, monster_id = 28040101, pos = { x = -339.113, y = 272.595, z = 2146.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 }
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
		monsters = { 417001, 417002, 417003, 417004, 417005, 417006, 417007, 417008, 417009, 417010, 417011, 417012, 417013, 417014, 417015, 417016, 417017, 417018, 417019 },
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