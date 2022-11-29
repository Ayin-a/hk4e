-- 基础信息
local base_info = {
	group_id = 247001046
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
	{ config_id = 46001, gadget_id = 70211101, pos = { x = -0.801, y = -2.968, z = 116.218 }, rot = { x = 0.000, y = 151.227, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 46002, gadget_id = 70211101, pos = { x = -50.609, y = 0.082, z = 234.642 }, rot = { x = 0.000, y = 26.879, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 46003, gadget_id = 70211101, pos = { x = -0.733, y = -9.806, z = 365.635 }, rot = { x = 0.000, y = 128.231, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 46004, gadget_id = 70211101, pos = { x = -2.819, y = 0.111, z = 583.219 }, rot = { x = 0.000, y = 310.100, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 46001, 46002, 46003, 46004 },
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