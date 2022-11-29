-- 基础信息
local base_info = {
	group_id = 133217013
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
	{ config_id = 13001, gadget_id = 70500000, pos = { x = -4493.359, y = 221.129, z = -3924.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 13002, gadget_id = 70500000, pos = { x = -4439.237, y = 208.709, z = -3968.288 }, rot = { x = 0.000, y = 294.650, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 13003, gadget_id = 70500000, pos = { x = -4434.486, y = 200.982, z = -3765.573 }, rot = { x = 0.000, y = 190.947, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 13004, gadget_id = 70500000, pos = { x = -4697.172, y = 211.614, z = -4106.021 }, rot = { x = 0.000, y = 255.812, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 13005, gadget_id = 70500000, pos = { x = -4359.043, y = 282.533, z = -4056.553 }, rot = { x = 0.000, y = 309.925, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 13006, gadget_id = 70500000, pos = { x = -4356.935, y = 228.430, z = -4019.459 }, rot = { x = 0.000, y = 9.913, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 }
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
		{ config_id = 13007, monster_id = 22010301, pos = { x = -4213.069, y = 208.177, z = -3886.144 }, rot = { x = 0.000, y = 237.548, z = 0.000 }, level = 30, drop_tag = "深渊法师", pose_id = 9013, area_id = 14 }
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
		monsters = { },
		gadgets = { 13001, 13002, 13003, 13004, 13005, 13006 },
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