-- 基础信息
local base_info = {
	group_id = 133102374
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
	{ config_id = 374001, gadget_id = 70211001, pos = { x = 1499.354, y = 218.506, z = 529.821 }, rot = { x = 357.121, y = 0.263, z = 2.917 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 374002, gadget_id = 70211101, pos = { x = 1485.387, y = 231.722, z = 535.205 }, rot = { x = 0.000, y = 269.258, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 374003, gadget_id = 70310001, pos = { x = 1481.720, y = 220.058, z = 505.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 374004, gadget_id = 70211101, pos = { x = 1413.226, y = 224.178, z = 585.677 }, rot = { x = 347.622, y = 95.229, z = 6.273 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 374005, gadget_id = 70211101, pos = { x = 1431.129, y = 245.209, z = 588.468 }, rot = { x = 2.610, y = 123.601, z = 355.960 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		gadgets = { 374001, 374002, 374003, 374004, 374005 },
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