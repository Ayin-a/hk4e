-- 基础信息
local base_info = {
	group_id = 133303625
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 625002, monster_id = 28020314, pos = { x = -1691.256, y = 202.967, z = 3468.346 }, rot = { x = 0.000, y = 245.041, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 }
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
		{ config_id = 625001, monster_id = 28060201, pos = { x = -1711.064, y = 231.811, z = 3488.216 }, rot = { x = 0.000, y = 152.366, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 5, area_id = 23 },
		{ config_id = 625003, monster_id = 28060201, pos = { x = -1750.715, y = 234.382, z = 3471.156 }, rot = { x = 0.000, y = 145.776, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 4, area_id = 23 }
	},
	regions = {
		{ config_id = 625004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1711.196, y = 213.427, z = 3485.795 }, area_id = 23 },
		{ config_id = 625005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1747.759, y = 226.413, z = 3468.927 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1625004, name = "ENTER_REGION_625004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_625004", action = "action_EVENT_ENTER_REGION_625004" },
		{ config_id = 1625005, name = "ENTER_REGION_625005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		monsters = { 625002 },
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