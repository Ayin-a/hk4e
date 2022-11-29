-- 基础信息
local base_info = {
	group_id = 220134026
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[4001] = 4002,
                        	[4002] = 4003,
		[4003] = 4001,
                                [4004] = 4002,
                                [4005] = 4004,
                                [4006] = 4005,
                },
                --形态2
                [2] = 
                {
                       	[4001] = 4003,
                        	[4002] = 4004,
		[4003] = 4004,
                                [4004] = 4006,
                                [4005] = 4001,
                                [4006] = 4001,
                },
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
	[26001] = { config_id = 26001, gadget_id = 70310280, pos = { x = 469.475, y = 636.170, z = -1607.417 }, rot = { x = 0.000, y = 313.275, z = 0.000 }, level = 1 },
	[26007] = { config_id = 26007, gadget_id = 70310279, pos = { x = 469.542, y = 635.095, z = -1607.385 }, rot = { x = 0.000, y = 309.993, z = 0.000 }, level = 1 },
	[26008] = { config_id = 26008, gadget_id = 70310274, pos = { x = 469.631, y = 636.557, z = -1607.220 }, rot = { x = 0.000, y = 0.988, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26009] = { config_id = 26009, gadget_id = 70310275, pos = { x = 469.592, y = 635.722, z = -1607.392 }, rot = { x = 0.000, y = 117.128, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26010] = { config_id = 26010, gadget_id = 70310276, pos = { x = 468.877, y = 638.234, z = -1607.324 }, rot = { x = 0.000, y = 115.421, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26011] = { config_id = 26011, gadget_id = 70310277, pos = { x = 469.746, y = 639.424, z = -1607.512 }, rot = { x = 0.000, y = 140.145, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26012] = { config_id = 26012, gadget_id = 70310278, pos = { x = 469.442, y = 635.994, z = -1607.322 }, rot = { x = 0.000, y = 172.265, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26013] = { config_id = 26013, gadget_id = 70310276, pos = { x = 468.877, y = 638.234, z = -1607.324 }, rot = { x = 0.000, y = 115.421, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[26014] = { config_id = 26014, gadget_id = 70310273, pos = { x = 469.556, y = 636.007, z = -1607.325 }, rot = { x = 0.000, y = 0.094, z = 0.000 }, level = 1 }
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
	suite = 10,
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
		gadgets = { 26014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 26008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 26009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 26010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 26011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 26012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 26013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 26007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 26001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
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

require "V2_8/ConstellationPattern"