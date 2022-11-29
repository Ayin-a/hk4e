-- 基础信息
local base_info = {
	group_id = 133220291
}

-- Trigger变量
local defs = {
	group_ID = 133220291,
	trigger_playRegion = 291006,
	gadget_1 = 291002
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
		{ config_id = 291001, gadget_id = 70950068, pos = { x = -2555.522, y = 358.233, z = -4461.565 }, rot = { x = 350.087, y = 346.769, z = 348.172 }, level = 10, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 291002, gadget_id = 70290116, pos = { x = -2536.771, y = 364.110, z = -4431.511 }, rot = { x = 1.368, y = 29.214, z = 1.559 }, level = 10, area_id = 11 },
		{ config_id = 291003, gadget_id = 70950069, pos = { x = -2526.151, y = 366.799, z = -4440.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
		{ config_id = 291004, gadget_id = 70950069, pos = { x = -2538.347, y = 364.080, z = -4438.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 11 },
		{ config_id = 291005, gadget_id = 70211131, pos = { x = -2535.614, y = 364.058, z = -4429.807 }, rot = { x = 0.000, y = 203.364, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 291008, gadget_id = 70950068, pos = { x = -2505.546, y = 386.535, z = -4431.198 }, rot = { x = 347.241, y = 33.971, z = 9.973 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
		{ config_id = 291010, gadget_id = 70950069, pos = { x = -2526.891, y = 364.354, z = -4427.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 291012, gadget_id = 70950068, pos = { x = -2511.551, y = 366.308, z = -4442.677 }, rot = { x = 7.949, y = 341.806, z = 15.826 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
	},
	regions = {
		{ config_id = 291006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2527.375, y = 364.089, z = -4452.915 }, area_id = 11, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1291007, name = "VARIABLE_CHANGE_291007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_291007", action = "action_EVENT_VARIABLE_CHANGE_291007" }
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