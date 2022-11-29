-- 基础信息
local base_info = {
	group_id = 199001240
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
		
			[240012] = {0, 102},
			[240014] = {0, 103},
			[240016] = {0, 102},

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
	-- 小花-水平转动
	[240004] = { config_id = 240004, gadget_id = 70310170, pos = { x = 175.794, y = 121.465, z = 412.228 }, rot = { x = 1.090, y = 110.600, z = 354.235 }, level = 20, area_id = 402 },
	[240005] = { config_id = 240005, gadget_id = 70310171, pos = { x = 182.135, y = 123.339, z = 417.364 }, rot = { x = 0.264, y = 171.173, z = 357.851 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-水平转动
	[240006] = { config_id = 240006, gadget_id = 70310170, pos = { x = 185.341, y = 121.796, z = 407.622 }, rot = { x = 354.937, y = 47.135, z = 351.546 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[240008] = { config_id = 240008, gadget_id = 70310170, pos = { x = 191.139, y = 123.233, z = 413.548 }, rot = { x = 341.270, y = 8.879, z = 357.078 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[240011] = { config_id = 240011, gadget_id = 70310170, pos = { x = 193.201, y = 127.303, z = 424.622 }, rot = { x = 343.043, y = 58.272, z = 357.298 }, level = 20, area_id = 402 },
	-- 0,102
	[240012] = { config_id = 240012, gadget_id = 70310167, pos = { x = 198.827, y = 129.033, z = 428.612 }, rot = { x = 3.592, y = 251.900, z = 6.744 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-水平转动
	[240013] = { config_id = 240013, gadget_id = 70310170, pos = { x = 196.394, y = 130.471, z = 437.642 }, rot = { x = 345.499, y = 70.869, z = 355.600 }, level = 20, area_id = 402 },
	-- 0，103
	[240014] = { config_id = 240014, gadget_id = 70310167, pos = { x = 179.399, y = 122.407, z = 416.856 }, rot = { x = 15.434, y = 217.825, z = 357.205 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[240015] = { config_id = 240015, gadget_id = 70310186, pos = { x = 192.902, y = 125.400, z = 422.216 }, rot = { x = 0.000, y = 218.599, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	-- 0,102
	[240016] = { config_id = 240016, gadget_id = 70310167, pos = { x = 183.897, y = 123.031, z = 415.435 }, rot = { x = 6.907, y = 193.930, z = 352.482 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 }
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
		{ config_id = 240001, gadget_id = 70310171, pos = { x = 174.136, y = 125.291, z = 351.208 }, rot = { x = 11.606, y = 322.341, z = 0.136 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 240002, gadget_id = 70310170, pos = { x = 181.463, y = 124.302, z = 359.767 }, rot = { x = 349.809, y = 174.804, z = 357.194 }, level = 20, area_id = 402 },
		{ config_id = 240003, gadget_id = 70310170, pos = { x = 181.709, y = 125.805, z = 353.919 }, rot = { x = 329.468, y = 164.299, z = 0.297 }, level = 20, area_id = 402 },
		{ config_id = 240007, gadget_id = 70310170, pos = { x = 171.471, y = 125.047, z = 351.103 }, rot = { x = 10.279, y = 358.460, z = 8.061 }, level = 20, area_id = 402 },
		{ config_id = 240009, gadget_id = 70310167, pos = { x = 171.227, y = 122.907, z = 361.859 }, rot = { x = 5.017, y = 280.588, z = 357.848 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 240010, gadget_id = 70310186, pos = { x = 183.865, y = 127.735, z = 345.518 }, rot = { x = 12.160, y = 319.526, z = 359.254 }, level = 20, state = GadgetState.GearStop, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 }
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
		gadgets = { 240004, 240005, 240006, 240008, 240011, 240012, 240013, 240014, 240015, 240016 },
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