-- 基础信息
local base_info = {
	group_id = 133314020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20001, gadget_id = 70290624, pos = { x = -510.698, y = 194.727, z = 4211.259 }, rot = { x = 350.347, y = 220.203, z = 330.521 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 20002, gadget_id = 70290624, pos = { x = -509.310, y = 203.516, z = 4197.042 }, rot = { x = 350.519, y = 224.880, z = 329.076 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 20003, gadget_id = 70290624, pos = { x = -523.253, y = 203.622, z = 4184.054 }, rot = { x = 345.219, y = 192.235, z = 331.872 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 20004, gadget_id = 70290625, pos = { x = -496.826, y = 209.654, z = 4191.744 }, rot = { x = 346.114, y = 211.195, z = 334.254 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 20005, gadget_id = 70290625, pos = { x = -487.624, y = 198.541, z = 4219.190 }, rot = { x = 7.579, y = 250.516, z = 345.868 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 },
	{ config_id = 20006, gadget_id = 70290624, pos = { x = -478.454, y = 206.655, z = 4211.118 }, rot = { x = 7.348, y = 248.854, z = 328.432 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 32 }
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
		monsters = { },
		gadgets = { 20001, 20002, 20003, 20004, 20005, 20006 },
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