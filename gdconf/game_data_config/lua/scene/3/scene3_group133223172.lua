-- 基础信息
local base_info = {
	group_id = 133223172
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 172001, monster_id = 24020301, pos = { x = -5886.750, y = 202.161, z = -2496.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 172002, monster_id = 24020301, pos = { x = -5882.277, y = 201.871, z = -2522.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		{ config_id = 172003, shape = RegionShape.SPHERE, radius = 16, pos = { x = -5885.396, y = 201.544, z = -2509.357 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1172003, name = "ENTER_REGION_172003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172003", action = "action_EVENT_ENTER_REGION_172003" }
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
		monsters = { 172001, 172002 },
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