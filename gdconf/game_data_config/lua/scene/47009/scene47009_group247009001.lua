-- 基础信息
local base_info = {
	group_id = 247009001
}

-- DEFS_MISCS
local MainGroupID = 247009001

local MonsterAffix = 1009
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
{ monsterPool = 28040, challengeParamList = {2, 2017, -1, 9, 0, 0}, monsterPoolParamList = {total_count=9, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28041, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28042, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28043, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28044, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28045, challengeParamList = {2, 2017, -1, 18, 0, 0}, monsterPoolParamList = {total_count=18, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28046, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count= 3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28047, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28048, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28049, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28050, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28051, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28052, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28053, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28054, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28055, challengeParamList = {2, 2017, -1, 16, 0, 0}, monsterPoolParamList = {total_count=16, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28056, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28057, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28058, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28059, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28060, challengeParamList = {2, 2017, -1, 21, 0, 0}, monsterPoolParamList = {total_count=21, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28061, challengeParamList = {2, 2017, -1, 7, 0, 0}, monsterPoolParamList = {total_count=7, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28062, challengeParamList = {2, 2017, -1, 7, 0, 0}, monsterPoolParamList = {total_count=7, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28063, challengeParamList = {2, 2017, -1, 7, 0, 0}, monsterPoolParamList = {total_count=7, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 28064, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
}
local PointToReminderList = {
        {configID = 1005, reminderID = 470070101},
        {configID = 1007, reminderID = 470070201},
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
		{ config_id = 1005, gadget_id = 70310145, pos = { x = -79.812, y = 1.172, z = 240.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
		{ config_id = 1006, gadget_id = 70310145, pos = { x = 7.364, y = 4.807, z = 348.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
		{ config_id = 1007, gadget_id = 70310145, pos = { x = 79.670, y = 0.191, z = 480.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
		{ config_id = 1008, gadget_id = 70310145, pos = { x = -5.427, y = 1.348, z = 510.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true }
	},
	regions = {
		{ config_id = 1001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -12.441, y = 0.004, z = -0.318 } },
		{ config_id = 1002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 10.559, y = 0.004, z = -0.268 } },
		{ config_id = 1003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.337, y = 0.004, z = 9.803 } },
		{ config_id = 1004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 0.072, y = 0.390, z = -10.190 } }
	},
	triggers = {
		{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
		{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
		{ config_id = 1001003, name = "ENTER_REGION_1003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
		{ config_id = 1001004, name = "ENTER_REGION_1004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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

require "V2_2/RogueDungeon_Main"