-- 基础信息
local base_info = {
	group_id = 133213107
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
	{ config_id = 107006, gadget_id = 70211001, pos = { x = -3832.219, y = 254.227, z = -3145.093 }, rot = { x = 0.000, y = 178.414, z = 0.000 }, level = 26, chest_drop_id = 1050128, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 107007, gadget_id = 70211001, pos = { x = -3721.025, y = 288.775, z = -3160.460 }, rot = { x = 0.000, y = 353.291, z = 0.000 }, level = 26, chest_drop_id = 1050129, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 107008, gadget_id = 70211001, pos = { x = -3612.625, y = 228.004, z = -3198.417 }, rot = { x = 355.238, y = 65.848, z = 358.781 }, level = 26, chest_drop_id = 1050130, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
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
		gadgets = { 107006, 107007, 107008 },
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