-- 基础信息
local base_info = {
	group_id = 247008026
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
	{ config_id = 26001, gadget_id = 70211101, pos = { x = 58.743, y = -2.161, z = 292.334 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26002, gadget_id = 70211101, pos = { x = 123.827, y = -1.950, z = 157.729 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26003, gadget_id = 70211101, pos = { x = 77.284, y = 1.130, z = 46.038 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 26004, gadget_id = 70211101, pos = { x = 246.980, y = 0.777, z = 274.972 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 26001, 26002, 26003, 26004 },
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