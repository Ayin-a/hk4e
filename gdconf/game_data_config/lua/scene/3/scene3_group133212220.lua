-- 基础信息
local base_info = {
	group_id = 133212220
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
		{ config_id = 220001, gadget_id = 70950068, pos = { x = -4267.374, y = 203.066, z = -2614.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 13 },
		{ config_id = 220002, gadget_id = 70950070, pos = { x = -4298.583, y = 200.628, z = -2620.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 220003, gadget_id = 70950069, pos = { x = -4268.000, y = 206.916, z = -2621.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 220004, gadget_id = 70950069, pos = { x = -4309.572, y = 198.023, z = -2583.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 220005, gadget_id = 70211111, pos = { x = -4301.113, y = 200.675, z = -2620.660 }, rot = { x = 0.000, y = 85.207, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 220008, gadget_id = 70900387, pos = { x = -4307.145, y = 198.546, z = -2583.977 }, rot = { x = 0.000, y = 300.230, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
	},
	regions = {
		{ config_id = 220006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4290.835, y = 200.470, z = -2615.439 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1220007, name = "VARIABLE_CHANGE_220007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_220007", action = "" }
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