-- 基础信息
local base_info = {
	group_id = 133222202
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
		{ config_id = 202001, monster_id = 21010301, pos = { x = -5002.986, y = 203.075, z = -4791.107 }, rot = { x = 0.000, y = 167.684, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 202002, monster_id = 21010201, pos = { x = -5000.511, y = 203.054, z = -4792.013 }, rot = { x = 0.000, y = 282.690, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 202003, monster_id = 21010701, pos = { x = -5004.416, y = 202.980, z = -4794.004 }, rot = { x = 0.000, y = 23.431, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 202005, monster_id = 21010501, pos = { x = -4997.175, y = 208.358, z = -4786.347 }, rot = { x = 0.000, y = 213.607, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 14 }
	},
	regions = {
		{ config_id = 202004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5002.568, y = 202.933, z = -4792.270 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1202004, name = "ENTER_REGION_202004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202004", action = "action_EVENT_ENTER_REGION_202004" }
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