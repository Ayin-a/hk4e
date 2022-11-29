-- 基础信息
local base_info = {
	group_id = 133303574
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
		{ config_id = 574001, monster_id = 21011001, pos = { x = -2025.152, y = 503.950, z = 3604.665 }, rot = { x = 0.000, y = 116.218, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 23 },
		{ config_id = 574002, monster_id = 21030401, pos = { x = -2017.025, y = 509.520, z = 3596.529 }, rot = { x = 0.000, y = 2.639, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 23 }
	},
	regions = {
		{ config_id = 574004, shape = RegionShape.SPHERE, radius = 1, pos = { x = -2016.057, y = 515.859, z = 3599.906 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1574004, name = "ENTER_REGION_574004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_574004", action = "action_EVENT_ENTER_REGION_574004" }
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