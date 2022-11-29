-- 基础信息
local base_info = {
	group_id = 133212301
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
		{ config_id = 301001, monster_id = 25080301, pos = { x = -4193.473, y = 197.275, z = -2506.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 301002, monster_id = 25080201, pos = { x = -4209.028, y = 202.364, z = -2498.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 301003, monster_id = 25080201, pos = { x = -4205.584, y = 198.932, z = -2508.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 301005, monster_id = 25080301, pos = { x = -4200.035, y = 199.470, z = -2489.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	regions = {
		{ config_id = 301004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4200.536, y = 200.000, z = -2499.289 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1301004, name = "ENTER_REGION_301004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301004", action = "action_EVENT_ENTER_REGION_301004" }
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