-- 基础信息
local base_info = {
	group_id = 199001060
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
	[60001] = { config_id = 60001, gadget_id = 70310170, pos = { x = 311.461, y = 140.372, z = 142.212 }, rot = { x = 357.791, y = 34.564, z = 358.005 }, level = 20, area_id = 402 },
	-- 小花-仰角转动0,45
	[60002] = { config_id = 60002, gadget_id = 70310167, pos = { x = 314.826, y = 140.316, z = 148.959 }, rot = { x = 5.413, y = 81.660, z = 358.235 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	[60004] = { config_id = 60004, gadget_id = 70211165, pos = { x = 321.250, y = 144.047, z = 150.241 }, rot = { x = 0.000, y = 264.150, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		gadgets = { 60001, 60002, 60004 },
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