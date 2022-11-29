-- 基础信息
local base_info = {
	group_id = 235861001
}

-- DEFS_MISCS
local defs = 
{
    isStartLevel = true,
    nextGroupId = 235861002,
    -- 对应数据表中的关卡id,暂时不用管，配了也没用
    levelId = 1,

    -- 本轮对应的gallery id
    galleryId = 23004,

    -- 开启挑战的场景物件id
    startId = 1001,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 1002,

-- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35007},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 999, min_count = 2, max_count = 5, tag = 0, fill_time = 0, fill_count = 0, is_ordered = true, is_tag_bit_match = true},
        },
        {
            pool_list = {35008},
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
	[1001] = { config_id = 1001, gadget_id = 70360010, pos = { x = 520.780, y = 103.522, z = 372.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[1027] = { config_id = 1027, gadget_id = 70950156, pos = { x = 520.152, y = 104.001, z = 372.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1002] = { config_id = 1002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 520.456, y = 103.403, z = 372.108 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 1003, pos = { x = 525.586, y = 103.575, z = 366.278 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1004, pos = { x = 527.278, y = 103.660, z = 368.037 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1005, pos = { x = 523.410, y = 103.940, z = 364.735 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1006, pos = { x = 528.768, y = 103.789, z = 369.589 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1007, pos = { x = 521.731, y = 103.793, z = 363.168 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1008, pos = { x = 525.929, y = 103.375, z = 361.705 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 1009, pos = { x = 528.163, y = 103.409, z = 363.205 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1010, pos = { x = 530.596, y = 103.417, z = 365.281 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1011, pos = { x = 512.713, y = 103.651, z = 370.078 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1012, pos = { x = 518.479, y = 103.844, z = 363.949 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1013, pos = { x = 514.108, y = 103.916, z = 368.644 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 4 },
	{ config_id = 1014, pos = { x = 516.961, y = 104.063, z = 365.693 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 1015, pos = { x = 515.600, y = 103.948, z = 367.239 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 4 },
	{ config_id = 1016, pos = { x = 512.859, y = 103.572, z = 364.251 }, rot = { x = 0.000, y = 43.748, z = 0.000 }, tag = 8 },
	{ config_id = 1017, pos = { x = 515.012, y = 103.803, z = 362.199 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 1018, pos = { x = 511.168, y = 103.377, z = 366.226 }, rot = { x = 0.000, y = 48.975, z = 0.000 }, tag = 8 },
	{ config_id = 1019, pos = { x = 525.704, y = 103.846, z = 377.345 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 1020, pos = { x = 527.066, y = 103.772, z = 375.795 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 16 },
	{ config_id = 1021, pos = { x = 524.208, y = 103.904, z = 378.748 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1022, pos = { x = 528.582, y = 103.941, z = 374.049 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1023, pos = { x = 522.813, y = 103.863, z = 380.171 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 16 },
	{ config_id = 1024, pos = { x = 527.425, y = 103.679, z = 378.822 }, rot = { x = 0.000, y = 226.463, z = 0.000 }, tag = 32 },
	{ config_id = 1025, pos = { x = 529.580, y = 103.806, z = 376.771 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 1026, pos = { x = 525.728, y = 103.764, z = 380.778 }, rot = { x = 0.000, y = 231.690, z = 0.000 }, tag = 32 },
	{ config_id = 1028, pos = { x = 524.580, y = 103.575, z = 365.373 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1029, pos = { x = 526.272, y = 103.660, z = 367.132 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1030, pos = { x = 522.404, y = 103.940, z = 363.830 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 1 },
	{ config_id = 1031, pos = { x = 527.762, y = 103.789, z = 368.684 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1032, pos = { x = 520.725, y = 103.793, z = 362.263 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 1 },
	{ config_id = 1033, pos = { x = 524.937, y = 103.375, z = 361.112 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 1034, pos = { x = 527.171, y = 103.409, z = 362.612 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1035, pos = { x = 529.604, y = 103.417, z = 364.688 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1036, pos = { x = 526.514, y = 103.375, z = 362.320 }, rot = { x = 0.000, y = 314.612, z = 0.000 }, tag = 2 },
	{ config_id = 1037, pos = { x = 528.748, y = 103.409, z = 363.820 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 },
	{ config_id = 1038, pos = { x = 531.181, y = 103.417, z = 365.896 }, rot = { x = 0.000, y = 319.839, z = 0.000 }, tag = 2 }
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