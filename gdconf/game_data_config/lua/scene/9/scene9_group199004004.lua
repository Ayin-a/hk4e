-- 基础信息
local base_info = {
	group_id = 199004004
}

-- DEFS_MISCS
defs = {
    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 3,

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_BuDing_MDLY"] = {3},
        ["2_8_BuDing_MDDQ"] = {2},
        ["2_8_BuDing_DQLY"] = {2, 3, 4},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {
    	4004, 4005, 4006
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
	gadgets = {
		{ config_id = 4001, gadget_id = 70220013, pos = { x = -317.598, y = 121.490, z = -617.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4002, gadget_id = 70220013, pos = { x = -323.133, y = 122.196, z = -616.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4003, gadget_id = 70220013, pos = { x = -332.164, y = 123.409, z = -614.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4004, gadget_id = 70310001, pos = { x = -322.101, y = 122.580, z = -619.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4005, gadget_id = 70310001, pos = { x = -330.284, y = 123.835, z = -618.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4006, gadget_id = 70310001, pos = { x = -317.436, y = 121.963, z = -620.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
		{ config_id = 4007, gadget_id = 70211001, pos = { x = -323.259, y = 121.684, z = -613.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
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