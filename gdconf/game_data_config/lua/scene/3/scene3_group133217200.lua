-- 基础信息
local base_info = {
	group_id = 133217200
}

-- Trigger变量
local defs = {
	group_ID = 133217200,
	trigger_playRegion = 200006,
	gadget_1 = 200002
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
		{ config_id = 200001, gadget_id = 70950068, pos = { x = -5057.141, y = 187.096, z = -3765.739 }, rot = { x = 12.334, y = 359.807, z = 358.210 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
		{ config_id = 200002, gadget_id = 70290116, pos = { x = -5072.893, y = 201.911, z = -3790.285 }, rot = { x = 351.516, y = 359.633, z = 2.907 }, level = 10, area_id = 14 },
		{ config_id = 200003, gadget_id = 70950069, pos = { x = -5063.309, y = 203.715, z = -3792.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 14 },
		{ config_id = 200004, gadget_id = 70950069, pos = { x = -5063.414, y = 186.895, z = -3764.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 14 },
		{ config_id = 200005, gadget_id = 70211101, pos = { x = -5073.333, y = 201.130, z = -3792.310 }, rot = { x = 8.386, y = 3.281, z = 3.942 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 200008, gadget_id = 70950068, pos = { x = -5070.811, y = 184.033, z = -3812.257 }, rot = { x = 6.619, y = 359.681, z = 4.282 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
		{ config_id = 200009, gadget_id = 70950069, pos = { x = -5051.853, y = 184.980, z = -3799.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 200006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -5059.712, y = 183.719, z = -3785.932 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1200007, name = "VARIABLE_CHANGE_200007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_200007", action = "" },
		{ config_id = 1200010, name = "GADGET_STATE_CHANGE_200010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_200010", action = "action_EVENT_GADGET_STATE_CHANGE_200010" }
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