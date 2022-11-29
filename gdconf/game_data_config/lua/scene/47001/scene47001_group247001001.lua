-- 基础信息
local base_info = {
	group_id = 247001001
}

-- DEFS_MISCS
local MainGroupID = 247001001
local MonsterAffix = 1009
local challengeList = {
{ monsterPool = 23001, challengeParamList = {2, 2017, -1, 9, 0, 0}, monsterPoolParamList = {total_count=9, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23002, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23003, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23004, challengeParamList = {2, 2017, -1, 9, 0, 0}, monsterPoolParamList = {total_count=9, min_count=4, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23005, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23006, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23007, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23008, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23009, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23010, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23011, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23012, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23013, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23014, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23015, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23016, challengeParamList = {2, 2017, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23017, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23018, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23019, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23020, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23021, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count= 3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 23022, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count= 4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
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