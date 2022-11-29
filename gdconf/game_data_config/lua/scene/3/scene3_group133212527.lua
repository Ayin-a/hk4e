-- 基础信息
local base_info = {
	group_id = 133212527
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
	{ config_id = 527001, gadget_id = 70210101, pos = { x = -3533.337, y = 202.061, z = -2038.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 527002, gadget_id = 70210101, pos = { x = -3532.396, y = 202.437, z = -2037.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 527003, gadget_id = 70210101, pos = { x = -3530.611, y = 202.448, z = -2038.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 527004, gadget_id = 70210101, pos = { x = -3534.311, y = 202.803, z = -2021.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 527005, gadget_id = 70210101, pos = { x = -3535.167, y = 201.969, z = -2022.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 527006, gadget_id = 70210101, pos = { x = -3533.688, y = 201.969, z = -2021.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 13 }
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
		gadgets = { 527001, 527002, 527003, 527004, 527005, 527006 },
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