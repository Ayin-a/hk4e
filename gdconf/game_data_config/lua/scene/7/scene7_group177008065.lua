-- 基础信息
local base_info = {
	group_id = 177008065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 22010104, pos = { x = -213.329, y = 227.191, z = 320.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, affix = { 1040 }, pose_id = 9013, area_id = 210 },
	{ config_id = 65004, monster_id = 21010902, pos = { x = -216.887, y = 228.136, z = 325.357 }, rot = { x = 0.000, y = 110.038, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9003, area_id = 210 },
	{ config_id = 65009, monster_id = 21010902, pos = { x = -209.066, y = 228.893, z = 324.500 }, rot = { x = 0.000, y = 252.210, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65006, gadget_id = 70220014, pos = { x = -216.174, y = 229.928, z = 330.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65007, gadget_id = 70220014, pos = { x = -217.178, y = 229.486, z = 329.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65008, gadget_id = 70220014, pos = { x = -215.949, y = 229.580, z = 329.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65010, gadget_id = 70310006, pos = { x = -215.372, y = 228.667, z = 326.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65011, gadget_id = 70300089, pos = { x = -215.741, y = 227.361, z = 322.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65012, gadget_id = 70300089, pos = { x = -210.697, y = 227.860, z = 321.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 65013, gadget_id = 70300089, pos = { x = -210.201, y = 229.203, z = 326.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 65005, monster_id = 21010902, pos = { x = -212.357, y = 229.383, z = 327.718 }, rot = { x = 0.000, y = 173.952, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9003, area_id = 210 }
	},
	triggers = {
		{ config_id = 1065003, name = "ANY_MONSTER_DIE_65003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_65003", action = "action_EVENT_ANY_MONSTER_DIE_65003" }
	}
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
		monsters = { 65001, 65004, 65009 },
		gadgets = { 65006, 65007, 65008, 65010, 65011, 65012, 65013 },
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