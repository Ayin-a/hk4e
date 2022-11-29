-- 基础信息
local base_info = {
	group_id = 133102527
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
	{ config_id = 527001, gadget_id = 70211001, pos = { x = 1139.552, y = 214.138, z = 965.977 }, rot = { x = 0.000, y = 151.319, z = 0.000 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 527002, gadget_id = 70211001, pos = { x = 1147.480, y = 209.982, z = 946.291 }, rot = { x = 0.000, y = 243.656, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 527004, gadget_id = 70220013, pos = { x = 1144.291, y = 210.085, z = 944.469 }, rot = { x = 0.000, y = 26.995, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 527005, gadget_id = 70220013, pos = { x = 1146.269, y = 210.091, z = 943.750 }, rot = { x = 0.000, y = 64.991, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 }
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
		gadgets = { 527001, 527002, 527004, 527005 },
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