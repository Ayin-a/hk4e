-- 基础信息
local base_info = {
	group_id = 199001092
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
			[92001] = {0, 102, 103, 104},
			
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
	-- 小花-水平转动
	[92001] = { config_id = 92001, gadget_id = 70310167, pos = { x = 197.016, y = 214.212, z = 327.063 }, rot = { x = 358.801, y = 275.852, z = 354.734 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-固定
	[92002] = { config_id = 92002, gadget_id = 70310170, pos = { x = 186.754, y = 217.610, z = 327.034 }, rot = { x = 15.852, y = 92.299, z = 12.642 }, level = 20, area_id = 402 },
	-- 小花-仰角转动0,35,75
	[92003] = { config_id = 92003, gadget_id = 70310167, pos = { x = 188.822, y = 215.271, z = 331.768 }, rot = { x = 5.799, y = 205.606, z = 0.398 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	[92005] = { config_id = 92005, gadget_id = 70310171, pos = { x = 184.919, y = 215.549, z = 332.143 }, rot = { x = 0.000, y = 78.216, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 }
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
		gadgets = { 92001, 92002, 92003, 92005 },
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