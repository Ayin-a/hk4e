-- 基础信息
local base_info = {
	group_id = 199001108
}

-- DEFS_MISCS
local	defs = {
		--装置初始state
                	init_state = {
                        	[108009] = 304,
                	},
		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {

		[108012] = {0,103},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			
		[108009] = {0,304},
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
	-- 小花-
	[108001] = { config_id = 108001, gadget_id = 70310170, pos = { x = 212.615, y = 74.108, z = 382.042 }, rot = { x = 13.806, y = 66.913, z = 9.458 }, level = 20, area_id = 402 },
	-- 小花-
	[108002] = { config_id = 108002, gadget_id = 70310170, pos = { x = 207.265, y = 75.017, z = 385.244 }, rot = { x = 11.598, y = 119.061, z = 12.593 }, level = 20, area_id = 402 },
	-- 小花-
	[108003] = { config_id = 108003, gadget_id = 70310170, pos = { x = 202.067, y = 75.023, z = 398.030 }, rot = { x = 359.086, y = 140.558, z = 354.925 }, level = 20, area_id = 402 },
	-- 小花-
	[108004] = { config_id = 108004, gadget_id = 70310170, pos = { x = 188.165, y = 75.004, z = 391.376 }, rot = { x = 359.345, y = 32.279, z = 1.816 }, level = 20, area_id = 402 },
	-- 小花-水平4jiaodu
	[108005] = { config_id = 108005, gadget_id = 70310170, pos = { x = 192.295, y = 74.949, z = 397.243 }, rot = { x = 1.027, y = 84.059, z = 358.496 }, level = 20, area_id = 402 },
	[108006] = { config_id = 108006, gadget_id = 70211121, pos = { x = 233.978, y = 71.610, z = 378.464 }, rot = { x = 0.000, y = 313.913, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	[108007] = { config_id = 108007, gadget_id = 70310171, pos = { x = 188.354, y = 75.012, z = 388.808 }, rot = { x = 0.000, y = 80.115, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小分支奖励
	[108008] = { config_id = 108008, gadget_id = 70211164, pos = { x = 199.554, y = 75.109, z = 389.696 }, rot = { x = 359.772, y = 95.745, z = 358.904 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-仰角
	[108009] = { config_id = 108009, gadget_id = 70310167, pos = { x = 195.234, y = 74.974, z = 380.116 }, rot = { x = 358.459, y = 73.661, z = 359.691 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	-- 小花-
	[108010] = { config_id = 108010, gadget_id = 70310170, pos = { x = 198.112, y = 75.120, z = 389.790 }, rot = { x = 358.919, y = 197.714, z = 1.331 }, level = 20, area_id = 402 },
	-- 小花-
	[108011] = { config_id = 108011, gadget_id = 70310170, pos = { x = 203.018, y = 75.017, z = 381.735 }, rot = { x = 0.834, y = 48.342, z = 359.859 }, level = 20, area_id = 402 },
	-- 小花-
	[108012] = { config_id = 108012, gadget_id = 70310167, pos = { x = 208.357, y = 74.988, z = 389.826 }, rot = { x = 357.237, y = 88.826, z = 1.670 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[108013] = { config_id = 108013, gadget_id = 70310186, pos = { x = 230.221, y = 70.788, z = 382.004 }, rot = { x = 0.000, y = 288.427, z = 0.000 }, level = 20, state = GadgetState.GearStop, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 402 },
	[108014] = { config_id = 108014, gadget_id = 70211121, pos = { x = 235.577, y = 71.552, z = 382.428 }, rot = { x = 0.000, y = 254.522, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	[108015] = { config_id = 108015, gadget_id = 70211121, pos = { x = 235.831, y = 71.575, z = 380.216 }, rot = { x = 357.892, y = 278.084, z = 0.000 }, level = 16, chest_drop_id = 2004600, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-
	[108016] = { config_id = 108016, gadget_id = 70310170, pos = { x = 219.993, y = 72.173, z = 385.502 }, rot = { x = 351.336, y = 115.782, z = 1.866 }, level = 20, area_id = 402 }
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
		gadgets = { 108001, 108002, 108003, 108004, 108005, 108006, 108007, 108008, 108009, 108010, 108011, 108012, 108013, 108014, 108015, 108016 },
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