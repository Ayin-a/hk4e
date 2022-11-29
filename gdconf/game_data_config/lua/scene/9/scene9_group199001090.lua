-- 基础信息
local base_info = {
	group_id = 199001090
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
			[90009] = {0, 103},
			[90012] = {0, 102},
			[90016] = {0, 102},
			[90014] = {0, 103},

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[90008] = {0, 307},
			
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
	[90001] = { config_id = 90001, gadget_id = 70310171, pos = { x = 174.136, y = 125.291, z = 351.208 }, rot = { x = 11.606, y = 322.341, z = 0.136 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	[90002] = { config_id = 90002, gadget_id = 70310170, pos = { x = 181.417, y = 124.277, z = 359.758 }, rot = { x = 349.809, y = 174.804, z = 357.194 }, level = 20, area_id = 402 },
	[90003] = { config_id = 90003, gadget_id = 70310170, pos = { x = 181.749, y = 125.543, z = 353.769 }, rot = { x = 329.491, y = 167.425, z = 358.709 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[90007] = { config_id = 90007, gadget_id = 70310170, pos = { x = 171.471, y = 125.047, z = 351.103 }, rot = { x = 10.279, y = 358.460, z = 8.061 }, level = 20, area_id = 402 },
	-- 0,103
	[90009] = { config_id = 90009, gadget_id = 70310167, pos = { x = 171.227, y = 122.907, z = 361.859 }, rot = { x = 5.017, y = 280.588, z = 357.848 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[90010] = { config_id = 90010, gadget_id = 70310186, pos = { x = 183.865, y = 127.735, z = 345.518 }, rot = { x = 12.160, y = 319.526, z = 359.254 }, level = 20, state = GadgetState.GearStop, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 }
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
		{ config_id = 90004, gadget_id = 70310170, pos = { x = 175.794, y = 121.465, z = 412.228 }, rot = { x = 1.090, y = 110.600, z = 354.235 }, level = 20, area_id = 402 },
		{ config_id = 90005, gadget_id = 70310171, pos = { x = 182.135, y = 123.339, z = 417.364 }, rot = { x = 0.264, y = 171.173, z = 357.851 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 90006, gadget_id = 70310170, pos = { x = 185.341, y = 121.796, z = 407.622 }, rot = { x = 354.937, y = 47.135, z = 351.546 }, level = 20, area_id = 402 },
		{ config_id = 90008, gadget_id = 70310170, pos = { x = 191.139, y = 123.233, z = 413.548 }, rot = { x = 341.270, y = 8.879, z = 357.078 }, level = 20, area_id = 402 },
		{ config_id = 90011, gadget_id = 70310170, pos = { x = 193.201, y = 127.303, z = 424.622 }, rot = { x = 343.043, y = 58.272, z = 357.298 }, level = 20, area_id = 402 },
		{ config_id = 90012, gadget_id = 70310167, pos = { x = 198.827, y = 129.033, z = 428.612 }, rot = { x = 3.592, y = 251.900, z = 6.744 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 90013, gadget_id = 70310170, pos = { x = 196.394, y = 130.471, z = 437.642 }, rot = { x = 345.499, y = 70.869, z = 355.600 }, level = 20, area_id = 402 },
		{ config_id = 90014, gadget_id = 70310167, pos = { x = 179.399, y = 122.407, z = 416.856 }, rot = { x = 15.434, y = 217.825, z = 357.205 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 90015, gadget_id = 70310186, pos = { x = 192.902, y = 125.400, z = 422.216 }, rot = { x = 0.000, y = 218.599, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
		{ config_id = 90016, gadget_id = 70310167, pos = { x = 183.897, y = 123.031, z = 415.435 }, rot = { x = 6.907, y = 193.930, z = 352.482 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 }
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
		gadgets = { 90001, 90002, 90003, 90007, 90009, 90010 },
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