-- 基础信息
local base_info = {
	group_id = 133002927
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
	{ config_id = 927003, npc_id = 11004, pos = { x = 1201.084, y = 374.349, z = -796.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	{ config_id = 927004, npc_id = 2003041, pos = { x = 1201.502, y = 375.600, z = -798.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 },
	{ config_id = 927005, npc_id = 2003042, pos = { x = 1195.064, y = 375.600, z = -791.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 927001, gadget_id = 70130004, pos = { x = 1201.060, y = 374.240, z = -796.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 927002, gadget_id = 70310006, pos = { x = 1201.000, y = 374.668, z = -787.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, state = GadgetState.GearStart, area_id = 10 }
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
		gadgets = { 927001, 927002 },
		regions = { },
		triggers = { },
		npcs = { 927003, 927004, 927005 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 927001 },
		regions = { },
		triggers = { },
		npcs = { 927003 },
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
		npcs = { 927004, 927005 },
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
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 927001 },
		regions = { },
		triggers = { },
		npcs = { 927003, 927004, 927005 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================