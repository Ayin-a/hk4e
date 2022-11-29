-- 基础信息
local base_info = {
	group_id = 133304573
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
	{ config_id = 573003, npc_id = 12859, pos = { x = -1916.982, y = 203.100, z = 2505.066 }, rot = { x = 0.000, y = 110.331, z = 0.000 }, area_id = 21 },
	{ config_id = 573004, npc_id = 12857, pos = { x = -2007.457, y = 230.148, z = 2702.637 }, rot = { x = 0.000, y = 243.280, z = 0.000 }, area_id = 21 },
	{ config_id = 573005, npc_id = 12860, pos = { x = -1915.603, y = 203.100, z = 2505.406 }, rot = { x = 0.000, y = 187.632, z = 0.000 }, area_id = 21 },
	{ config_id = 573006, npc_id = 12861, pos = { x = -1914.636, y = 203.100, z = 2505.604 }, rot = { x = 0.000, y = 151.554, z = 0.000 }, area_id = 21 },
	{ config_id = 573007, npc_id = 30292, pos = { x = -1907.669, y = 203.100, z = 2506.870 }, rot = { x = 0.000, y = 127.499, z = 0.000 }, area_id = 21 },
	{ config_id = 573008, npc_id = 12859, pos = { x = -1915.638, y = 203.100, z = 2505.587 }, rot = { x = 0.000, y = 169.127, z = 0.000 }, area_id = 21 },
	{ config_id = 573009, npc_id = 12861, pos = { x = -1907.590, y = 203.100, z = 2506.703 }, rot = { x = 0.000, y = 138.147, z = 0.000 }, area_id = 21 },
	{ config_id = 573010, npc_id = 12859, pos = { x = -1914.653, y = 203.100, z = 2505.624 }, rot = { x = 0.000, y = 151.012, z = 0.000 }, area_id = 21 }
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
		npcs = { 573003 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第1次比赛结束到第2次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573004, 573005 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第2次比赛结束到底3次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573006 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第3次比赛结束到第4次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573007 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第4次比赛结束到第5次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573008 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第5次比赛结束到第6次比赛结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573009 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第6次比赛结束到活动结束,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 573010 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================