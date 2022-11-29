-- 基础信息
local base_info = {
	group_id = 133301265
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265002, monster_id = 26090701, pos = { x = -585.073, y = 137.456, z = 3778.724 }, rot = { x = 0.000, y = 27.458, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 },
	{ config_id = 265003, monster_id = 26090701, pos = { x = -591.383, y = 135.777, z = 3786.279 }, rot = { x = 0.000, y = 339.604, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 265001, gadget_id = 70310479, pos = { x = -584.111, y = 137.974, z = 3780.702 }, rot = { x = 0.000, y = 307.888, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 265005, gadget_id = 70310479, pos = { x = -592.301, y = 135.272, z = 3788.336 }, rot = { x = 1.404, y = 297.135, z = 340.401 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 265007, gadget_id = 70310191, pos = { x = -647.596, y = 128.289, z = 3849.665 }, rot = { x = 354.581, y = 351.797, z = 5.352 }, level = 33, area_id = 25 }
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
		{ config_id = 265006, monster_id = 26090701, pos = { x = -585.666, y = 136.849, z = 3780.577 }, rot = { x = 0.000, y = 61.206, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 25 }
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
		monsters = { 265002, 265003 },
		gadgets = { 265001, 265005, 265007 },
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

require "V3_0/DeathFieldStandard"