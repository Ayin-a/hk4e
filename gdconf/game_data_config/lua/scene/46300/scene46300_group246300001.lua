-- 基础信息
local base_info = {
	group_id = 246300001
}

-- DEFS_MISCS
defs = {
        operator_id = 1043, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400171, -- 刷下一波怪时，弹出reminder
        gallery_id = 25001,
        energy_gadget = 1045, -- 回能量物件
}


monster_list = {
    -- 第1波怪
    [1]={
        elite_monster = {1001,1002}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 54, -- 精英怪掉落的时停能量
        elite_monster_score = 75, -- 击杀精英怪的积分
        tide_mons = {1003,1004,1005,1006,1007}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 54, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 2, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第2波怪
    [2]={
        elite_monster = {1008,1009}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 54, -- 精英怪掉落的时停能量
        elite_monster_score = 75, -- 击杀精英怪的积分
        tide_mons = {1010,1011,1012,1013,1014}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 54, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 3, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第3波怪
    [3]={
        elite_monster = {1015,1016}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 72,  -- 精英怪掉落的时停能量
        elite_monster_score = 125, -- 击杀精英怪的积分
        tide_mons = {1017,1018,1019,1020,1021}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 72, -- 小怪掉落的时停能量
        tide_mons_score = 12,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 4, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第4波怪
    [4]={
        elite_monster = {1022,1023}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 72, -- 精英怪掉落的时停能量
        elite_monster_score = 125, -- 击杀精英怪的积分
        tide_mons = {1024,1025,1026,1027,1028}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 72, -- 小怪掉落的时停能量
        tide_mons_score = 12,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第5波怪
    [5]={
        
        elite_monster = {1029}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 198, -- 精英怪掉落的时停能量
        elite_monster_score = 250, -- 击杀精英怪的积分
        tide_mons = {1032,1033}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 198, -- 小怪掉落的时停能量
        tide_mons_score = 35,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 6, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第6波怪
    [6]={
        elite_monster = {1036,1037}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 198, -- 精英怪掉落的时停能量
        elite_monster_score = 250, -- 击杀精英怪的积分
        tide_mons = {1039,1040}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 198, -- 小怪掉落的时停能量
        tide_mons_score = 35,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第1波-精英
	{ config_id = 1001, monster_id = 21020201, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true },
	-- 第1波-精英
	{ config_id = 1002, monster_id = 21020201, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true },
	-- 第1波
	{ config_id = 1003, monster_id = 21010201, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第1波
	{ config_id = 1004, monster_id = 21010401, pos = { x = 524.643, y = 103.699, z = 367.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第1波
	{ config_id = 1005, monster_id = 21010201, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第1波
	{ config_id = 1006, monster_id = 21010401, pos = { x = 516.283, y = 103.563, z = 367.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第1波
	{ config_id = 1007, monster_id = 21010201, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第2波
	{ config_id = 1008, monster_id = 21020701, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true },
	-- 第2波
	{ config_id = 1009, monster_id = 21020701, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true },
	-- 第2波
	{ config_id = 1010, monster_id = 21010201, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第2波
	{ config_id = 1011, monster_id = 21010401, pos = { x = 524.643, y = 103.699, z = 367.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第2波
	{ config_id = 1012, monster_id = 21030101, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第2波
	{ config_id = 1013, monster_id = 21010401, pos = { x = 516.283, y = 103.563, z = 367.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第2波
	{ config_id = 1014, monster_id = 21010201, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第3波
	{ config_id = 1015, monster_id = 25310101, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 1 },
	-- 第3波
	{ config_id = 1016, monster_id = 25310101, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 1 },
	-- 第3波
	{ config_id = 1017, monster_id = 25210101, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第3波
	{ config_id = 1018, monster_id = 25210201, pos = { x = 522.530, y = 103.727, z = 368.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第3波
	{ config_id = 1019, monster_id = 25210201, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第3波
	{ config_id = 1020, monster_id = 25210301, pos = { x = 518.359, y = 103.987, z = 368.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第3波
	{ config_id = 1021, monster_id = 25210301, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第4波
	{ config_id = 1022, monster_id = 25310201, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 1 },
	-- 第4波
	{ config_id = 1023, monster_id = 25310201, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 1 },
	-- 第4波
	{ config_id = 1024, monster_id = 25210501, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第4波
	{ config_id = 1025, monster_id = 25210201, pos = { x = 522.530, y = 103.727, z = 368.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第4波
	{ config_id = 1026, monster_id = 25210501, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第4波
	{ config_id = 1027, monster_id = 25210201, pos = { x = 518.359, y = 103.987, z = 368.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第4波
	{ config_id = 1028, monster_id = 25210501, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 } },
	-- 第5波
	{ config_id = 1029, monster_id = 24030201, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 101 },
	-- 第5波
	{ config_id = 1030, monster_id = 24030201, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 101 },
	-- 第5波
	{ config_id = 1031, monster_id = 24020101, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第5波
	{ config_id = 1032, monster_id = 24020201, pos = { x = 524.152, y = 103.692, z = 367.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第5波
	{ config_id = 1033, monster_id = 24020401, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第5波
	{ config_id = 1034, monster_id = 24020201, pos = { x = 516.818, y = 104.019, z = 367.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第5波
	{ config_id = 1035, monster_id = 24020101, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第6波
	{ config_id = 1036, monster_id = 24030201, pos = { x = 522.570, y = 103.874, z = 370.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 101 },
	-- 第6波
	{ config_id = 1037, monster_id = 24030201, pos = { x = 518.210, y = 103.909, z = 370.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4167 }, isElite = true, pose_id = 101 },
	-- 第6波
	{ config_id = 1038, monster_id = 24020101, pos = { x = 526.135, y = 103.987, z = 371.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第6波
	{ config_id = 1039, monster_id = 24020101, pos = { x = 524.152, y = 103.692, z = 367.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第6波
	{ config_id = 1040, monster_id = 24020101, pos = { x = 520.302, y = 103.698, z = 366.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第6波
	{ config_id = 1041, monster_id = 24020201, pos = { x = 516.818, y = 104.019, z = 367.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 },
	-- 第6波
	{ config_id = 1042, monster_id = 24020201, pos = { x = 514.704, y = 103.614, z = 371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4166 }, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1043, gadget_id = 70360367, pos = { x = 520.209, y = 104.070, z = 372.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70950156, pos = { x = 520.209, y = 104.070, z = 372.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 44000451, pos = { x = 520.829, y = 103.799, z = 375.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1043, 1044, 1045 },
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

require "V3_0/Activity_MuqadasPotion"
require "MonsterQuickDeath"