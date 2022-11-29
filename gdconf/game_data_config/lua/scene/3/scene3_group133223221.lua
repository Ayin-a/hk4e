-- 基础信息
local base_info = {
	group_id = 133223221
}

-- DEFS_MISCS
defs = {
        group_id = 133223221,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = true, --是否有多个雷鸟雕像
        statuesMap = 
        {
 --雷鸟雕像和需要切出来的Suite的对应表
                [221001] = 3,
	 [221002] = 2,
	[221003] = 4,
	[221004] = 5,
	[221005] = 6,
        },
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
	{ config_id = 221001, gadget_id = 70290160, pos = { x = -5971.166, y = 179.673, z = -2541.337 }, rot = { x = 348.343, y = 222.211, z = 355.092 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221002, gadget_id = 70290160, pos = { x = -6000.022, y = 179.787, z = -2537.476 }, rot = { x = 350.177, y = 179.989, z = 347.895 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221003, gadget_id = 70290160, pos = { x = -5952.464, y = 178.728, z = -2557.375 }, rot = { x = 344.170, y = 301.848, z = 356.272 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221004, gadget_id = 70290160, pos = { x = -5965.228, y = 178.605, z = -2583.879 }, rot = { x = 354.652, y = 51.609, z = 3.251 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221005, gadget_id = 70290160, pos = { x = -5976.026, y = 179.428, z = -2574.887 }, rot = { x = 12.149, y = 157.141, z = 289.920 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221006, gadget_id = 70230053, pos = { x = -5976.842, y = 181.933, z = -2572.905 }, rot = { x = 72.089, y = 237.235, z = 55.927 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221007, gadget_id = 70230057, pos = { x = -5964.971, y = 181.274, z = -2585.438 }, rot = { x = 73.812, y = 45.858, z = 89.357 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221008, gadget_id = 70230054, pos = { x = -5950.393, y = 182.399, z = -2558.318 }, rot = { x = 283.729, y = 252.988, z = 180.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221009, gadget_id = 70230052, pos = { x = -5969.993, y = 184.514, z = -2538.387 }, rot = { x = 66.958, y = 195.342, z = 19.409 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 221010, gadget_id = 70230056, pos = { x = -6000.140, y = 182.125, z = -2533.686 }, rot = { x = 81.629, y = 284.631, z = 60.016 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true }
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
		gadgets = { 221001, 221002, 221003, 221004, 221005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 221010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 221009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 221008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 221007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 221006 },
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

require "V2_2/TsurumiBirdFather"