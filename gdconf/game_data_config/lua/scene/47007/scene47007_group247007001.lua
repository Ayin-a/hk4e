-- 基础信息
local base_info = {
	group_id = 247007001
}

-- DEFS_MISCS
local MainGroupID = 247007001
local MonsterAffix = 1009
local ReminderList = {470060101,470060304,470060404,470060504,470060604}
local PointToReminderList = {
        {configID = 0, reminderID = 470070901},
}
local challengeList = {
{ monsterPool = 28001, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28002, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28003, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28004, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28005, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28006, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28007, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28008, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28009, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28010, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28011, challengeParamList = {2, 2017, -1, 7, 0, 0}, monsterPoolParamList = {total_count=7, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28012, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28013, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28014, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28015, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28016, challengeParamList = {2, 2017, -1, 12, 0, 0}, monsterPoolParamList = {total_count=12, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28017, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28018, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28019, challengeParamList = {2, 2017, -1, 1, 0, 0}, monsterPoolParamList = {total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28020, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28021, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count= 3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28022, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28023, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28024, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28025, challengeParamList = {2, 2017, -1, 7, 0, 0}, monsterPoolParamList = {total_count=7, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28026, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28027, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28028, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28029, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28030, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28031, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28032, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28033, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28034, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28035, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28036, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28037, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
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
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.356, y = 0.004, z = 13.008 } },
	{ config_id = 1007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 239.024, y = 0.082, z = 269.789 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1012, gadget_id = 70310145, pos = { x = 142.349, y = 0.013, z = 68.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
	},
	regions = {
		{ config_id = 1002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1.216, y = 0.076, z = 109.619 } },
		{ config_id = 1003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 26.894, y = 0.083, z = 159.968 } },
		{ config_id = 1004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 108.303, y = 0.082, z = 240.315 } },
		{ config_id = 1005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 291.820, y = 0.825, z = 319.798 } },
		{ config_id = 1006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 80.445, y = 2.482, z = 189.520 } },
		{ config_id = 1008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 318.931, y = 0.172, z = 269.507 } },
		{ config_id = 1009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 328.986, y = -1.866, z = 353.308 } },
		{ config_id = 1010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 319.743, y = 0.118, z = 427.597 } }
	}
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
		regions = { 1001, 1007 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Main"