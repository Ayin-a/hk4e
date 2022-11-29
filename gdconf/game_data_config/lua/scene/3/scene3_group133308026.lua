-- 基础信息
local base_info = {
	group_id = 133308026
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
	{ config_id = 26001, gadget_id = 70500000, pos = { x = -1429.831, y = 118.603, z = 4767.972 }, rot = { x = 0.000, y = 25.779, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 26002, gadget_id = 70500000, pos = { x = -1424.144, y = 16.117, z = 4707.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 26004, gadget_id = 70500000, pos = { x = -1496.800, y = 263.525, z = 4404.067 }, rot = { x = 0.000, y = 11.521, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 26005, gadget_id = 70500000, pos = { x = -1418.992, y = 23.013, z = 4753.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 },
	{ config_id = 26007, gadget_id = 70500000, pos = { x = -1635.330, y = 32.642, z = 4527.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 }
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
		{ config_id = 26003, gadget_id = 70500000, pos = { x = -1456.325, y = 110.026, z = 4393.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 26 }
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
		gadgets = { 26001, 26002, 26004, 26005, 26007 },
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