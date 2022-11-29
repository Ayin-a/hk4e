-- 基础信息
local base_info = {
	group_id = 133107010
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
	{ config_id = 10004, npc_id = 2003007, pos = { x = -618.000, y = 252.400, z = 395.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 10001, gadget_id = 71700075, pos = { x = -619.980, y = 251.040, z = 395.398 }, rot = { x = 0.000, y = 321.574, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 10002, gadget_id = 71700076, pos = { x = -619.980, y = 251.040, z = 395.398 }, rot = { x = 0.000, y = 321.574, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 10003, gadget_id = 70710044, pos = { x = -620.000, y = 251.490, z = 395.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 }
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
		gadgets = { 10003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 10001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 10002 },
		regions = { },
		triggers = { },
		npcs = { 10004 },
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
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================