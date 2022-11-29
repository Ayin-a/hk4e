-- 基础信息
local base_info = {
	group_id = 235861003
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = false,
    nextGroupId = -1,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23006,

    -- 开启挑战的场景物件id
    startId = 3001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 3002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35011},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 4, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35012},
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
	[3001] = { config_id = 3001, gadget_id = 70360010, pos = { x = 520.984, y = 103.550, z = 372.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
	[3002] = { config_id = 3002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.456, y = 103.470, z = 372.108 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 3003, pos = { x = 525.574, y = 103.622, z = 366.331 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3004, pos = { x = 527.266, y = 103.713, z = 368.091 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3005, pos = { x = 523.398, y = 103.984, z = 364.789 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 3006, pos = { x = 528.756, y = 103.845, z = 369.642 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 3007, pos = { x = 521.719, y = 103.842, z = 363.221 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 3008, pos = { x = 525.918, y = 103.430, z = 361.759 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 3009, pos = { x = 528.151, y = 103.459, z = 363.259 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 3010, pos = { x = 530.584, y = 103.473, z = 365.335 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 3011, pos = { x = 512.701, y = 103.700, z = 370.131 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3012, pos = { x = 518.467, y = 103.927, z = 364.002 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3013, pos = { x = 514.096, y = 103.946, z = 368.698 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 3014, pos = { x = 516.949, y = 104.130, z = 365.746 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 3015, pos = { x = 515.588, y = 103.984, z = 367.293 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 3016, pos = { x = 512.847, y = 103.602, z = 364.304 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 3017, pos = { x = 515.000, y = 103.854, z = 362.253 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 3018, pos = { x = 511.156, y = 103.421, z = 366.280 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 3019, pos = { x = 525.692, y = 103.915, z = 377.399 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 3020, pos = { x = 527.053, y = 103.812, z = 375.848 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 3021, pos = { x = 524.196, y = 103.957, z = 378.802 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3022, pos = { x = 528.570, y = 103.990, z = 374.103 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3023, pos = { x = 522.801, y = 103.915, z = 380.225 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 3024, pos = { x = 527.413, y = 103.750, z = 378.876 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 3025, pos = { x = 529.568, y = 103.848, z = 376.824 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 3026, pos = { x = 525.716, y = 103.804, z = 380.832 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 }
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