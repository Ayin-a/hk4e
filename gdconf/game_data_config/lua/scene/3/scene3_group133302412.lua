-- 基础信息
local base_info = {
	group_id = 133302412
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 412001, monster_id = 20010101, pos = { x = -13.766, y = 267.950, z = 2892.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 412002, monster_id = 20010101, pos = { x = -7.544, y = 268.266, z = 2889.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 412003, monster_id = 20010101, pos = { x = -5.217, y = 267.269, z = 2894.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 412004, monster_id = 20010101, pos = { x = -9.652, y = 267.269, z = 2898.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 412006, monster_id = 20010201, pos = { x = -8.222, y = 267.214, z = 2892.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, pose_id = 201, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 412005, shape = RegionShape.SPHERE, radius = 30, pos = { x = -8.191, y = 267.598, z = 2893.121 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1412005, name = "ENTER_REGION_412005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
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
		monsters = { 412006 },
		gadgets = { },
		regions = { 412005 },
		triggers = { "ENTER_REGION_412005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 412001, 412002, 412003, 412004 },
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