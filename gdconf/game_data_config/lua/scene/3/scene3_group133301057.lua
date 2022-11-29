-- 基础信息
local base_info = {
	group_id = 133301057
}

-- Trigger变量
local defs = {
	gadget_farm01 = 57019,
	gadget_farm02 = 57020,
	gadget_farm03 = 57021,
	gadget_farm04 = 57022,
	gadget_farm05 = 57023,
	gadget_farm06 = 57024,
	gadget_farm07 = 57025,
	gadget_farm08 = 57026,
	gadget_farm09 = 57027,
	gadget_farm10 = 57028,
	gadget_farm11 = 57029,
	gadget_farm12 = 57030,
	gadget_farm13 = 57008
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
	-- 兰纳罗指定的小花苗
	[57008] = { config_id = 57008, gadget_id = 70290500, pos = { x = -217.528, y = 210.152, z = 3658.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57019] = { config_id = 57019, gadget_id = 70290500, pos = { x = -222.400, y = 210.159, z = 3665.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57020] = { config_id = 57020, gadget_id = 70290500, pos = { x = -219.347, y = 210.146, z = 3664.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57021] = { config_id = 57021, gadget_id = 70290500, pos = { x = -220.911, y = 209.883, z = 3661.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57022] = { config_id = 57022, gadget_id = 70290500, pos = { x = -223.294, y = 210.205, z = 3663.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57023] = { config_id = 57023, gadget_id = 70290500, pos = { x = -214.720, y = 210.121, z = 3663.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57024] = { config_id = 57024, gadget_id = 70290500, pos = { x = -214.981, y = 209.901, z = 3658.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57025] = { config_id = 57025, gadget_id = 70290500, pos = { x = -221.054, y = 210.140, z = 3659.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57026] = { config_id = 57026, gadget_id = 70290500, pos = { x = -219.459, y = 210.382, z = 3656.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57027] = { config_id = 57027, gadget_id = 70290500, pos = { x = -211.012, y = 210.004, z = 3657.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57028] = { config_id = 57028, gadget_id = 70290500, pos = { x = -213.083, y = 209.968, z = 3660.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57029] = { config_id = 57029, gadget_id = 70290500, pos = { x = -212.193, y = 210.160, z = 3655.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 },
	[57030] = { config_id = 57030, gadget_id = 70290500, pos = { x = -213.801, y = 209.999, z = 3656.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, persistent = true, interact_id = 117, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "activecount", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 57008, 57019, 57020, 57021, 57022, 57023, 57024, 57025, 57026, 57027, 57028, 57029, 57030 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_0/SumeruFarm"