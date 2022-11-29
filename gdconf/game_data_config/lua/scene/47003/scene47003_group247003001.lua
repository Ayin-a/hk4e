-- 基础信息
local base_info = {
	group_id = 247003001
}

-- DEFS_MISCS
local MainGroupID = 247003001
local MonsterAffix = 1009
local challengeList = {
{ monsterPool = 27001, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=3, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27002, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27003, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27004, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27005, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27006, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27007, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27008, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27009, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27010, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27011, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27012, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27013, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27014, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27015, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27016, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27017, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27018, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27019, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27020, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27021, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27022, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27023, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 27024, challengeParamList = {2, 2017, -1, 14, 0, 0}, monsterPoolParamList = {total_count=14, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
}

local PointToReminderList = {
        {configID = 1001, reminderID = 470071101},
        {configID = 1002, reminderID = 470071201},
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
		{ config_id = 1001, gadget_id = 70310145, pos = { x = 256.141, y = 1.229, z = -7.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 1002, gadget_id = 70310145, pos = { x = 286.547, y = 0.729, z = 243.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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