-- 基础信息
local base_info = {
	group_id = 133303002
}

-- Trigger变量
local defs = {
	operator_1 = 2007,
	operator_2 = 2008,
	chest = 2009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 26090101, pos = { x = -1231.774, y = 202.872, z = 3380.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 2002, monster_id = 26090101, pos = { x = -1227.849, y = 202.748, z = 3381.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 2003, monster_id = 26090801, pos = { x = -1231.742, y = 202.751, z = 3384.380 }, rot = { x = 0.000, y = 328.395, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 2004, monster_id = 26090101, pos = { x = -1225.650, y = 202.111, z = 3385.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 2005, monster_id = 26120201, pos = { x = -1230.984, y = 203.185, z = 3387.612 }, rot = { x = 0.000, y = 158.483, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2007, gadget_id = 70360056, pos = { x = -1231.030, y = 202.674, z = 3382.334 }, rot = { x = 359.182, y = 0.027, z = 356.207 }, level = 1, area_id = 23 },
	{ config_id = 2008, gadget_id = 70360057, pos = { x = -1232.263, y = 202.750, z = 3381.909 }, rot = { x = 359.182, y = 0.027, z = 356.207 }, level = 1, area_id = 23 },
	{ config_id = 2009, gadget_id = 70210106, pos = { x = -1231.254, y = 202.558, z = 3381.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2005 },
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