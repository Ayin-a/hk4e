-- 基础信息
local base_info = {
	group_id = 133217209
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
		{ config_id = 209001, monster_id = 23020101, pos = { x = -5040.464, y = 200.473, z = -3814.833 }, rot = { x = 0.000, y = 183.542, z = 0.000 }, level = 30, drop_tag = "债务处理人", area_id = 14 }
	},
	regions = {
		{ config_id = 209004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5040.474, y = 200.000, z = -3816.034 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1209004, name = "ENTER_REGION_209004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209004", action = "action_EVENT_ENTER_REGION_209004" }
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