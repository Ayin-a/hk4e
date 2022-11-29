-- 基础信息
local base_info = {
	group_id = 133217327
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
		{ config_id = 327002, monster_id = 20011101, pos = { x = -4413.046, y = 212.067, z = -4002.114 }, rot = { x = 359.282, y = 171.750, z = 4.706 }, level = 30, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 327004, monster_id = 20011001, pos = { x = -4415.639, y = 212.987, z = -4001.219 }, rot = { x = 0.000, y = 162.819, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 },
		{ config_id = 327005, monster_id = 20011001, pos = { x = -4411.240, y = 211.600, z = -3999.326 }, rot = { x = 0.000, y = 184.117, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 }
	},
	regions = {
		{ config_id = 327003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4418.279, y = 212.589, z = -4002.350 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1327003, name = "ENTER_REGION_327003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_327003", action = "action_EVENT_ENTER_REGION_327003" }
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