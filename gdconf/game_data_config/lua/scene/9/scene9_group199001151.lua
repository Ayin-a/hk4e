-- 基础信息
local base_info = {
	group_id = 199001151
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[151003] = {0,103},
			
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[92003] = {0, 302, 303, 307},

		}
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
	[151001] = { config_id = 151001, gadget_id = 70211164, pos = { x = 224.212, y = 120.870, z = 236.848 }, rot = { x = 0.000, y = 9.183, z = 357.991 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-固定
	[151002] = { config_id = 151002, gadget_id = 70310170, pos = { x = 211.773, y = 121.184, z = 231.620 }, rot = { x = 357.234, y = 19.134, z = 5.491 }, level = 20, area_id = 402 },
	-- 小花-水平转动0,180
	[151003] = { config_id = 151003, gadget_id = 70310167, pos = { x = 221.682, y = 120.848, z = 231.280 }, rot = { x = 358.851, y = 271.305, z = 0.351 }, level = 20, interact_id = 54, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[151004] = { config_id = 151004, gadget_id = 70310171, pos = { x = 223.261, y = 120.827, z = 233.266 }, rot = { x = 0.000, y = 164.424, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-固定
	[151005] = { config_id = 151005, gadget_id = 70310170, pos = { x = 214.881, y = 121.081, z = 241.331 }, rot = { x = 359.079, y = 84.289, z = 4.940 }, level = 20, area_id = 402 },
	-- 小花-固定
	[151006] = { config_id = 151006, gadget_id = 70310170, pos = { x = 224.639, y = 121.022, z = 242.545 }, rot = { x = 9.743, y = 183.357, z = 0.519 }, level = 20, area_id = 402 }
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
		{ config_id = 151008, gadget_id = 70310169, pos = { x = 229.457, y = 120.731, z = 232.260 }, rot = { x = 0.000, y = 137.989, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 151010, gadget_id = 70310341, pos = { x = 229.728, y = 122.567, z = 231.660 }, rot = { x = 334.586, y = 137.989, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 151011, gadget_id = 70690001, pos = { x = 236.129, y = 125.208, z = 224.069 }, rot = { x = 339.220, y = 132.508, z = 358.170 }, level = 20, area_id = 402 },
		{ config_id = 151012, gadget_id = 70690001, pos = { x = 243.697, y = 128.173, z = 217.057 }, rot = { x = 340.978, y = 131.407, z = 358.226 }, level = 20, area_id = 402 },
		{ config_id = 151013, gadget_id = 70690001, pos = { x = 251.967, y = 132.854, z = 209.730 }, rot = { x = 332.621, y = 129.337, z = 358.201 }, level = 20, area_id = 402 },
		{ config_id = 151014, gadget_id = 70690001, pos = { x = 260.557, y = 137.455, z = 202.731 }, rot = { x = 340.855, y = 101.251, z = 359.478 }, level = 20, area_id = 402 },
		{ config_id = 151015, gadget_id = 70690001, pos = { x = 271.550, y = 140.464, z = 200.552 }, rot = { x = 351.270, y = 85.235, z = 0.214 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1151007, name = "VARIABLE_CHANGE_151007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_151007", action = "action_EVENT_VARIABLE_CHANGE_151007", trigger_count = 0 },
		{ config_id = 1151009, name = "TIME_AXIS_PASS_151009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_151009", action = "action_EVENT_TIME_AXIS_PASS_151009", trigger_count = 0 }
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
		gadgets = { 151001, 151002, 151003, 151004, 151005, 151006 },
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

require "V2_8/TransferFlower"