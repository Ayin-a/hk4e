-- 基础信息
local base_info = {
	group_id = 133220103
}

-- Trigger变量
local defs = {
	group_ID = 133220103,
	trigger_playRegion = 103006,
	gadget_1 = 103002
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
	gadgets = {
		{ config_id = 103001, gadget_id = 70950068, pos = { x = -2348.615, y = 240.277, z = -4392.396 }, rot = { x = 1.872, y = 81.078, z = 357.311 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 103002, gadget_id = 70950070, pos = { x = -2329.310, y = 237.068, z = -4357.863 }, rot = { x = 356.798, y = 54.939, z = 348.079 }, level = 10, area_id = 11 },
		{ config_id = 103003, gadget_id = 70950069, pos = { x = -2350.585, y = 224.497, z = -4380.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
		{ config_id = 103004, gadget_id = 70690027, pos = { x = -2335.963, y = 234.344, z = -4366.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
		{ config_id = 103005, gadget_id = 70211101, pos = { x = -2326.837, y = 236.578, z = -4358.630 }, rot = { x = 2.957, y = 211.182, z = 17.198 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 103008, gadget_id = 70950069, pos = { x = -2355.173, y = 225.751, z = -4356.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 103009, gadget_id = 70690027, pos = { x = -2341.668, y = 234.573, z = -4377.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
	},
	regions = {
		{ config_id = 103006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -2341.026, y = 235.556, z = -4369.961 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1103007, name = "VARIABLE_CHANGE_103007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_103007", action = "action_EVENT_VARIABLE_CHANGE_103007" }
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