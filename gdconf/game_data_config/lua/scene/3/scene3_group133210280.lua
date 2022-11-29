-- 基础信息
local base_info = {
	group_id = 133210280
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
		{ config_id = 280001, monster_id = 20060301, pos = { x = -3696.444, y = 112.320, z = -802.670 }, rot = { x = 0.000, y = 51.468, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
		{ config_id = 280002, monster_id = 20060301, pos = { x = -3691.018, y = 112.371, z = -804.335 }, rot = { x = 0.000, y = 348.300, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
		{ config_id = 280003, monster_id = 20060101, pos = { x = -3695.761, y = 112.320, z = -808.132 }, rot = { x = 0.000, y = 24.882, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
	},
	regions = {
		{ config_id = 280004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3692.641, y = 112.488, z = -798.904 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1280004, name = "ENTER_REGION_280004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280004", action = "action_EVENT_ENTER_REGION_280004" }
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