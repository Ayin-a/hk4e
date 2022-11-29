-- 基础信息
local base_info = {
	group_id = 133217215
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
		{ config_id = 215001, monster_id = 25080301, pos = { x = -5097.916, y = 200.830, z = -4459.283 }, rot = { x = 0.000, y = 100.132, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 14 },
		{ config_id = 215002, monster_id = 25080301, pos = { x = -5090.725, y = 201.672, z = -4463.161 }, rot = { x = 0.000, y = 257.586, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 14 },
		{ config_id = 215003, monster_id = 25080301, pos = { x = -5097.234, y = 199.746, z = -4466.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 14 }
	},
	regions = {
		{ config_id = 215004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5095.311, y = 200.000, z = -4462.442 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1215004, name = "ENTER_REGION_215004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215004", action = "action_EVENT_ENTER_REGION_215004" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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