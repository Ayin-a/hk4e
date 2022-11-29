-- 基础信息
local base_info = {
	group_id = 133102380
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
	{ config_id = 380002, gadget_id = 70211001, pos = { x = 1467.883, y = 225.054, z = 612.245 }, rot = { x = 0.000, y = 270.321, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 380003, gadget_id = 70211001, pos = { x = 1628.731, y = 317.069, z = 427.409 }, rot = { x = 6.413, y = 223.837, z = 4.936 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 380004, gadget_id = 70211001, pos = { x = 1718.278, y = 246.930, z = 576.283 }, rot = { x = 0.000, y = 61.278, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 380005, gadget_id = 70211001, pos = { x = 1698.736, y = 247.868, z = 593.078 }, rot = { x = 0.000, y = 355.883, z = 359.983 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 380006, gadget_id = 70211001, pos = { x = 1727.896, y = 237.070, z = 691.361 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		gadgets = { 380002, 380003, 380004, 380005, 380006 },
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