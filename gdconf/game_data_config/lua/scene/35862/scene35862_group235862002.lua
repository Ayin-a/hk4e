-- 基础信息
local base_info = {
	group_id = 235862002
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = false,
    nextGroupId = 235862003,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23008,

    -- 开启挑战的场景物件id
    startId = 2001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 2002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35015},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 2, max_count = 5, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35016},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 4, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
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
	[2001] = { config_id = 2001, gadget_id = 70360010, pos = { x = 520.576, y = 103.544, z = 372.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	[2002] = { config_id = 2002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.456, y = 103.553, z = 372.108 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2003, pos = { x = 525.463, y = 103.722, z = 366.227 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2004, pos = { x = 527.155, y = 103.792, z = 367.986 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2005, pos = { x = 523.288, y = 104.045, z = 364.684 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 2006, pos = { x = 528.645, y = 103.922, z = 369.538 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 2007, pos = { x = 521.609, y = 103.915, z = 363.117 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 2008, pos = { x = 525.807, y = 103.502, z = 361.655 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 2009, pos = { x = 528.041, y = 103.535, z = 363.155 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2010, pos = { x = 530.473, y = 103.563, z = 365.230 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 2011, pos = { x = 512.591, y = 103.783, z = 370.027 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2012, pos = { x = 518.357, y = 104.036, z = 363.898 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2013, pos = { x = 513.986, y = 104.014, z = 368.594 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 2014, pos = { x = 516.839, y = 104.218, z = 365.642 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 2015, pos = { x = 515.478, y = 104.073, z = 367.189 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 2016, pos = { x = 512.737, y = 103.657, z = 364.200 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 2017, pos = { x = 514.890, y = 103.930, z = 362.149 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 2018, pos = { x = 511.046, y = 103.491, z = 366.175 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 2019, pos = { x = 525.582, y = 104.007, z = 377.294 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 2020, pos = { x = 526.943, y = 103.892, z = 375.744 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 2021, pos = { x = 524.085, y = 104.035, z = 378.697 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2022, pos = { x = 528.459, y = 104.076, z = 373.998 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2023, pos = { x = 522.690, y = 104.005, z = 380.121 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 2024, pos = { x = 527.303, y = 103.848, z = 378.771 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 2025, pos = { x = 529.457, y = 103.923, z = 376.720 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 2026, pos = { x = 525.606, y = 103.864, z = 380.728 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 }
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