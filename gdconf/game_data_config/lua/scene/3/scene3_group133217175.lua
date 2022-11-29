-- 基础信息
local base_info = {
	group_id = 133217175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175004, monster_id = 28020503, pos = { x = -4700.712, y = 215.128, z = -3689.335 }, rot = { x = 0.000, y = 277.327, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 175005, monster_id = 28020506, pos = { x = -4710.584, y = 217.104, z = -3730.972 }, rot = { x = 0.000, y = 320.764, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 175006, monster_id = 28020504, pos = { x = -4757.869, y = 232.180, z = -3728.365 }, rot = { x = 0.000, y = 281.827, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175001, gadget_id = 70710110, pos = { x = -4711.432, y = 217.030, z = -3730.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 50, area_id = 14 },
	{ config_id = 175002, gadget_id = 70710110, pos = { x = -4701.672, y = 215.125, z = -3689.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 50, area_id = 14 },
	{ config_id = 175003, gadget_id = 70710110, pos = { x = -4758.654, y = 232.227, z = -3728.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 50, area_id = 14 }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 175004, 175005, 175006 },
		gadgets = { 175001, 175002, 175003 },
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