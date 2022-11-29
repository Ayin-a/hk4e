-- 基础信息
local base_info = {
	group_id = 199001236
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

		},
    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 4,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_PoPo_Default"] = {1},
        ["2_8_PoPo_01"] = {1,2},
        ["2_8_PoPo_02"] = {1,3},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
    	
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
	[236002] = { config_id = 236002, gadget_id = 70310170, pos = { x = 229.908, y = 196.758, z = 154.457 }, rot = { x = 7.294, y = 346.592, z = 358.776 }, level = 20, area_id = 402 },
	[236003] = { config_id = 236003, gadget_id = 70310171, pos = { x = 227.937, y = 196.930, z = 153.136 }, rot = { x = 359.323, y = 359.919, z = 359.963 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-水平转动
	[236004] = { config_id = 236004, gadget_id = 70310170, pos = { x = 227.716, y = 195.831, z = 162.598 }, rot = { x = 7.842, y = 317.017, z = 356.410 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236006] = { config_id = 236006, gadget_id = 70310170, pos = { x = 223.167, y = 195.661, z = 166.814 }, rot = { x = 55.752, y = 109.463, z = 16.294 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236007] = { config_id = 236007, gadget_id = 70310170, pos = { x = 229.907, y = 141.629, z = 154.471 }, rot = { x = 7.293, y = 346.592, z = 358.776 }, level = 20, area_id = 402 },
	[236008] = { config_id = 236008, gadget_id = 70310171, pos = { x = 227.937, y = 141.693, z = 153.136 }, rot = { x = 359.323, y = 359.919, z = 359.963 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-水平转动
	[236009] = { config_id = 236009, gadget_id = 70310170, pos = { x = 227.716, y = 140.594, z = 162.598 }, rot = { x = 5.382, y = 313.929, z = 356.118 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236012] = { config_id = 236012, gadget_id = 70310170, pos = { x = 223.115, y = 140.584, z = 166.845 }, rot = { x = 47.329, y = 107.282, z = 11.715 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236013] = { config_id = 236013, gadget_id = 70310170, pos = { x = 230.893, y = 131.133, z = 164.467 }, rot = { x = 35.941, y = 91.320, z = 7.444 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236014] = { config_id = 236014, gadget_id = 70310170, pos = { x = 242.794, y = 122.369, z = 164.677 }, rot = { x = 10.534, y = 26.136, z = 350.200 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[236015] = { config_id = 236015, gadget_id = 70310170, pos = { x = 230.219, y = 184.577, z = 164.284 }, rot = { x = 30.892, y = 90.553, z = 7.021 }, level = 20, area_id = 402 }
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
	monsters = {
		{ config_id = 236001, monster_id = 21010101, pos = { x = 231.966, y = 141.029, z = 181.792 }, rot = { x = 0.000, y = 159.815, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 402 }
	},
	gadgets = {
		{ config_id = 236005, gadget_id = 70220065, pos = { x = 231.008, y = 141.059, z = 178.902 }, rot = { x = 1.648, y = 43.098, z = 359.970 }, level = 20, area_id = 402 },
		{ config_id = 236010, gadget_id = 70211165, pos = { x = 245.427, y = 139.705, z = 188.627 }, rot = { x = 0.000, y = 257.114, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 236011, gadget_id = 70220065, pos = { x = 224.654, y = 200.681, z = 178.142 }, rot = { x = 1.648, y = 43.098, z = 359.970 }, level = 20, area_id = 402 }
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
		gadgets = { 236014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = tag1,
		monsters = { },
		gadgets = { 236007, 236008, 236009, 236012, 236013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = tag2,
		monsters = { },
		gadgets = { 236002, 236003, 236004, 236006, 236015 },
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
require "V2_8/DreamLandSuiteState"