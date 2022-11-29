-- 基础信息
local base_info = {
	group_id = 199004078
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78010, monster_id = 22050201, pos = { x = -449.304, y = 120.000, z = -550.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 },
	{ config_id = 78011, monster_id = 22050201, pos = { x = -415.519, y = 124.118, z = -556.477 }, rot = { x = 0.000, y = 220.786, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 }
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
		{ config_id = 78001, gadget_id = 70950068, pos = { x = -411.683, y = 120.325, z = -530.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
		{ config_id = 78002, gadget_id = 70290117, pos = { x = -430.968, y = 121.382, z = -542.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 78003, gadget_id = 70950069, pos = { x = -411.791, y = 123.705, z = -555.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 78004, gadget_id = 70950069, pos = { x = -430.612, y = 126.684, z = -578.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 78008, gadget_id = 70950068, pos = { x = -433.154, y = 122.800, z = -559.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
		{ config_id = 78009, gadget_id = 70950068, pos = { x = -447.727, y = 119.966, z = -539.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 }
	},
	regions = {
		{ config_id = 78006, shape = RegionShape.SPHERE, radius = 50, pos = { x = -419.845, y = 121.308, z = -535.385 }, area_id = 400, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1078007, name = "VARIABLE_CHANGE_78007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_78007", action = "" }
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
		monsters = { 78010, 78011 },
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