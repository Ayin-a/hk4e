-- 基础信息
local base_info = {
	group_id = 199001054
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
			[225001] = {0, 102, 103, 104},
			[225006] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[225003] = {0, 302, 303, 307},
			[225008] = {0, 308},
			[225007] = {0, 302, 303, 307},
			[225009] = {0, 308},
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
    	54011,54005
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
	[54001] = { config_id = 54001, gadget_id = 70310170, pos = { x = 354.158, y = 139.341, z = 177.858 }, rot = { x = 0.216, y = 105.358, z = 359.357 }, level = 20, area_id = 402 },
	[54003] = { config_id = 54003, gadget_id = 70310171, pos = { x = 353.388, y = 139.323, z = 179.388 }, rot = { x = 0.129, y = 97.762, z = 359.334 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-水平转动
	[54004] = { config_id = 54004, gadget_id = 70310170, pos = { x = 360.448, y = 139.383, z = 176.273 }, rot = { x = 3.651, y = 42.967, z = 356.283 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[54006] = { config_id = 54006, gadget_id = 70310170, pos = { x = 367.949, y = 139.364, z = 184.779 }, rot = { x = 14.176, y = 80.375, z = 359.251 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[54007] = { config_id = 54007, gadget_id = 70310170, pos = { x = 347.804, y = 198.963, z = 177.098 }, rot = { x = 0.216, y = 105.358, z = 359.357 }, level = 20, area_id = 402 },
	[54008] = { config_id = 54008, gadget_id = 70310171, pos = { x = 347.033, y = 198.945, z = 178.628 }, rot = { x = 0.129, y = 97.762, z = 359.334 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 小花-水平转动
	[54009] = { config_id = 54009, gadget_id = 70310170, pos = { x = 354.093, y = 199.005, z = 175.513 }, rot = { x = 3.651, y = 42.967, z = 356.283 }, level = 20, area_id = 402 },
	-- 小花-水平转动
	[54012] = { config_id = 54012, gadget_id = 70310170, pos = { x = 361.595, y = 198.986, z = 184.019 }, rot = { x = 14.176, y = 80.375, z = 359.251 }, level = 20, area_id = 402 }
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
		{ config_id = 54002, monster_id = 21010101, pos = { x = 361.418, y = 139.389, z = 179.173 }, rot = { x = 0.000, y = 159.815, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 402 }
	},
	gadgets = {
		{ config_id = 54005, gadget_id = 70220065, pos = { x = 360.460, y = 139.419, z = 176.283 }, rot = { x = 1.648, y = 43.098, z = 359.970 }, level = 20, area_id = 402 },
		{ config_id = 54010, gadget_id = 70211165, pos = { x = 374.878, y = 138.066, z = 186.007 }, rot = { x = 0.000, y = 257.114, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
		{ config_id = 54011, gadget_id = 70220065, pos = { x = 354.105, y = 199.041, z = 175.523 }, rot = { x = 1.648, y = 43.098, z = 359.970 }, level = 20, area_id = 402 }
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
		-- description = popo0,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = popo1,
		monsters = { },
		gadgets = { 54007, 54008, 54009, 54012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = popo2,
		monsters = { },
		gadgets = { 54001, 54003, 54004, 54006 },
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