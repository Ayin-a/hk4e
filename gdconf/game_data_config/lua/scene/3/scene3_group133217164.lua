-- 基础信息
local base_info = {
	group_id = 133217164
}

-- Trigger变量
local defs = {
	operator_1 = 164007,
	operator_2 = 164008,
	chest = 164009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 21011601, pos = { x = -4286.567, y = 215.975, z = -3903.777 }, rot = { x = 0.000, y = 204.995, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 164002, monster_id = 21011601, pos = { x = -4283.227, y = 215.774, z = -3907.996 }, rot = { x = 0.000, y = 268.284, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 164003, monster_id = 21011601, pos = { x = -4291.778, y = 216.773, z = -3904.365 }, rot = { x = 0.000, y = 115.537, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 164004, monster_id = 21030601, pos = { x = -4290.735, y = 216.957, z = -3911.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 14 },
	{ config_id = 164005, monster_id = 22010401, pos = { x = -4293.088, y = 217.019, z = -3904.985 }, rot = { x = 0.000, y = 139.587, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 14 },
	{ config_id = 164006, monster_id = 22010401, pos = { x = -4286.256, y = 216.077, z = -3911.667 }, rot = { x = 0.000, y = 319.368, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164007, gadget_id = 70360056, pos = { x = -4289.422, y = 216.560, z = -3907.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 164008, gadget_id = 70360057, pos = { x = -4289.194, y = 216.524, z = -3908.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 164009, gadget_id = 70210106, pos = { x = -4289.687, y = 216.601, z = -3908.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 14 }
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
		monsters = { 164001, 164002, 164003, 164004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 164005, 164006 },
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