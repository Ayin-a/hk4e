-- 基础信息
local base_info = {
	group_id = 251008008
}

-- DEFS_MISCS
local defs = {

    -----全玩法通用配置-----

    --玩法范围region cube
    play_region = 8001,

    air_wall = {8025},

    --挑战限时秒
    limit_time = 90,


    -------战斗关配置-------
    challenge_id = 2011007,

        --依次刷怪
        suite_queue = 
        {        --随机情况1
             {2,3,4,7,5,6,8,9,6,8},
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[8003] = { config_id = 8003, monster_id = 22010201, pos = { x = 397.175, y = -0.500, z = 399.409 }, rot = { x = 0.000, y = 13.197, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8004] = { config_id = 8004, monster_id = 22010401, pos = { x = 402.283, y = -0.500, z = 396.972 }, rot = { x = 0.000, y = 92.545, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8005] = { config_id = 8005, monster_id = 22010101, pos = { x = 401.399, y = -0.500, z = 401.799 }, rot = { x = 0.000, y = 159.552, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8007] = { config_id = 8007, monster_id = 22010401, pos = { x = 399.882, y = -0.500, z = 399.997 }, rot = { x = 0.000, y = 205.694, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8008] = { config_id = 8008, monster_id = 22010201, pos = { x = 393.372, y = -0.500, z = 405.131 }, rot = { x = 0.000, y = 64.778, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8009] = { config_id = 8009, monster_id = 22010101, pos = { x = 399.980, y = -0.500, z = 394.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8012] = { config_id = 8012, monster_id = 22010201, pos = { x = 400.553, y = -0.500, z = 396.708 }, rot = { x = 0.000, y = 135.967, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8013] = { config_id = 8013, monster_id = 22010101, pos = { x = 404.324, y = -0.500, z = 403.772 }, rot = { x = 0.000, y = 157.563, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8015] = { config_id = 8015, monster_id = 22010401, pos = { x = 400.514, y = -0.500, z = 403.306 }, rot = { x = 0.000, y = 310.741, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8016] = { config_id = 8016, monster_id = 22010201, pos = { x = 395.117, y = -0.500, z = 404.196 }, rot = { x = 0.000, y = 42.763, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8017] = { config_id = 8017, monster_id = 22010301, pos = { x = 396.480, y = -0.500, z = 400.293 }, rot = { x = 0.000, y = 284.945, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8020] = { config_id = 8020, monster_id = 22010201, pos = { x = 395.205, y = -0.500, z = 395.901 }, rot = { x = 0.000, y = 300.171, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8021] = { config_id = 8021, monster_id = 22010101, pos = { x = 400.285, y = -0.500, z = 404.268 }, rot = { x = 0.000, y = 107.930, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8022] = { config_id = 8022, monster_id = 22010101, pos = { x = 400.233, y = -0.500, z = 395.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8027] = { config_id = 8027, monster_id = 22010201, pos = { x = 395.112, y = -0.500, z = 405.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8029] = { config_id = 8029, monster_id = 22010401, pos = { x = 398.247, y = -0.500, z = 401.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8031] = { config_id = 8031, monster_id = 22010201, pos = { x = 395.455, y = -0.500, z = 401.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8032] = { config_id = 8032, monster_id = 22010101, pos = { x = 400.122, y = -0.500, z = 405.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8033] = { config_id = 8033, monster_id = 22010301, pos = { x = 398.946, y = -0.500, z = 398.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8034] = { config_id = 8034, monster_id = 22010201, pos = { x = 395.468, y = -0.500, z = 395.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8037] = { config_id = 8037, monster_id = 22010201, pos = { x = 396.608, y = -0.500, z = 405.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8038] = { config_id = 8038, monster_id = 22010401, pos = { x = 398.119, y = -0.500, z = 398.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8039] = { config_id = 8039, monster_id = 22010101, pos = { x = 400.552, y = -0.500, z = 401.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } },
	[8040] = { config_id = 8040, monster_id = 22010101, pos = { x = 400.597, y = -0.500, z = 398.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4182 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[8002] = { config_id = 8002, gadget_id = 70320020, pos = { x = 394.051, y = -1.110, z = 396.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8006] = { config_id = 8006, gadget_id = 70320020, pos = { x = 398.148, y = -1.114, z = 394.147 }, rot = { x = 0.000, y = 349.848, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8010] = { config_id = 8010, gadget_id = 70220010, pos = { x = 404.757, y = -1.071, z = 392.964 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[8011] = { config_id = 8011, gadget_id = 70320020, pos = { x = 393.458, y = -1.100, z = 407.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8014] = { config_id = 8014, gadget_id = 70220010, pos = { x = 405.906, y = -1.071, z = 396.708 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[8018] = { config_id = 8018, gadget_id = 70320020, pos = { x = 392.896, y = -1.109, z = 403.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8019] = { config_id = 8019, gadget_id = 70220010, pos = { x = 405.606, y = -1.071, z = 402.935 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[8023] = { config_id = 8023, gadget_id = 70220010, pos = { x = 404.757, y = -1.071, z = 407.073 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[8024] = { config_id = 8024, gadget_id = 70320020, pos = { x = 392.598, y = -1.107, z = 399.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8025] = { config_id = 8025, gadget_id = 70380323, pos = { x = 400.000, y = -1.662, z = 400.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[8026] = { config_id = 8026, gadget_id = 70320020, pos = { x = 391.318, y = -1.108, z = 404.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8028] = { config_id = 8028, gadget_id = 70320020, pos = { x = 393.896, y = -1.111, z = 404.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8030] = { config_id = 8030, gadget_id = 70220010, pos = { x = 405.406, y = -1.071, z = 404.882 }, rot = { x = 0.000, y = 349.848, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8035] = { config_id = 8035, gadget_id = 70320020, pos = { x = 392.246, y = -1.100, z = 398.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[8036] = { config_id = 8036, gadget_id = 70220010, pos = { x = 405.842, y = -1.071, z = 405.596 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[8041] = { config_id = 8041, gadget_id = 70220010, pos = { x = 405.842, y = -1.071, z = 399.921 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[8001] = { config_id = 8001, shape = RegionShape.CUBIC, size = { x = 50.000, y = 40.000, z = 50.000 }, pos = { x = 400.000, y = -1.670, z = 400.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { },
		regions = { 8001 },
		triggers = { "ENTER_REGION_8001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 火把学习关卡,
		monsters = { 8008, 8037 },
		gadgets = { 8011, 8026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 水琥珀学习关卡,
		monsters = { 8013 },
		gadgets = { 8019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 混合深渊法师玩法,
		monsters = { 8003, 8004, 8005 },
		gadgets = { 8006, 8030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 混合元素+策略,
		monsters = { 8007, 8009, 8027 },
		gadgets = { 8014, 8018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 混合元素+策略,
		monsters = { 8016, 8020, 8021, 8022 },
		gadgets = { 8010, 8023, 8024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 混合元素+策略水冰元素破盾学习关卡,
		monsters = { 8012, 8015, 8017 },
		gadgets = { 8002, 8028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 8031, 8032, 8033, 8034 },
		gadgets = { 8035, 8036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 8029, 8038, 8039, 8040 },
		gadgets = { 8041 },
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

require "V3_2/CharAmuse_Retrans"
require "V3_2/CharAmuse_Battle"
require "MonsterQuickDeath"