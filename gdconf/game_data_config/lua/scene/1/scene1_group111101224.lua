-- 基础信息
local base_info = {
	group_id = 111101224
}

-- DEFS_MISCS
local defs = 
{

	--本Group中发射器gadget的configID 最多3个
	fireMachineList = 
	{
		224001
	},
	--key为发射器configID value为ColorDefine。见re。quire开头定义
	initConfig = {
		[224001] = 2,
	},
	--Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
	controlRelation = 
	{
		[224007] = 224001,
	},

	--左右旋转的SelectOptionID
	selectID_horizon = 54,

	--上下俯仰的SelectOptionID
	selectID_vertical = 55,

			--定义左右旋转的步长,key为传递装置configID，value为GadgetState
	horizon_steps = {
			[224005] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传递装置configID，value为GadgetState
	vertical_steps = {
			[224006] = {0, 302, 303, 304, 305},
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
	{ config_id = 224001, gadget_id = 70310158, pos = { x = 2236.401, y = 209.943, z = -1129.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 224002, gadget_id = 70310163, pos = { x = 2232.023, y = 211.214, z = -1125.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 224003, gadget_id = 70310164, pos = { x = 2243.786, y = 212.011, z = -1133.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 224004, gadget_id = 70310165, pos = { x = 2257.002, y = 209.180, z = -1118.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 224005, gadget_id = 70310159, pos = { x = 2236.412, y = 209.014, z = -1124.056 }, rot = { x = 0.000, y = 84.017, z = 0.000 }, level = 1, worktop_config = { init_options = { 54 } } },
	{ config_id = 224006, gadget_id = 70310159, pos = { x = 2243.817, y = 208.435, z = -1123.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 55 } } }
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
		gadgets = { 224001, 224002, 224003, 224004, 224005, 224006 },
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

require "V2_8/FireMachineColorHandle"