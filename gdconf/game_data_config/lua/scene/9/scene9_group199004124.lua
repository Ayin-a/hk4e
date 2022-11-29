-- 基础信息
local base_info = {
	group_id = 199004124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 21030301, pos = { x = -375.514, y = 224.081, z = -606.879 }, rot = { x = 0.000, y = 137.151, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 124002, monster_id = 21010701, pos = { x = -371.457, y = 222.316, z = -604.708 }, rot = { x = 0.000, y = 195.194, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 400 },
	{ config_id = 124003, monster_id = 21010301, pos = { x = -371.748, y = 225.012, z = -616.464 }, rot = { x = 0.000, y = 359.752, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 400 },
	{ config_id = 124007, monster_id = 21010401, pos = { x = -369.579, y = 224.303, z = -612.973 }, rot = { x = 0.000, y = 283.397, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124004, gadget_id = 70310001, pos = { x = -372.783, y = 222.621, z = -606.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 124008, gadget_id = 70220013, pos = { x = -375.605, y = 222.461, z = -606.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 124009, gadget_id = 70210101, pos = { x = -360.680, y = 224.696, z = -612.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜遗物群岛", persistent = true, area_id = 400 }
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
		{ config_id = 124005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -378.249, y = 223.588, z = -611.686 }, area_id = 400 }
	},
	triggers = {
		{ config_id = 1124005, name = "ENTER_REGION_124005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_124005", action = "action_EVENT_ENTER_REGION_124005" },
		{ config_id = 1124006, name = "ANY_MONSTER_DIE_124006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124006", action = "action_EVENT_ANY_MONSTER_DIE_124006" }
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
		monsters = { 124001, 124002, 124003, 124007 },
		gadgets = { 124004, 124008, 124009 },
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