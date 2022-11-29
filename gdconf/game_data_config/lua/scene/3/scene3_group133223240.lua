-- 基础信息
local base_info = {
	group_id = 133223240
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240001, monster_id = 24020301, pos = { x = -6055.524, y = 197.678, z = -2891.139 }, rot = { x = 0.000, y = 30.021, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
	regions = {
		{ config_id = 240002, shape = RegionShape.SPHERE, radius = 3, pos = { x = -6054.911, y = 197.792, z = -2891.191 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1240002, name = "ENTER_REGION_240002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_240002", action = "action_EVENT_ENTER_REGION_240002" }
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
		monsters = { 240001 },
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