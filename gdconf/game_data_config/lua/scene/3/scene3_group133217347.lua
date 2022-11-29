-- 基础信息
local base_info = {
	group_id = 133217347
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
		{ config_id = 347001, monster_id = 20011101, pos = { x = -5104.991, y = 198.136, z = -4457.762 }, rot = { x = 0.000, y = 119.491, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 347002, monster_id = 20011101, pos = { x = -5095.632, y = 200.000, z = -4464.327 }, rot = { x = 0.000, y = 274.181, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 347003, monster_id = 20011101, pos = { x = -5104.259, y = 197.391, z = -4470.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 347005, monster_id = 20010901, pos = { x = -5101.710, y = 198.494, z = -4463.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
	},
	regions = {
		{ config_id = 347004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -5100.353, y = 198.908, z = -4464.061 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1347004, name = "ENTER_REGION_347004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_347004", action = "action_EVENT_ENTER_REGION_347004" }
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