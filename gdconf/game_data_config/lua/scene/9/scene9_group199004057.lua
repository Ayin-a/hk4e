-- 基础信息
local base_info = {
	group_id = 199004057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57004, monster_id = 20010201, pos = { x = -363.884, y = 121.782, z = -701.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", pose_id = 201, area_id = 400 },
	{ config_id = 57005, monster_id = 20010101, pos = { x = -368.880, y = 122.316, z = -692.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", pose_id = 201, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		{ config_id = 57001, monster_id = 20010301, pos = { x = -363.701, y = 120.120, z = -777.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
		{ config_id = 57002, monster_id = 20010301, pos = { x = -360.195, y = 120.120, z = -784.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 400 },
		{ config_id = 57003, monster_id = 20010401, pos = { x = -363.962, y = 120.120, z = -781.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 }
	},
	regions = {
		{ config_id = 57007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -361.330, y = 120.120, z = -781.248 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1057007, name = "ENTER_REGION_57007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57007", action = "action_EVENT_ENTER_REGION_57007" }
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
		monsters = { 57004, 57005 },
		gadgets = { },
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