-- 基础信息
local base_info = {
	group_id = 133212091
}

-- Trigger变量
local defs = {
	operator_1 = 91007,
	operator_2 = 91008,
	chest = 91009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 24020201, pos = { x = -4029.283, y = 263.952, z = -2220.201 }, rot = { x = 0.000, y = 329.024, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 },
	{ config_id = 91002, monster_id = 24020201, pos = { x = -4040.419, y = 264.527, z = -2223.067 }, rot = { x = 359.008, y = 355.265, z = 348.190 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 },
	{ config_id = 91003, monster_id = 24020201, pos = { x = -4021.619, y = 260.385, z = -2212.734 }, rot = { x = 1.416, y = 277.742, z = 1.324 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91007, gadget_id = 70360056, pos = { x = -4033.129, y = 260.911, z = -2210.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 91008, gadget_id = 70360057, pos = { x = -4033.129, y = 260.911, z = -2210.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 91009, gadget_id = 70210106, pos = { x = -4033.129, y = 260.911, z = -2210.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 13 }
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
		monsters = { 91001, 91002, 91003 },
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