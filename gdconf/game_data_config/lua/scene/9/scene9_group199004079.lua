-- 基础信息
local base_info = {
	group_id = 199004079
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79005, monster_id = 20060501, pos = { x = -359.049, y = 210.610, z = -620.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 79008, monster_id = 20060501, pos = { x = -360.580, y = 206.314, z = -609.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 79009, monster_id = 20060501, pos = { x = -368.127, y = 206.690, z = -618.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
	gadgets = {
		{ config_id = 79001, gadget_id = 70950068, pos = { x = -363.385, y = 191.849, z = -597.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
		{ config_id = 79002, gadget_id = 70950070, pos = { x = -355.578, y = 212.573, z = -626.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 79003, gadget_id = 70950069, pos = { x = -352.149, y = 209.681, z = -618.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 79004, gadget_id = 70950069, pos = { x = -377.143, y = 194.065, z = -622.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	regions = {
		{ config_id = 79006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -359.279, y = 198.755, z = -612.136 }, area_id = 400, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1079007, name = "VARIABLE_CHANGE_79007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_79007", action = "" }
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
		monsters = { 79005, 79008, 79009 },
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
	},
	{
		-- suite_id = 3,
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