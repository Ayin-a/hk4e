-- 基础信息
local base_info = {
	group_id = 199001197
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
[197001]={0,102},
[197004]={0,103},

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			

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
	[197001] = { config_id = 197001, gadget_id = 70310167, pos = { x = 200.987, y = 147.327, z = 452.719 }, rot = { x = 356.712, y = 263.218, z = 353.512 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[197002] = { config_id = 197002, gadget_id = 70211164, pos = { x = 189.271, y = 146.096, z = 454.089 }, rot = { x = 353.631, y = 13.914, z = 12.057 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-
	[197003] = { config_id = 197003, gadget_id = 70310170, pos = { x = 199.985, y = 146.669, z = 458.782 }, rot = { x = 3.943, y = 283.608, z = 358.963 }, level = 20, area_id = 402 },
	-- 小花-0/103
	[197004] = { config_id = 197004, gadget_id = 70310167, pos = { x = 191.646, y = 146.333, z = 460.820 }, rot = { x = 2.201, y = 199.966, z = 353.951 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-
	[197005] = { config_id = 197005, gadget_id = 70310170, pos = { x = 202.345, y = 149.336, z = 443.807 }, rot = { x = 12.699, y = 352.926, z = 6.164 }, level = 20, area_id = 402 }
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
		gadgets = { 197001, 197002, 197003, 197004, 197005 },
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