-- 基础信息
local base_info = {
	group_id = 133217163
}

-- Trigger变量
local defs = {
	operator_1 = 163007,
	operator_2 = 163008,
	chest = 163009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163001, monster_id = 20060301, pos = { x = -4244.515, y = 201.700, z = -3855.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163002, monster_id = 20060301, pos = { x = -4236.558, y = 200.342, z = -3850.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163003, monster_id = 20060301, pos = { x = -4244.878, y = 201.133, z = -3845.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163004, monster_id = 20010401, pos = { x = -4241.599, y = 200.372, z = -3850.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 163005, monster_id = 20060101, pos = { x = -4245.941, y = 201.817, z = -3850.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163006, monster_id = 20060101, pos = { x = -4238.653, y = 200.330, z = -3845.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163010, monster_id = 20060101, pos = { x = -4240.078, y = 201.191, z = -3854.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 163011, monster_id = 20011101, pos = { x = -4241.102, y = 201.034, z = -3850.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163007, gadget_id = 70360056, pos = { x = -4241.621, y = 201.098, z = -3850.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 163008, gadget_id = 70360057, pos = { x = -4241.393, y = 201.095, z = -3850.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 163009, gadget_id = 70210106, pos = { x = -4241.885, y = 201.145, z = -3850.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 14 }
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
		monsters = { 163001, 163002, 163003, 163004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 163005, 163006, 163010, 163011 },
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