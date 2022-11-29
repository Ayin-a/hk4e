-- 基础信息
local base_info = {
	group_id = 133220476
}

-- Trigger变量
local defs = {
	operator_1 = 476007,
	operator_2 = 476008,
	chest = 476009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 476001, monster_id = 20011001, pos = { x = -2215.436, y = 201.190, z = -4398.173 }, rot = { x = 0.000, y = 278.908, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 476002, monster_id = 20011101, pos = { x = -2215.462, y = 200.321, z = -4398.123 }, rot = { x = 0.000, y = 269.968, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 11 },
	{ config_id = 476003, monster_id = 20011001, pos = { x = -2218.509, y = 200.000, z = -4402.783 }, rot = { x = 0.000, y = 312.015, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 476004, monster_id = 20011101, pos = { x = -2222.203, y = 200.000, z = -4404.387 }, rot = { x = 0.000, y = 348.360, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 11 },
	{ config_id = 476005, monster_id = 20011001, pos = { x = -2222.733, y = 201.440, z = -4404.458 }, rot = { x = 0.000, y = 357.370, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 476006, monster_id = 20011001, pos = { x = -2217.065, y = 200.000, z = -4393.100 }, rot = { x = 0.000, y = 234.702, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 476010, monster_id = 20011001, pos = { x = -2227.265, y = 200.000, z = -4402.525 }, rot = { x = 0.000, y = 49.095, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 476007, gadget_id = 70360056, pos = { x = -2225.536, y = 199.533, z = -4400.221 }, rot = { x = 0.000, y = 357.370, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 476008, gadget_id = 70360057, pos = { x = -2225.308, y = 199.533, z = -4400.277 }, rot = { x = 0.000, y = 357.370, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 476009, gadget_id = 70210106, pos = { x = -2225.800, y = 199.533, z = -4400.444 }, rot = { x = 0.000, y = 357.370, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 11 }
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
		monsters = { 476001, 476003, 476005, 476006, 476010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 476002, 476004 },
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