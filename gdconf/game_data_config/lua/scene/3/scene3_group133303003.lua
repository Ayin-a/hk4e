-- 基础信息
local base_info = {
	group_id = 133303003
}

-- Trigger变量
local defs = {
	operator_1 = 3007,
	operator_2 = 3008,
	chest = 3009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 26090201, pos = { x = -1317.767, y = 167.570, z = 3352.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 3002, monster_id = 26090201, pos = { x = -1313.480, y = 167.902, z = 3354.807 }, rot = { x = 0.000, y = 310.144, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 3003, monster_id = 26090101, pos = { x = -1319.000, y = 166.764, z = 3357.202 }, rot = { x = 0.000, y = 104.119, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 3004, monster_id = 26090101, pos = { x = -1314.470, y = 166.998, z = 3359.218 }, rot = { x = 0.000, y = 213.868, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 3005, monster_id = 26120101, pos = { x = -1309.530, y = 169.106, z = 3362.738 }, rot = { x = 0.000, y = 224.158, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3007, gadget_id = 70360056, pos = { x = -1316.664, y = 167.106, z = 3355.947 }, rot = { x = 12.196, y = 0.951, z = 8.881 }, level = 1, area_id = 23 },
	{ config_id = 3008, gadget_id = 70360057, pos = { x = -1316.433, y = 167.154, z = 3355.889 }, rot = { x = 12.196, y = 0.951, z = 8.881 }, level = 1, area_id = 23 },
	{ config_id = 3009, gadget_id = 70210106, pos = { x = -1316.926, y = 167.113, z = 3355.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 3001, 3002, 3003, 3004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3005 },
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