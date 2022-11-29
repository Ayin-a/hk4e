-- 基础信息
local base_info = {
	group_id = 247004034
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
	{ config_id = 34001, gadget_id = 70211101, pos = { x = -6.383, y = 0.120, z = 129.366 }, rot = { x = 0.000, y = 40.120, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 34002, gadget_id = 70211101, pos = { x = -84.746, y = 0.082, z = 189.687 }, rot = { x = 0.000, y = 312.430, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 34003, gadget_id = 70211101, pos = { x = 68.980, y = 0.141, z = 365.612 }, rot = { x = 0.000, y = 127.068, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 34004, gadget_id = 70211101, pos = { x = 8.436, y = 3.760, z = 213.434 }, rot = { x = 0.000, y = 230.995, z = 0.000 }, level = 1, chest_drop_id = 21600008, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 34001, 34002, 34003, 34004 },
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