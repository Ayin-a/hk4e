-- 基础信息
local base_info = {
	group_id = 133304574
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
	{ config_id = 574003, npc_id = 30292, pos = { x = -2000.839, y = 201.898, z = 2413.006 }, rot = { x = 0.000, y = 89.612, z = 0.000 }, area_id = 21 },
	{ config_id = 574004, npc_id = 12858, pos = { x = -1999.027, y = 201.883, z = 2409.999 }, rot = { x = 0.000, y = 55.791, z = 0.000 }, area_id = 21 },
	{ config_id = 574005, npc_id = 12859, pos = { x = -2009.865, y = 201.390, z = 2422.405 }, rot = { x = 0.000, y = 276.660, z = 0.000 }, area_id = 21 },
	{ config_id = 574006, npc_id = 12860, pos = { x = -2005.221, y = 201.410, z = 2419.175 }, rot = { x = 0.000, y = 269.924, z = 0.000 }, area_id = 21 },
	{ config_id = 574007, npc_id = 12861, pos = { x = -2010.872, y = 201.391, z = 2424.165 }, rot = { x = 0.000, y = 215.170, z = 0.000 }, area_id = 21 },
	{ config_id = 574008, npc_id = 12859, pos = { x = -2009.932, y = 201.391, z = 2457.390 }, rot = { x = 0.000, y = 298.724, z = 0.000 }, area_id = 21 },
	{ config_id = 574009, npc_id = 12858, pos = { x = -1989.383, y = 201.391, z = 2427.195 }, rot = { x = 0.000, y = 15.057, z = 0.000 }, area_id = 21 }
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
		-- description = 活动开始到第1次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574003 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第1次比赛结束到第2次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574004 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第2次比赛结束到底3次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574005 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第3次比赛结束到第4次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574006 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第4次比赛结束到第5次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574007 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第5次比赛结束到第6次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574008 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第6次比赛结束到活动结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 574009 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================