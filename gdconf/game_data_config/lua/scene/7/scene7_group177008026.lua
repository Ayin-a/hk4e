-- 基础信息
local base_info = {
	group_id = 177008026
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
		{ config_id = 26001, monster_id = 25030201, pos = { x = -187.619, y = 229.450, z = 319.160 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 210 },
		{ config_id = 26002, monster_id = 25010701, pos = { x = -186.130, y = 229.468, z = 317.935 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 210 },
		{ config_id = 26003, monster_id = 25010701, pos = { x = -189.101, y = 229.289, z = 318.027 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 210 }
	},
	regions = {
		{ config_id = 26004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -187.629, y = 229.289, z = 317.958 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1026004, name = "ENTER_REGION_26004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26004", action = "action_EVENT_ENTER_REGION_26004" }
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