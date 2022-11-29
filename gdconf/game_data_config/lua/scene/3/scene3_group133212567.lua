-- 基础信息
local base_info = {
	group_id = 133212567
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567004, gadget_id = 70290009, pos = { x = -3852.424, y = 213.715, z = -2102.417 }, rot = { x = 0.000, y = 248.037, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 567005, gadget_id = 70500000, pos = { x = -3852.424, y = 213.715, z = -2102.417 }, rot = { x = 0.000, y = 248.037, z = 0.000 }, level = 27, point_type = 3005, owner = 567004, area_id = 13 },
	{ config_id = 567006, gadget_id = 70290009, pos = { x = -3854.648, y = 213.398, z = -2108.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 567007, gadget_id = 70500000, pos = { x = -3854.648, y = 213.398, z = -2108.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 567006, area_id = 13 },
	{ config_id = 567008, gadget_id = 70290009, pos = { x = -3861.050, y = 212.236, z = -2092.278 }, rot = { x = 0.000, y = 48.454, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 567009, gadget_id = 70500000, pos = { x = -3861.050, y = 212.236, z = -2092.278 }, rot = { x = 0.000, y = 48.454, z = 0.000 }, level = 27, point_type = 3005, owner = 567008, area_id = 13 }
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
		{ config_id = 567001, monster_id = 20011301, pos = { x = -3857.013, y = 213.476, z = -2100.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
		{ config_id = 567002, monster_id = 20011201, pos = { x = -3856.561, y = 213.884, z = -2105.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
		{ config_id = 567003, monster_id = 20011201, pos = { x = -3851.982, y = 213.673, z = -2104.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
	},
	regions = {
		{ config_id = 567010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3858.334, y = 213.525, z = -2101.130 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1567010, name = "ENTER_REGION_567010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567010", action = "action_EVENT_ENTER_REGION_567010" }
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
		monsters = { },
		gadgets = { 567004, 567005, 567006, 567007, 567008, 567009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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