-- 基础信息
local base_info = {
	group_id = 199001178
}

-- DEFS_MISCS
local	defs = {
		guide_region = 178006,

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
[178001]={0,103},
[178008]={0,103},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[60002] = {0, 307},

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
	[178001] = { config_id = 178001, gadget_id = 70310167, pos = { x = 236.629, y = 132.862, z = 307.015 }, rot = { x = 357.277, y = 331.012, z = 357.901 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[178002] = { config_id = 178002, gadget_id = 70211164, pos = { x = 230.705, y = 133.075, z = 306.830 }, rot = { x = 349.350, y = 3.336, z = 356.147 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-
	[178003] = { config_id = 178003, gadget_id = 70310170, pos = { x = 224.439, y = 135.149, z = 308.004 }, rot = { x = 18.675, y = 153.884, z = 4.752 }, level = 20, area_id = 402 },
	-- 小花-
	[178004] = { config_id = 178004, gadget_id = 70310170, pos = { x = 232.599, y = 133.695, z = 313.469 }, rot = { x = 10.334, y = 197.633, z = 4.528 }, level = 20, area_id = 402 },
	-- 小花-
	[178005] = { config_id = 178005, gadget_id = 70310170, pos = { x = 234.111, y = 132.986, z = 300.630 }, rot = { x = 358.532, y = 28.811, z = 357.329 }, level = 20, area_id = 402 },
	[178007] = { config_id = 178007, gadget_id = 70310171, pos = { x = 225.003, y = 135.230, z = 309.350 }, rot = { x = 0.000, y = 105.873, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-
	[178008] = { config_id = 178008, gadget_id = 70310167, pos = { x = 227.653, y = 133.433, z = 301.335 }, rot = { x = 350.958, y = 278.864, z = 1.612 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 }
}

-- 区域
regions = {
	[178006] = { config_id = 178006, shape = RegionShape.SPHERE, radius = 12, pos = { x = 229.884, y = 132.823, z = 306.096 }, area_id = 402 }
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
		gadgets = { 178001, 178002, 178003, 178004, 178005, 178007, 178008 },
		regions = { 178006 },
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