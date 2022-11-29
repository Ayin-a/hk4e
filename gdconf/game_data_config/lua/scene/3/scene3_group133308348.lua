-- 基础信息
local base_info = {
	group_id = 133308348
}

-- DEFS_MISCS
local questID = 7305536

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 348001, monster_id = 24040301, pos = { x = -1490.960, y = 149.369, z = 4414.577 }, rot = { x = 0.000, y = 324.011, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5203 }, pose_id = 1004, area_id = 26 },
	{ config_id = 348002, monster_id = 24040301, pos = { x = -1499.517, y = 149.369, z = 4416.045 }, rot = { x = 0.000, y = 63.334, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5203 }, pose_id = 1004, area_id = 26 },
	{ config_id = 348005, monster_id = 24040201, pos = { x = -1492.146, y = 149.369, z = 4407.893 }, rot = { x = 0.000, y = 316.812, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5203 }, pose_id = 1004, area_id = 26 },
	{ config_id = 348006, monster_id = 24040201, pos = { x = -1500.541, y = 149.369, z = 4409.557 }, rot = { x = 0.000, y = 62.745, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5203 }, pose_id = 1004, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 348007, shape = RegionShape.CUBIC, size = { x = 100.000, y = 30.000, z = 100.000 }, pos = { x = -1495.766, y = 151.335, z = 4404.241 }, area_id = 26, team_ability_group_list = { "QuestAbility_Gardian_LeaveBattle" } }
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
		{ config_id = 348003, monster_id = 24040101, pos = { x = -1491.571, y = 149.282, z = 4410.711 }, rot = { x = 0.000, y = 315.784, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5203 }, pose_id = 1004, area_id = 26 },
		{ config_id = 348004, monster_id = 24040101, pos = { x = -1501.242, y = 149.282, z = 4411.974 }, rot = { x = 0.000, y = 69.292, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5203 }, pose_id = 1004, area_id = 26 }
	},
	regions = {
		{ config_id = 348008, shape = RegionShape.POLYGON, pos = { x = -1498.574, y = 153.220, z = 4392.105 }, height = 47.280, point_array = { { x = -1480.224, y = 4415.805 }, { x = -1509.483, y = 4420.083 }, { x = -1516.924, y = 4368.563 }, { x = -1488.992, y = 4364.129 } }, area_id = 26 }
	},
	triggers = {
		{ config_id = 1348008, name = "ENTER_REGION_348008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_348008", action = "action_EVENT_ENTER_REGION_348008", trigger_count = 0 }
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
		monsters = { 348001, 348002, 348005, 348006 },
		gadgets = { },
		regions = { 348007 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_1/OutOfBattle"