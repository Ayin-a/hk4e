-- 基础信息
local base_info = {
	group_id = 133222172
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
		{ config_id = 172001, monster_id = 20060101, pos = { x = -5187.987, y = 198.532, z = -4286.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
		{ config_id = 172002, monster_id = 20060301, pos = { x = -5179.637, y = 200.369, z = -4291.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
	},
	regions = {
		{ config_id = 172004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5183.921, y = 200.000, z = -4288.477 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1172004, name = "ENTER_REGION_172004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172004", action = "action_EVENT_ENTER_REGION_172004" }
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