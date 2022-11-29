-- 基础信息
local base_info = {
	group_id = 199001101
}

-- DEFS_MISCS
local	defs = {
		--装置初始state
                	init_state = {
                        	[101003] = 303,
                	},

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[101001] = {0,103},

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[101003] = {0, 303},

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
	[101001] = { config_id = 101001, gadget_id = 70310167, pos = { x = 301.160, y = 122.402, z = 169.100 }, rot = { x = 2.823, y = 272.970, z = 1.683 }, level = 20, persistent = true, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-固定
	[101002] = { config_id = 101002, gadget_id = 70310170, pos = { x = 304.236, y = 122.956, z = 159.770 }, rot = { x = 8.806, y = 283.876, z = 359.738 }, level = 20, area_id = 402 },
	-- 小花-仰角转动0,303
	[101003] = { config_id = 101003, gadget_id = 70310167, pos = { x = 289.712, y = 120.215, z = 153.264 }, rot = { x = 7.141, y = 199.483, z = 353.408 }, level = 20, persistent = true, worktop_config = { init_options = { 55 } }, area_id = 402 },
	-- 小花-固定
	[101004] = { config_id = 101004, gadget_id = 70310170, pos = { x = 308.704, y = 122.817, z = 168.735 }, rot = { x = 359.407, y = 207.625, z = 359.666 }, level = 20, area_id = 402 },
	[101005] = { config_id = 101005, gadget_id = 70310171, pos = { x = 303.309, y = 122.238, z = 167.592 }, rot = { x = 5.417, y = 216.047, z = 357.556 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-固定
	[101006] = { config_id = 101006, gadget_id = 70310170, pos = { x = 290.942, y = 121.057, z = 163.652 }, rot = { x = 12.867, y = 233.290, z = 356.994 }, level = 20, area_id = 402 },
	-- 小花-固定
	[101007] = { config_id = 101007, gadget_id = 70310170, pos = { x = 285.885, y = 120.400, z = 160.097 }, rot = { x = 359.882, y = 156.057, z = 346.793 }, level = 20, area_id = 402 }
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
		gadgets = { 101001, 101002, 101003, 101004, 101005, 101006, 101007 },
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