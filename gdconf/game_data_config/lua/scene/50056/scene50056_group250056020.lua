-- 基础信息
local base_info = {
	group_id = 250056020
}

-- DEFS_MISCS
local challengeList = {
{ monsterPool = 17001, challengeParamList = {2, 1, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=6, max_count=6, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17002, challengeParamList = {2, 1, -1, 12, 0, 0}, monsterPoolParamList = {total_count=12, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17003, challengeParamList = {2, 1, -1, 13, 0, 0}, monsterPoolParamList = {total_count=13, min_count=6, max_count=6, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17004, challengeParamList = {2, 1, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17005, challengeParamList = {2, 1, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17006, challengeParamList = {2, 1, -1, 10, 0, 0}, monsterPoolParamList = {total_count=10, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17007, challengeParamList = {2, 1, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17008, challengeParamList = {2, 1, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17009, challengeParamList = {2, 1, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17010, challengeParamList = {2, 1, -1, 2, 0, 0}, monsterPoolParamList = {total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17011, challengeParamList = {2, 1, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17012, challengeParamList = {2, 1, -1, 14, 0, 0}, monsterPoolParamList = {total_count=14, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17013, challengeParamList = {2, 1, -1, 15, 0, 0}, monsterPoolParamList = {total_count=15, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17014, challengeParamList = {2, 1, -1, 12, 0, 0}, monsterPoolParamList = {total_count=12, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17015, challengeParamList = {2, 1, -1, 11, 0, 0}, monsterPoolParamList = {total_count=11, min_count=5, max_count=5, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17016, challengeParamList = {2, 1, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
{ monsterPool = 17017, challengeParamList = {2, 1, -1, 3, 0, 0}, monsterPoolParamList = {total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0}, extraMonsterPool = 0, extraMonsterPoolParamList = {} },
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
	{ config_id = 20001, gadget_id = 70900205, pos = { x = -215.275, y = -1.173, z = 72.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 20001 },
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