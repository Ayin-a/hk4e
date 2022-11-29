-- 基础信息
local base_info = {
	group_id = 133103907
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
	{ config_id = 907001, npc_id = 10260, pos = { x = 734.414, y = 385.228, z = 1910.924 }, rot = { x = 0.000, y = 176.636, z = 0.000 }, area_id = 6 },
	{ config_id = 907002, npc_id = 10260, pos = { x = 764.414, y = 313.120, z = 1769.485 }, rot = { x = 0.000, y = 221.234, z = 0.000 }, area_id = 6 },
	{ config_id = 907003, npc_id = 10260, pos = { x = 759.329, y = 369.770, z = 1870.427 }, rot = { x = 0.000, y = 305.888, z = 0.000 }, area_id = 6 },
	{ config_id = 907004, npc_id = 10260, pos = { x = 804.522, y = 329.158, z = 1828.241 }, rot = { x = 0.000, y = 287.437, z = 0.000 }, area_id = 6 },
	{ config_id = 907005, npc_id = 10260, pos = { x = 746.885, y = 318.778, z = 1792.736 }, rot = { x = 0.000, y = 55.012, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
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
		gadgets = { },
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
		npcs = { 907001 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 907002 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 907003 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 907004 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 907005 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================