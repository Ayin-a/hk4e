-- 基础信息
local base_info = {
	group_id = 251009001
}

-- DEFS_MISCS
require "V3_2/Activity_BattleMushroomMonster_MonsterConfig"
local random_strategy_info={
        [1]=random_strategy_02,
        [2]=random_strategy_03,
        [3]=random_strategy_04,
        [4]=random_strategy_05,
        [5]=random_strategy_06,
        [6]=random_strategy_07,
        [7]=random_strategy_08,
        [8]=random_strategy_09,
        [9]=random_strategy_01
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1023, monster_id = 36090190, pos = { x = 524.746, y = 103.928, z = 373.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1024, monster_id = 36090290, pos = { x = 524.755, y = 103.770, z = 375.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1025, monster_id = 36090390, pos = { x = 526.956, y = 103.967, z = 371.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1026, monster_id = 36090490, pos = { x = 526.299, y = 103.973, z = 377.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1027, monster_id = 36090590, pos = { x = 526.837, y = 104.053, z = 373.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1028, monster_id = 36090690, pos = { x = 524.557, y = 103.954, z = 377.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1029, monster_id = 36090790, pos = { x = 526.492, y = 103.815, z = 379.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1030, monster_id = 36090890, pos = { x = 526.667, y = 103.701, z = 375.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1031, monster_id = 36090990, pos = { x = 524.557, y = 104.010, z = 379.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1032, monster_id = 36091090, pos = { x = 524.916, y = 103.902, z = 371.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5213 }, isPartner = true },
	{ config_id = 1037, monster_id = 21010101, pos = { x = 507.163, y = 103.463, z = 366.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, monster_id = 21010101, pos = { x = 507.017, y = 103.463, z = 363.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1039, monster_id = 21010101, pos = { x = 507.012, y = 103.463, z = 359.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, monster_id = 21020201, pos = { x = 506.776, y = 103.463, z = 365.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1041, monster_id = 21020201, pos = { x = 506.348, y = 103.463, z = 361.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1042, monster_id = 21020501, pos = { x = 504.573, y = 103.463, z = 364.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, monster_id = 21010401, pos = { x = 496.669, y = 107.061, z = 371.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, monster_id = 21010401, pos = { x = 497.126, y = 103.463, z = 366.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, monster_id = 21010401, pos = { x = 498.236, y = 103.463, z = 361.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1046, monster_id = 21010401, pos = { x = 499.743, y = 103.463, z = 357.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1047, monster_id = 24010101, pos = { x = 505.896, y = 103.463, z = 364.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 100 },
	{ config_id = 1048, monster_id = 24010101, pos = { x = 504.656, y = 103.463, z = 362.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 选择挑战类型
	{ config_id = 1001, gadget_id = 70360002, pos = { x = 515.627, y = 104.071, z = 365.899 }, rot = { x = 0.000, y = 80.930, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350023, pos = { x = 516.751, y = 103.818, z = 361.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350035, pos = { x = 516.751, y = 103.894, z = 363.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 蕈兽1
	{ config_id = 1033, gadget_id = 70360002, pos = { x = 530.348, y = 103.429, z = 366.637 }, rot = { x = 0.000, y = 75.312, z = 0.000 }, level = 1 },
	-- 蕈兽2
	{ config_id = 1034, gadget_id = 70360002, pos = { x = 529.465, y = 103.831, z = 371.236 }, rot = { x = 0.000, y = 82.410, z = 0.000 }, level = 1 },
	-- 蕈兽3
	{ config_id = 1035, gadget_id = 70360002, pos = { x = 528.632, y = 103.790, z = 376.292 }, rot = { x = 0.000, y = 333.900, z = 0.000 }, level = 1 },
	-- 蕈兽4
	{ config_id = 1036, gadget_id = 70360002, pos = { x = 528.750, y = 103.601, z = 381.153 }, rot = { x = 0.000, y = 338.662, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70950156, pos = { x = 520.152, y = 104.090, z = 372.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 1004, pos = { x = 512.992, y = 103.853, z = 366.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1005, pos = { x = 517.375, y = 104.210, z = 377.618 }, rot = { x = 0.000, y = 86.999, z = 0.000 } },
	{ config_id = 1006, pos = { x = 512.567, y = 103.746, z = 377.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1007, pos = { x = 519.467, y = 104.141, z = 380.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1008, pos = { x = 511.986, y = 103.933, z = 373.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1009, pos = { x = 511.058, y = 103.660, z = 368.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1010, pos = { x = 518.520, y = 103.924, z = 370.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1011, pos = { x = 514.343, y = 103.667, z = 370.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1012, pos = { x = 517.541, y = 103.700, z = 372.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1013, pos = { x = 522.854, y = 103.782, z = 367.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1014, pos = { x = 522.079, y = 103.870, z = 376.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1015, pos = { x = 521.467, y = 103.978, z = 371.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1016, pos = { x = 514.905, y = 104.009, z = 379.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1017, pos = { x = 517.396, y = 103.932, z = 374.633 }, rot = { x = 0.000, y = 82.999, z = 0.000 } },
	{ config_id = 1018, pos = { x = 517.658, y = 103.831, z = 371.289 }, rot = { x = 0.000, y = 75.559, z = 0.000 } },
	{ config_id = 1019, pos = { x = 518.402, y = 103.982, z = 368.353 }, rot = { x = 0.000, y = 63.469, z = 0.000 } },
	{ config_id = 1020, pos = { x = 515.061, y = 103.962, z = 368.657 }, rot = { x = 0.000, y = 54.999, z = 0.000 } },
	{ config_id = 1021, pos = { x = 514.281, y = 103.651, z = 371.985 }, rot = { x = 0.000, y = 78.000, z = 0.000 } },
	{ config_id = 1022, pos = { x = 514.252, y = 104.048, z = 375.130 }, rot = { x = 0.000, y = 88.999, z = 0.000 } }
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
		gadgets = { 1001, 1033, 1034, 1035, 1036, 1049 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 进攻关,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 防守关,
		monsters = { },
		gadgets = { 1002, 1003 },
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

require "V3_2/Activity_BattleMushroomMonster"