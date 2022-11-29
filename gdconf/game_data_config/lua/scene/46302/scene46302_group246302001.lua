-- 基础信息
local base_info = {
	group_id = 246302001
}

-- DEFS_MISCS
defs = {
        operator_id = 1043, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400171, -- 刷下一波怪时，弹出reminder
        gallery_id = 25002,
        energy_gadget = 1045, -- 回能量物件
}


monster_list = {
    -- 第1波怪
    [1]={
        elite_monster = {1001,1002}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 63, -- 精英怪掉落的时停能量
        elite_monster_score = 120, -- 击杀精英怪的积分
        tide_mons = {1003,1004,1005,1006,1007}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 63, -- 小怪掉落的时停能量
        tide_mons_score = 10,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 2, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第2波怪
    [2]={
        elite_monster = {1008,1009}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 63, -- 精英怪掉落的时停能量
        elite_monster_score = 120, -- 击杀精英怪的积分
        tide_mons = {1010,1011,1012,1013,1014}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 63, -- 小怪掉落的时停能量
        tide_mons_score = 10,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 3, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第3波怪
    [3]={
        elite_monster = {1015,1016}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 81,  -- 精英怪掉落的时停能量
        elite_monster_score = 120, -- 击杀精英怪的积分
        tide_mons = {1017,1018,1019,1020,1021}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 81, -- 小怪掉落的时停能量
        tide_mons_score = 13,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 4, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第4波怪
    [4]={
        elite_monster = {1022,1023}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 81, -- 精英怪掉落的时停能量
        elite_monster_score = 120, -- 击杀精英怪的积分
        tide_mons = {1024,1025,1026,1027,1028}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 81, -- 小怪掉落的时停能量
        tide_mons_score = 13,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第5波怪
    [5]={
        
        elite_monster = {1029,1030}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 54, -- 精英怪掉落的时停能量
        elite_monster_score = 160, -- 击杀精英怪的积分
        tide_mons = {1031,1032,1033,1034,1035}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 54, -- 小怪掉落的时停能量
        tide_mons_score = 8,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 6, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第6波怪
    [6]={
        elite_monster = {1036,1037}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 54, -- 精英怪掉落的时停能量
        elite_monster_score = 160, -- 击杀精英怪的积分
        tide_mons = {1038,1039,1040,1041,1042}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 54, -- 小怪掉落的时停能量
        tide_mons_score = 8,  -- 击杀小怪的积分
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
	-- 第1波
	{ config_id = 1001, monster_id = 21020201, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第1波
	{ config_id = 1002, monster_id = 21020201, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第1波
	{ config_id = 1003, monster_id = 21010201, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第1波
	{ config_id = 1004, monster_id = 21010501, pos = { x = 523.487, y = 103.684, z = 368.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第1波
	{ config_id = 1005, monster_id = 21030101, pos = { x = 520.278, y = 103.679, z = 367.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第1波
	{ config_id = 1006, monster_id = 21010501, pos = { x = 517.223, y = 103.541, z = 368.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第1波
	{ config_id = 1007, monster_id = 21010201, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第2波
	{ config_id = 1008, monster_id = 21020701, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第2波
	{ config_id = 1009, monster_id = 21020701, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第2波
	{ config_id = 1010, monster_id = 21010201, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第2波
	{ config_id = 1011, monster_id = 21010901, pos = { x = 522.628, y = 103.720, z = 368.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第2波
	{ config_id = 1012, monster_id = 21030101, pos = { x = 520.278, y = 103.696, z = 366.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第2波
	{ config_id = 1013, monster_id = 21010901, pos = { x = 517.774, y = 103.975, z = 368.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第2波
	{ config_id = 1014, monster_id = 21010201, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第3波
	{ config_id = 1015, monster_id = 26120101, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true, pose_id = 201 },
	-- 第3波
	{ config_id = 1016, monster_id = 26120101, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true, pose_id = 201 },
	-- 第3波
	{ config_id = 1017, monster_id = 26090201, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第3波
	{ config_id = 1018, monster_id = 26090401, pos = { x = 522.507, y = 103.414, z = 369.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第3波
	{ config_id = 1019, monster_id = 26090201, pos = { x = 520.278, y = 103.696, z = 366.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第3波
	{ config_id = 1020, monster_id = 26090401, pos = { x = 518.336, y = 103.987, z = 369.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第3波
	{ config_id = 1021, monster_id = 26090201, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第4波
	{ config_id = 1022, monster_id = 26120201, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true, pose_id = 201 },
	-- 第4波
	{ config_id = 1023, monster_id = 26120201, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true, pose_id = 201 },
	-- 第4波
	{ config_id = 1024, monster_id = 26090401, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第4波
	{ config_id = 1025, monster_id = 26090501, pos = { x = 522.507, y = 103.414, z = 369.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第4波
	{ config_id = 1026, monster_id = 26090501, pos = { x = 520.278, y = 103.696, z = 366.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第4波
	{ config_id = 1027, monster_id = 26090501, pos = { x = 518.336, y = 103.987, z = 369.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第4波
	{ config_id = 1028, monster_id = 26090401, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 }, pose_id = 101 },
	-- 第5波
	{ config_id = 1029, monster_id = 26010101, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第5波
	{ config_id = 1030, monster_id = 26010101, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第5波
	{ config_id = 1031, monster_id = 20010301, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第5波
	{ config_id = 1032, monster_id = 20010801, pos = { x = 524.129, y = 103.692, z = 367.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第5波
	{ config_id = 1033, monster_id = 20010801, pos = { x = 520.278, y = 103.696, z = 366.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第5波
	{ config_id = 1034, monster_id = 20010801, pos = { x = 516.795, y = 103.992, z = 367.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第5波
	{ config_id = 1035, monster_id = 20010301, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第6波
	{ config_id = 1036, monster_id = 26010101, pos = { x = 522.547, y = 103.657, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第6波
	{ config_id = 1037, monster_id = 26010101, pos = { x = 518.187, y = 103.622, z = 370.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4169 }, isElite = true },
	-- 第6波
	{ config_id = 1038, monster_id = 20011001, pos = { x = 526.113, y = 104.007, z = 372.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第6波
	{ config_id = 1039, monster_id = 20010301, pos = { x = 524.129, y = 103.692, z = 367.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第6波
	{ config_id = 1040, monster_id = 20010301, pos = { x = 520.278, y = 103.696, z = 366.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第6波
	{ config_id = 1041, monster_id = 20010301, pos = { x = 516.795, y = 103.992, z = 367.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } },
	-- 第6波
	{ config_id = 1042, monster_id = 20011001, pos = { x = 514.681, y = 103.296, z = 372.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4168 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1043, gadget_id = 70360367, pos = { x = 520.186, y = 104.080, z = 372.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70950156, pos = { x = 520.186, y = 104.080, z = 372.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 44000451, pos = { x = 520.322, y = 103.828, z = 375.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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