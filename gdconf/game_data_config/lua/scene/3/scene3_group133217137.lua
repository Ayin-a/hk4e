-- 基础信息
local base_info = {
	group_id = 133217137
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
		{ config_id = 137001, monster_id = 20011401, pos = { x = -4388.042, y = 163.298, z = -3784.701 }, rot = { x = 0.000, y = 182.450, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
		{ config_id = 137002, monster_id = 20011401, pos = { x = -4385.291, y = 163.222, z = -3788.846 }, rot = { x = 0.000, y = 302.442, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
		{ config_id = 137003, monster_id = 20011401, pos = { x = -4391.298, y = 162.514, z = -3788.012 }, rot = { x = 0.000, y = 70.690, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 },
		{ config_id = 137005, monster_id = 20011501, pos = { x = -4388.205, y = 163.079, z = -3787.469 }, rot = { x = 0.000, y = 210.063, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
	},
	regions = {
		{ config_id = 137004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4388.213, y = 163.035, z = -3787.762 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1137004, name = "ENTER_REGION_137004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_137004", action = "action_EVENT_ENTER_REGION_137004" }
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