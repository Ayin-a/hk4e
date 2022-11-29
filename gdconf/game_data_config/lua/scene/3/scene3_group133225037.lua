-- 基础信息
local base_info = {
	group_id = 133225037
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
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 37001, monster_id = 22040201, pos = { x = -6341.787, y = 255.314, z = -2510.640 }, rot = { x = 0.000, y = 222.822, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 37002, monster_id = 22040201, pos = { x = -6346.188, y = 255.831, z = -2516.736 }, rot = { x = 0.000, y = 17.968, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 37003, monster_id = 22040201, pos = { x = -6345.637, y = 255.473, z = -2510.401 }, rot = { x = 0.000, y = 150.274, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
	},
	triggers = {
		{ config_id = 1037004, name = "VARIABLE_CHANGE_37004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37004", action = "action_EVENT_VARIABLE_CHANGE_37004" }
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