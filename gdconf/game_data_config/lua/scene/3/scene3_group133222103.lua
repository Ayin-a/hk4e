-- 基础信息
local base_info = {
	group_id = 133222103
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
	{ config_id = 103001, gadget_id = 70500000, pos = { x = -4739.556, y = 234.991, z = -3708.572 }, rot = { x = 0.000, y = 303.932, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 103002, gadget_id = 70500000, pos = { x = -4739.256, y = 206.142, z = -3766.523 }, rot = { x = 0.000, y = 217.156, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 },
	{ config_id = 103004, gadget_id = 70500000, pos = { x = -4672.968, y = 217.292, z = -3727.155 }, rot = { x = 0.000, y = 296.673, z = 0.000 }, level = 30, point_type = 4005, isOneoff = true, persistent = true, explore = { name = "gather", exp = 3 }, area_id = 14 }
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
	gadgets = {
		{ config_id = 103003, gadget_id = 70900387, pos = { x = -4739.993, y = 202.811, z = -3767.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { 103001, 103002, 103004 },
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