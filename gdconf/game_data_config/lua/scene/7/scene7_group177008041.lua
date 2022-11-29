-- 基础信息
local base_info = {
	group_id = 177008041
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
		{ config_id = 41001, monster_id = 20060501, pos = { x = -475.000, y = 217.705, z = 356.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", affix = { 1041 }, pose_id = 101, area_id = 210 },
		{ config_id = 41002, monster_id = 20060501, pos = { x = -471.074, y = 217.330, z = 355.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", affix = { 1041 }, pose_id = 101, area_id = 210 },
		{ config_id = 41003, monster_id = 20060601, pos = { x = -473.587, y = 217.704, z = 352.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", affix = { 1041 }, pose_id = 101, area_id = 210 }
	},
	regions = {
		{ config_id = 41005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -473.451, y = 218.551, z = 354.479 }, area_id = 210 }
	},
	triggers = {
		{ config_id = 1041005, name = "ENTER_REGION_41005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_41005", action = "action_EVENT_ENTER_REGION_41005" },
		{ config_id = 1041006, name = "ANY_MONSTER_DIE_41006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41006", action = "action_EVENT_ANY_MONSTER_DIE_41006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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