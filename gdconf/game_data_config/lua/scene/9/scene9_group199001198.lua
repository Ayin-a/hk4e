-- 基础信息
local base_info = {
	group_id = 199001198
}

-- DEFS_MISCS
local	defs = {
                	init_state = {
                        	[57008] = 303,
                        	[57011] = 303,
                	},

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[198001] = {0, 102},
			

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[198007] = {0, 303},

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
	-- 小花-水平转动
	[198001] = { config_id = 198001, gadget_id = 70310167, pos = { x = 399.490, y = 125.995, z = 430.055 }, rot = { x = 5.835, y = 97.943, z = 347.771 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-仰角转动0,45
	[198007] = { config_id = 198007, gadget_id = 70310167, pos = { x = 398.355, y = 124.778, z = 421.707 }, rot = { x = 8.663, y = 133.211, z = 3.503 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	[198010] = { config_id = 198010, gadget_id = 70310170, pos = { x = 401.779, y = 124.148, z = 417.906 }, rot = { x = 334.977, y = 270.130, z = 4.803 }, level = 20, area_id = 402 },
	[198011] = { config_id = 198011, gadget_id = 70211164, pos = { x = 396.229, y = 127.421, z = 417.501 }, rot = { x = 34.312, y = 89.440, z = 357.072 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		{ config_id = 198002, gadget_id = 70310170, pos = { x = 408.061, y = 122.502, z = 438.977 }, rot = { x = 359.417, y = 136.196, z = 7.229 }, level = 20, area_id = 402 },
		{ config_id = 198003, gadget_id = 70310170, pos = { x = 388.319, y = 127.113, z = 448.932 }, rot = { x = 20.731, y = 247.206, z = 13.156 }, level = 20, area_id = 402 },
		{ config_id = 198004, gadget_id = 70310171, pos = { x = 398.080, y = 126.184, z = 433.406 }, rot = { x = 6.198, y = 71.346, z = 357.992 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 198005, gadget_id = 70310167, pos = { x = 372.290, y = 119.917, z = 441.965 }, rot = { x = 356.509, y = 238.981, z = 358.262 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 198006, gadget_id = 70211164, pos = { x = 353.734, y = 127.815, z = 418.710 }, rot = { x = 36.995, y = 262.639, z = 354.861 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 198008, gadget_id = 70310170, pos = { x = 381.979, y = 122.752, z = 456.755 }, rot = { x = 8.322, y = 213.848, z = 354.526 }, level = 20, area_id = 402 },
		{ config_id = 198009, gadget_id = 70310170, pos = { x = 397.195, y = 125.891, z = 437.651 }, rot = { x = 355.592, y = 318.040, z = 356.968 }, level = 20, area_id = 402 },
		{ config_id = 198012, gadget_id = 70310167, pos = { x = 413.839, y = 122.277, z = 432.713 }, rot = { x = 3.624, y = 202.401, z = 18.568 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 198013, gadget_id = 70310170, pos = { x = 363.453, y = 120.171, z = 435.990 }, rot = { x = 0.677, y = 229.405, z = 349.029 }, level = 20, area_id = 402 },
		{ config_id = 198014, gadget_id = 70310170, pos = { x = 340.766, y = 121.270, z = 416.389 }, rot = { x = 337.247, y = 76.285, z = 0.123 }, level = 20, area_id = 402 },
		{ config_id = 198015, gadget_id = 70310170, pos = { x = 353.169, y = 119.967, z = 427.136 }, rot = { x = 354.621, y = 229.406, z = 352.788 }, level = 20, area_id = 402 }
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
		gadgets = { 198001, 198007, 198010, 198011 },
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