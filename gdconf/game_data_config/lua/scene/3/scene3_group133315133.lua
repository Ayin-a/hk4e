-- 基础信息
local base_info = {
	group_id = 133315133
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
	{ config_id = 133002, gadget_id = 70500000, pos = { x = 338.679, y = 285.770, z = 2272.469 }, rot = { x = 0.000, y = 212.785, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133003, gadget_id = 70500000, pos = { x = 86.417, y = 224.594, z = 2989.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133004, gadget_id = 70500000, pos = { x = 95.578, y = 244.175, z = 2654.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133005, gadget_id = 70500000, pos = { x = 164.071, y = 429.323, z = 2135.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133006, gadget_id = 70500000, pos = { x = -300.159, y = 165.249, z = 2513.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 24 },
	{ config_id = 133007, gadget_id = 70500000, pos = { x = -748.763, y = 156.943, z = 2283.182 }, rot = { x = 0.000, y = 325.994, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 24 },
	{ config_id = 133008, gadget_id = 70500000, pos = { x = 208.276, y = 263.018, z = 2224.716 }, rot = { x = 0.000, y = 310.960, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133009, gadget_id = 70500000, pos = { x = 407.216, y = 264.668, z = 2373.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133010, gadget_id = 70500000, pos = { x = 37.721, y = 261.441, z = 2250.724 }, rot = { x = 0.000, y = 64.727, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 133011, gadget_id = 70500000, pos = { x = 445.240, y = 248.462, z = 2238.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 }
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
		{ config_id = 133001, gadget_id = 70500000, pos = { x = 310.858, y = 422.189, z = 2460.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 20 }
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
		gadgets = { 133002, 133003, 133004, 133005, 133006, 133007, 133008, 133009, 133010, 133011 },
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