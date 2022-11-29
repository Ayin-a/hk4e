-- 基础信息
local base_info = {
	group_id = 199001057
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
			[57001] = {0, 103},
			[57013] = {0, 103},

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[57008] = {0, 303},
			[57011] = {0, 303},

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
	[57001] = { config_id = 57001, gadget_id = 70310167, pos = { x = 159.548, y = 150.281, z = 460.188 }, rot = { x = 348.581, y = 202.616, z = 20.960 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-固定
	[57002] = { config_id = 57002, gadget_id = 70310170, pos = { x = 163.425, y = 148.096, z = 469.068 }, rot = { x = 359.417, y = 139.864, z = 7.229 }, level = 20, area_id = 402 },
	[57005] = { config_id = 57005, gadget_id = 70310171, pos = { x = 151.396, y = 151.536, z = 464.021 }, rot = { x = 6.118, y = 112.924, z = 2.227 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-仰角转动0,45
	[57008] = { config_id = 57008, gadget_id = 70310167, pos = { x = 165.160, y = 147.717, z = 453.535 }, rot = { x = 18.861, y = 91.708, z = 353.430 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	-- 小花-
	[57010] = { config_id = 57010, gadget_id = 70310170, pos = { x = 155.972, y = 151.053, z = 466.053 }, rot = { x = 9.559, y = 151.735, z = 8.484 }, level = 20, area_id = 402 },
	-- 小花-仰角转动0,35,75
	[57011] = { config_id = 57011, gadget_id = 70310167, pos = { x = 151.217, y = 151.556, z = 462.026 }, rot = { x = 4.322, y = 51.197, z = 349.533 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	[57012] = { config_id = 57012, gadget_id = 70211165, pos = { x = 172.470, y = 146.120, z = 452.753 }, rot = { x = 356.550, y = 288.765, z = 345.270 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-水平转动
	[57013] = { config_id = 57013, gadget_id = 70310167, pos = { x = 168.791, y = 147.870, z = 462.448 }, rot = { x = 2.958, y = 205.844, z = 18.555 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 }
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
		{ config_id = 57004, gadget_id = 70310169, pos = { x = 147.769, y = 152.088, z = 459.560 }, rot = { x = 354.908, y = 227.761, z = 19.190 }, level = 20, area_id = 402 },
		{ config_id = 57006, gadget_id = 70310166, pos = { x = 148.661, y = 152.674, z = 464.130 }, rot = { x = 340.981, y = 286.369, z = 5.720 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
		{ config_id = 57007, gadget_id = 70310166, pos = { x = 150.686, y = 150.999, z = 468.002 }, rot = { x = 340.469, y = 313.818, z = 356.502 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
		{ config_id = 57009, gadget_id = 70310166, pos = { x = 153.936, y = 151.288, z = 470.682 }, rot = { x = 345.699, y = 348.472, z = 346.117 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 }
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
		gadgets = { 57001, 57002, 57005, 57008, 57010, 57011, 57012, 57013 },
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