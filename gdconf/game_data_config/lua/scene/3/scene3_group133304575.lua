-- 基础信息
local base_info = {
	group_id = 133304575
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
	{ config_id = 575003, npc_id = 12858, pos = { x = -2010.487, y = 229.609, z = 2697.393 }, rot = { x = 0.000, y = 301.369, z = 0.000 }, area_id = 21 },
	{ config_id = 575004, npc_id = 12859, pos = { x = -2015.112, y = 229.007, z = 2693.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 },
	{ config_id = 575005, npc_id = 12860, pos = { x = -2023.308, y = 227.609, z = 2697.514 }, rot = { x = 0.000, y = 55.225, z = 0.000 }, area_id = 21 },
	{ config_id = 575006, npc_id = 12861, pos = { x = -2017.982, y = 228.342, z = 2696.948 }, rot = { x = 0.000, y = 29.508, z = 0.000 }, area_id = 21 },
	{ config_id = 575007, npc_id = 12858, pos = { x = -2014.422, y = 228.893, z = 2696.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 },
	{ config_id = 575008, npc_id = 12860, pos = { x = -2010.644, y = 229.277, z = 2700.714 }, rot = { x = 0.000, y = 265.880, z = 0.000 }, area_id = 21 },
	{ config_id = 575009, npc_id = 12861, pos = { x = -2016.077, y = 228.931, z = 2691.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		npcs = { 575003 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第1次比赛结束到第2次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575004 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第2次比赛结束到底3次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575005 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第3次比赛结束到第4次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575006 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第4次比赛结束到第5次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575007 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第5次比赛结束到第6次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575008 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第6次比赛结束到活动结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 575009 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================