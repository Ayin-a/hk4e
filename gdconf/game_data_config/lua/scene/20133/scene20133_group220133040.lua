-- 基础信息
local base_info = {
	group_id = 220133040
}

-- DEFS_MISCS
local	defs = {
		--装置初始state
                	init_state = {
                        	[40003] = 304,
                	},
		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[40001] = {0, 103},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[40003] = {0, 304},

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
	[40001] = { config_id = 40001, gadget_id = 70310167, pos = { x = -37.837, y = 155.219, z = 670.122 }, rot = { x = 5.281, y = 188.915, z = 3.917 }, level = 1, persistent = true, worktop_config = { init_options = { 54 } } },
	-- 小花-固定
	[40002] = { config_id = 40002, gadget_id = 70310170, pos = { x = -27.427, y = 154.149, z = 666.700 }, rot = { x = 352.776, y = 288.584, z = 12.858 }, level = 1, persistent = true },
	-- 小花-仰角转动0,35,75
	[40003] = { config_id = 40003, gadget_id = 70310167, pos = { x = -29.063, y = 152.886, z = 655.846 }, rot = { x = 354.569, y = 11.760, z = 356.681 }, level = 1, persistent = true, worktop_config = { init_options = { 55 } } },
	[40004] = { config_id = 40004, gadget_id = 70211165, pos = { x = -35.810, y = 156.713, z = 681.485 }, rot = { x = 359.396, y = 191.292, z = 355.233 }, level = 16, chest_drop_id = 1050212, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	[40005] = { config_id = 40005, gadget_id = 70310171, pos = { x = -25.777, y = 152.003, z = 654.232 }, rot = { x = 349.224, y = 339.801, z = 357.274 }, level = 1, persistent = true, interact_id = 64 }
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
		gadgets = { 40001, 40002, 40003, 40004, 40005 },
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