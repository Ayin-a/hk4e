-- 基础信息
local base_info = {
	group_id = 133212082
}

-- Trigger变量
local defs = {
	operator_1 = 82007,
	operator_2 = 82008,
	chest = 82009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 24020201, pos = { x = -4181.185, y = 224.422, z = -2284.803 }, rot = { x = 0.000, y = 56.003, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 },
	{ config_id = 82002, monster_id = 24020201, pos = { x = -4181.024, y = 224.358, z = -2273.960 }, rot = { x = 0.000, y = 119.316, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 },
	{ config_id = 82003, monster_id = 24020201, pos = { x = -4173.349, y = 223.186, z = -2268.693 }, rot = { x = 0.000, y = 158.999, z = 0.000 }, level = 1, drop_tag = "拟生机关", pose_id = 100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82007, gadget_id = 70360056, pos = { x = -4172.210, y = 223.407, z = -2280.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 82008, gadget_id = 70360057, pos = { x = -4171.983, y = 223.405, z = -2280.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 82009, gadget_id = 70210106, pos = { x = -4172.664, y = 223.193, z = -2280.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 13 }
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
		monsters = { 82001, 82002, 82003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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