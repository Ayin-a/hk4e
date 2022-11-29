-- 基础信息
local base_info = {
	group_id = 133213078
}

-- Trigger变量
local defs = {
	operator_1 = 78007,
	operator_2 = 78008,
	chest = 78009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 23010501, pos = { x = -3485.588, y = 199.459, z = -3154.638 }, rot = { x = 0.000, y = 42.710, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 12 },
	{ config_id = 78002, monster_id = 23010401, pos = { x = -3486.838, y = 200.000, z = -3151.034 }, rot = { x = 0.000, y = 109.991, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 12 },
	{ config_id = 78005, monster_id = 23020101, pos = { x = -3485.363, y = 200.000, z = -3149.122 }, rot = { x = 0.000, y = 114.129, z = 0.000 }, level = 1, drop_tag = "债务处理人", disableWander = true, area_id = 12 },
	{ config_id = 78006, monster_id = 23050101, pos = { x = -3481.380, y = 200.000, z = -3148.458 }, rot = { x = 0.000, y = 227.948, z = 0.000 }, level = 1, drop_tag = "藏镜侍女", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78003, gadget_id = 70220035, pos = { x = -3477.311, y = 199.627, z = -3147.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 78004, gadget_id = 70220035, pos = { x = -3483.156, y = 199.192, z = -3158.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 78007, gadget_id = 70360056, pos = { x = -3484.764, y = 199.443, z = -3153.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 78008, gadget_id = 70360057, pos = { x = -3484.536, y = 199.444, z = -3153.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 78009, gadget_id = 70210106, pos = { x = -3485.028, y = 199.428, z = -3153.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { 78003, 78004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 78001, 78002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 78005, 78006 },
		gadgets = { },
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

require "V2_0/BlossomGroup"