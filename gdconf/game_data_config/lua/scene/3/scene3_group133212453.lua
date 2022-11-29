-- 基础信息
local base_info = {
	group_id = 133212453
}

-- Trigger变量
local defs = {
	group_ID = 133212453,
	trigger_playRegion = 453006,
	gadget_1 = 453002
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
		{ config_id = 453001, gadget_id = 70950068, pos = { x = -4244.548, y = 203.892, z = -2525.141 }, rot = { x = 0.000, y = 317.560, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 453002, gadget_id = 70290117, pos = { x = -4232.058, y = 200.711, z = -2512.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 13 },
		{ config_id = 453003, gadget_id = 70950068, pos = { x = -4247.307, y = 203.059, z = -2502.054 }, rot = { x = 0.000, y = 290.900, z = 23.757 }, level = 27, area_id = 13 },
		{ config_id = 453004, gadget_id = 70950068, pos = { x = -4221.636, y = 201.981, z = -2494.612 }, rot = { x = 359.510, y = 317.634, z = 351.495 }, level = 27, area_id = 13 },
		{ config_id = 453005, gadget_id = 70900380, pos = { x = -4236.161, y = 205.836, z = -2512.056 }, rot = { x = 338.863, y = 294.946, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453008, gadget_id = 70900380, pos = { x = -4247.199, y = 210.016, z = -2506.922 }, rot = { x = 336.418, y = 313.512, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453009, gadget_id = 70900380, pos = { x = -4257.147, y = 216.003, z = -2497.478 }, rot = { x = 344.484, y = 42.203, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453010, gadget_id = 70900380, pos = { x = -4247.437, y = 220.016, z = -2486.771 }, rot = { x = 340.205, y = 77.908, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453011, gadget_id = 70900380, pos = { x = -4234.962, y = 224.608, z = -2484.099 }, rot = { x = 333.697, y = 99.523, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453012, gadget_id = 70900380, pos = { x = -4221.744, y = 231.233, z = -2486.315 }, rot = { x = 328.440, y = 88.825, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453013, gadget_id = 70900380, pos = { x = -4209.019, y = 239.051, z = -2486.054 }, rot = { x = 339.289, y = 76.279, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453014, gadget_id = 70900380, pos = { x = -4195.389, y = 244.356, z = -2482.727 }, rot = { x = 339.289, y = 76.279, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 453015, gadget_id = 70211111, pos = { x = -4187.891, y = 244.307, z = -2477.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	regions = {
		{ config_id = 453006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -4221.108, y = 200.636, z = -2505.857 }, area_id = 13, team_ability_group_list = { "Move_Electric_Stake_Play" } }
	},
	triggers = {
		{ config_id = 1453007, name = "VARIABLE_CHANGE_453007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" }
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