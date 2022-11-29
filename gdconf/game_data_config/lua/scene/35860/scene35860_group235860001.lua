-- 基础信息
local base_info = {
	group_id = 235860001
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = true,
    nextGroupId = 235860002,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23001,

    -- 开启挑战的场景物件id
    startId = 1001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 1002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35001},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 1, max_count = 5, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35002},
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
	[1001] = { config_id = 1001, gadget_id = 70360010, pos = { x = 520.444, y = 103.479, z = 372.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[1027] = { config_id = 1027, gadget_id = 70950156, pos = { x = 520.152, y = 104.069, z = 372.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1002] = { config_id = 1002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.456, y = 103.526, z = 372.108 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 1003, pos = { x = 525.545, y = 103.643, z = 366.202 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1004, pos = { x = 527.237, y = 103.718, z = 367.961 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1005, pos = { x = 523.370, y = 103.984, z = 364.659 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1006, pos = { x = 528.727, y = 103.844, z = 369.513 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1007, pos = { x = 521.691, y = 103.847, z = 363.092 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1008, pos = { x = 525.890, y = 103.419, z = 361.630 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 1009, pos = { x = 528.122, y = 103.464, z = 363.129 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1010, pos = { x = 530.555, y = 103.492, z = 365.205 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1011, pos = { x = 512.672, y = 103.721, z = 370.002 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1012, pos = { x = 518.438, y = 103.912, z = 363.873 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1013, pos = { x = 514.068, y = 103.984, z = 368.569 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1014, pos = { x = 516.921, y = 104.119, z = 365.617 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 1015, pos = { x = 515.560, y = 104.008, z = 367.164 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 1016, pos = { x = 512.818, y = 103.618, z = 364.175 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 1017, pos = { x = 514.971, y = 103.859, z = 362.123 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 1018, pos = { x = 511.128, y = 103.432, z = 366.150 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 1019, pos = { x = 525.664, y = 103.905, z = 377.269 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 1020, pos = { x = 527.025, y = 103.852, z = 375.719 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 1021, pos = { x = 524.168, y = 103.960, z = 378.672 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1022, pos = { x = 528.542, y = 104.018, z = 373.973 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1023, pos = { x = 522.772, y = 103.929, z = 380.095 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1024, pos = { x = 527.385, y = 103.749, z = 378.746 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 1025, pos = { x = 529.540, y = 103.872, z = 376.695 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 1026, pos = { x = 525.688, y = 103.842, z = 380.702 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 }
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
		gadgets = { 1001, 1027 },
		regions = { 1002 },
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