-- 基础信息
local base_info = {
	group_id = 235860002
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = false,
    nextGroupId = 235860003,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23002,

    -- 开启挑战的场景物件id
    startId = 2001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 2002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35003},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 5, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35004},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 3, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
    },

    -- 第一波怪物潮持续秒数，不能大于总时间90s
    switchTime = 50,

    -- todo：临时,从1-6种选4个数字，一定是4个不同的数字，否则会报错
    sgvIdxTable = {1, 2, 3, 4},

    -- buff持续时间，通常不需要修改
    buffDuration = 15,

    -- 每轮中每阶段的最大时间（一共有3个阶段，总时长为3*30s = 90s），通常不用改
    stageMaxDuration = 40,
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
	[2001] = { config_id = 2001, gadget_id = 70360010, pos = { x = 520.688, y = 103.542, z = 372.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	[2002] = { config_id = 2002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.456, y = 103.596, z = 372.108 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2003, pos = { x = 525.616, y = 103.706, z = 366.170 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2004, pos = { x = 527.308, y = 103.793, z = 367.929 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2005, pos = { x = 523.441, y = 104.062, z = 364.627 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2006, pos = { x = 528.798, y = 103.920, z = 369.481 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 2007, pos = { x = 521.761, y = 103.921, z = 363.060 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 2008, pos = { x = 525.960, y = 103.501, z = 361.598 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 2009, pos = { x = 528.194, y = 103.538, z = 363.097 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2010, pos = { x = 530.626, y = 103.558, z = 365.173 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2011, pos = { x = 512.743, y = 103.787, z = 369.970 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2012, pos = { x = 518.509, y = 103.989, z = 363.841 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2013, pos = { x = 514.139, y = 104.046, z = 368.536 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2014, pos = { x = 516.992, y = 104.198, z = 365.585 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 2015, pos = { x = 515.630, y = 104.075, z = 367.131 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 2016, pos = { x = 512.889, y = 103.691, z = 364.143 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 2017, pos = { x = 515.042, y = 103.933, z = 362.091 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 2018, pos = { x = 511.198, y = 103.505, z = 366.118 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 2019, pos = { x = 525.734, y = 103.983, z = 377.237 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 2020, pos = { x = 527.096, y = 103.911, z = 375.687 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 2021, pos = { x = 524.238, y = 104.035, z = 378.640 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2022, pos = { x = 528.612, y = 104.081, z = 373.941 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2023, pos = { x = 522.843, y = 103.996, z = 380.063 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2024, pos = { x = 527.455, y = 103.822, z = 378.714 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 2025, pos = { x = 529.610, y = 103.938, z = 376.663 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 2026, pos = { x = 525.758, y = 103.902, z = 380.670 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 2028, pos = { x = 529.196, y = 103.558, z = 364.205 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2029, pos = { x = 526.764, y = 103.538, z = 362.129 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2030, pos = { x = 524.531, y = 103.501, z = 360.630 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 2031, pos = { x = 524.858, y = 103.706, z = 365.592 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2032, pos = { x = 526.550, y = 103.793, z = 367.351 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2033, pos = { x = 522.683, y = 104.062, z = 364.049 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2034, pos = { x = 528.040, y = 103.920, z = 368.903 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 2035, pos = { x = 521.004, y = 103.921, z = 362.481 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 }
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
		gadgets = { 2001 },
		regions = { 2002 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_0/UnstableSpray"