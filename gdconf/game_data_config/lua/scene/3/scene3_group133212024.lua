-- 基础信息
local base_info = {
	group_id = 133212024
}

-- Trigger变量
local defs = {
	group_ID = 133212024,
	trigger_playRegion = 24006,
	gadget_1 = 24002
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
		{ config_id = 24001, gadget_id = 70950068, pos = { x = -4072.889, y = 203.659, z = -2660.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
		{ config_id = 24002, gadget_id = 70950070, pos = { x = -4052.260, y = 200.062, z = -2663.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 24003, gadget_id = 70950069, pos = { x = -4044.155, y = 214.076, z = -2687.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 24005, gadget_id = 70211101, pos = { x = -4049.132, y = 199.755, z = -2661.638 }, rot = { x = 350.544, y = 265.905, z = 6.910 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 24008, gadget_id = 70900387, pos = { x = -4043.282, y = 213.607, z = -2687.964 }, rot = { x = 0.000, y = 144.646, z = 0.000 }, level = 27, area_id = 13 }
	},
	regions = {
		{ config_id = 24006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -4045.233, y = 200.637, z = -2660.892 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1024007, name = "VARIABLE_CHANGE_24007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" }
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