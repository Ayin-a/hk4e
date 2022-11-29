-- 基础信息
local base_info = {
	group_id = 133217166
}

-- Trigger变量
local defs = {
	operator_1 = 166007,
	operator_2 = 166008,
	chest = 166009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 166001, monster_id = 23010201, pos = { x = -4347.842, y = 202.039, z = -3703.367 }, rot = { x = 0.000, y = 69.942, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 166002, monster_id = 23010101, pos = { x = -4336.476, y = 202.159, z = -3702.481 }, rot = { x = 0.000, y = 287.641, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 166005, monster_id = 23030101, pos = { x = -4347.226, y = 201.817, z = -3701.195 }, rot = { x = 0.000, y = 97.378, z = 0.000 }, level = 1, drop_tag = "召唤师", area_id = 14 },
	{ config_id = 166006, monster_id = 23040101, pos = { x = -4337.690, y = 201.943, z = -3702.097 }, rot = { x = 0.000, y = 271.982, z = 0.000 }, level = 1, drop_tag = "召唤师", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 166007, gadget_id = 70360056, pos = { x = -4342.591, y = 201.957, z = -3702.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 166008, gadget_id = 70360057, pos = { x = -4342.363, y = 201.955, z = -3703.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 166009, gadget_id = 70210106, pos = { x = -4342.855, y = 202.004, z = -3703.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 14 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 166001, 166002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 166005, 166006 },
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