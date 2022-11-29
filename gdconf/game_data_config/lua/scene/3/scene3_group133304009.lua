-- 基础信息
local base_info = {
	group_id = 133304009
}

-- Trigger变量
local defs = {
	operator_1 = 9007,
	operator_2 = 9008,
	chest = 9009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 26090401, pos = { x = -1700.035, y = 195.218, z = 3010.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 9002, monster_id = 26090101, pos = { x = -1695.752, y = 197.063, z = 3012.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 9003, monster_id = 26090101, pos = { x = -1700.673, y = 195.280, z = 3015.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 9004, monster_id = 26120101, pos = { x = -1696.741, y = 197.189, z = 3017.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 9005, monster_id = 26120201, pos = { x = -1700.017, y = 196.268, z = 3020.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 9006, monster_id = 26120201, pos = { x = -1693.823, y = 198.599, z = 3019.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9007, gadget_id = 70360056, pos = { x = -1698.974, y = 195.901, z = 3013.834 }, rot = { x = 357.828, y = 354.581, z = 23.127 }, level = 1, area_id = 21 },
	{ config_id = 9008, gadget_id = 70360057, pos = { x = -1698.989, y = 195.896, z = 3013.850 }, rot = { x = 355.883, y = 359.167, z = 22.875 }, level = 1, area_id = 21 },
	{ config_id = 9009, gadget_id = 70210106, pos = { x = -1699.477, y = 195.678, z = 3013.701 }, rot = { x = 355.883, y = 359.167, z = 22.875 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 21 }
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
		monsters = { 9001, 9002, 9003, 9004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 9005, 9006 },
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