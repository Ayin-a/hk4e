-- 基础信息
local base_info = {
	group_id = 247002001
}

-- DEFS_MISCS
local MainGroupID = 247002001
local MonsterAffix = 1009
local challengeList = {
{ monsterPool = 26001, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24002, challengeParamList = {2, 2017, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24003, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24004, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24005, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24006, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24007, challengeParamList = {2, 2017, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24008, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24009, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24010, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24011, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24012, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24013, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24014, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24015, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24016, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=6, max_count=6, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24017, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24018, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24019, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24020, challengeParamList = {2, 2017, -1, 5, 0, 0}, monsterPoolParamList = {total_count=5, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24021, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24022, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24023, challengeParamList = {2, 2017, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24024, challengeParamList = {2, 2017, -1, 4, 0, 0}, monsterPoolParamList = {total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24025, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24026, challengeParamList = {2, 2017, -1, 6, 0, 0}, monsterPoolParamList = {total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24027, challengeParamList = {2, 2017, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 24028, challengeParamList = {2, 2017, -1, 8, 0, 0}, monsterPoolParamList = {total_count=8, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
}

local PointToReminderList = {
        {configID = 1001, reminderID = 470070701},
        {configID = 1002, reminderID = 470070801},
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
		{ config_id = 1001, gadget_id = 70310145, pos = { x = 403.889, y = -0.876, z = 455.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
		{ config_id = 1002, gadget_id = 70310145, pos = { x = 323.882, y = 1.206, z = 339.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
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