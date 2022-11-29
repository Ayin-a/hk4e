-- 基础信息
local base_info = {
	group_id = 133003512
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
	{ config_id = 512008, gadget_id = 70310001, pos = { x = 2195.396, y = 213.336, z = -1465.842 }, rot = { x = 0.000, y = 167.460, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 512009, gadget_id = 70310001, pos = { x = 2197.456, y = 212.433, z = -1483.534 }, rot = { x = 0.000, y = 167.460, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 512010, gadget_id = 70220005, pos = { x = 2192.383, y = 213.826, z = -1462.824 }, rot = { x = 0.000, y = 350.782, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 512011, gadget_id = 70220005, pos = { x = 2196.360, y = 212.616, z = -1486.123 }, rot = { x = 0.000, y = 18.570, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 512012, gadget_id = 70310006, pos = { x = 2190.104, y = 212.552, z = -1480.237 }, rot = { x = 0.000, y = 296.489, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_value", value = 0, no_refresh = false }
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
		gadgets = { 512008, 512009, 512010, 512011, 512012 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================