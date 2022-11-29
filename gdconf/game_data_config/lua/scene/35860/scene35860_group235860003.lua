-- 基础信息
local base_info = {
	group_id = 235860003
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = false,
    nextGroupId = -1,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23003,

    -- 开启挑战的场景物件id
    startId = 3001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 3002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35005},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 2, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35006},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 2, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
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
	[3001] = { config_id = 3001, gadget_id = 70360010, pos = { x = 520.677, y = 103.522, z = 372.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	[3002] = { config_id = 3002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.526, y = 103.665, z = 371.702 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 3003, pos = { x = 525.676, y = 103.771, z = 365.872 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3004, pos = { x = 527.368, y = 103.835, z = 367.632 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3005, pos = { x = 523.501, y = 104.093, z = 364.330 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3006, pos = { x = 528.858, y = 103.959, z = 369.183 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 3007, pos = { x = 521.821, y = 103.961, z = 362.762 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 3008, pos = { x = 526.020, y = 103.542, z = 361.301 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 3009, pos = { x = 528.253, y = 103.579, z = 362.800 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 3010, pos = { x = 530.686, y = 103.616, z = 364.876 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 3011, pos = { x = 512.803, y = 103.841, z = 369.672 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3012, pos = { x = 518.569, y = 104.037, z = 363.543 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3013, pos = { x = 514.199, y = 104.102, z = 368.239 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3014, pos = { x = 517.052, y = 104.237, z = 365.287 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 3015, pos = { x = 515.691, y = 104.126, z = 366.834 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 3016, pos = { x = 512.950, y = 103.727, z = 363.846 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 3017, pos = { x = 515.102, y = 103.975, z = 361.794 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 3018, pos = { x = 511.258, y = 103.546, z = 365.821 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 3019, pos = { x = 525.795, y = 104.025, z = 376.940 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 3020, pos = { x = 527.156, y = 103.976, z = 375.389 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 3021, pos = { x = 524.299, y = 104.076, z = 378.343 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3022, pos = { x = 528.672, y = 104.142, z = 373.644 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3023, pos = { x = 522.903, y = 104.050, z = 379.766 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3024, pos = { x = 527.516, y = 103.873, z = 378.417 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 3025, pos = { x = 529.670, y = 103.991, z = 376.366 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 3026, pos = { x = 525.819, y = 103.965, z = 380.373 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 }
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
		gadgets = { 3001 },
		regions = { 3002 },
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