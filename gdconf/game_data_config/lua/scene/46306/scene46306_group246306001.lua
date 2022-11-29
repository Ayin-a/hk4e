-- 基础信息
local base_info = {
	group_id = 246306001
}

-- DEFS_MISCS
defs = {
        operator_id = 1043, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400171, -- 刷下一波怪时，弹出reminder
        gallery_id = 25007,
        energy_gadget = 1045, -- 回能量物件
}


monster_list = {
    -- 第1波怪
    [1]={
        elite_monster = {1008,1009}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 54, -- 精英怪掉落的时停能量
        elite_monster_score = 75, -- 击杀精英怪的积分
        tide_mons = {1010,1011,1012,1013,1014}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 54, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 2, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第2波怪
    [2]={
        elite_monster = {1001}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 58, -- 精英怪掉落的时停能量
        elite_monster_score = 180, -- 击杀精英怪的积分
        tide_mons = {1003,1004,1005,1006,1007,1017,1018}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 58, -- 小怪掉落的时停能量
        tide_mons_score = 11,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 1, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },


    -- 第3波怪
    --[[
    [3]={
        elite_monster = {1015}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 250,  -- 精英怪掉落的时停能量
        elite_monster_score = 200, -- 击杀精英怪的积分
        tide_mons = {1017,1018}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 250, -- 小怪掉落的时停能量
        tide_mons_score = 30,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 1, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第4波怪
    [4]={
        elite_monster = {1022,1023}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 50, -- 精英怪掉落的时停能量
        elite_monster_score = 200, -- 击杀精英怪的积分
        tide_mons = {1024,1025,1026,1027,1028}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 50, -- 小怪掉落的时停能量
        tide_mons_score = 10,  -- 击杀小怪的积分
        tide_mon_delay = 3, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第5波怪
    [5]={
        
        elite_monster = {1029,1030}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 80, -- 精英怪掉落的时停能量
        elite_monster_score = 400, -- 击杀精英怪的积分
        tide_mons = {1032,1033,1034}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 80, -- 小怪掉落的时停能量
        tide_mons_score = 20,  -- 击杀小怪的积分
        tide_mon_delay = 3, -- 附属小怪的刷怪间隔
        next = 6, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第6波怪
    [6]={
        elite_monster = {1036,1037}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 80, -- 精英怪掉落的时停能量
        elite_monster_score = 400, -- 击杀精英怪的积分
        tide_mons = {1039,1040,1041}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 80, -- 小怪掉落的时停能量
        tide_mons_score = 20,  -- 击杀小怪的积分
        tide_mon_delay = 3, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },
        ]]--
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第1波
	{ config_id = 1001, monster_id = 23050101, pos = { x = -38.887, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
	-- 第1波
	{ config_id = 1002, monster_id = 23050101, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
	-- 第1波
	{ config_id = 1003, monster_id = 25010201, pos = { x = -35.411, y = 246.100, z = 22.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1004, monster_id = 25030301, pos = { x = -35.284, y = 246.100, z = 18.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1005, monster_id = 25010201, pos = { x = -39.071, y = 246.100, z = 18.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1006, monster_id = 25030301, pos = { x = -44.072, y = 246.100, z = 18.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1007, monster_id = 25010201, pos = { x = -41.705, y = 246.100, z = 21.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第2波
	{ config_id = 1008, monster_id = 21020701, pos = { x = -36.803, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
	-- 第2波
	{ config_id = 1009, monster_id = 21020701, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
	-- 第2波
	{ config_id = 1010, monster_id = 21010201, pos = { x = -33.858, y = 246.100, z = 22.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第2波
	{ config_id = 1011, monster_id = 21010401, pos = { x = -36.176, y = 246.100, z = 19.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第2波
	{ config_id = 1012, monster_id = 21030101, pos = { x = -39.071, y = 246.100, z = 18.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第2波
	{ config_id = 1013, monster_id = 21010401, pos = { x = -43.089, y = 246.100, z = 18.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第2波
	{ config_id = 1014, monster_id = 21010201, pos = { x = -43.972, y = 246.100, z = 22.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1017, monster_id = 25020201, pos = { x = -36.299, y = 246.100, z = 18.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
	-- 第1波
	{ config_id = 1018, monster_id = 25020201, pos = { x = -41.361, y = 246.100, z = 18.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1043, gadget_id = 70360367, pos = { x = -39.094, y = 246.100, z = 22.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70950156, pos = { x = -39.094, y = 246.100, z = 22.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 44000451, pos = { x = -38.826, y = 246.100, z = 25.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
	monsters = {
		{ config_id = 1015, monster_id = 24010301, pos = { x = -38.231, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 100 },
		{ config_id = 1016, monster_id = 24010301, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 100 },
		{ config_id = 1019, monster_id = 24010101, pos = { x = -39.071, y = 246.100, z = 17.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 100 },
		{ config_id = 1020, monster_id = 24010101, pos = { x = -41.013, y = 246.100, z = 19.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 100 },
		{ config_id = 1021, monster_id = 24010101, pos = { x = -44.668, y = 246.100, z = 22.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 100 },
		{ config_id = 1022, monster_id = 21020703, pos = { x = -36.803, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
		{ config_id = 1023, monster_id = 21020703, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true },
		{ config_id = 1024, monster_id = 21010701, pos = { x = -33.238, y = 246.100, z = 22.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
		{ config_id = 1025, monster_id = 21010902, pos = { x = -36.842, y = 246.100, z = 19.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
		{ config_id = 1026, monster_id = 21030601, pos = { x = -39.071, y = 246.100, z = 17.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
		{ config_id = 1027, monster_id = 21010902, pos = { x = -41.013, y = 246.100, z = 19.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
		{ config_id = 1028, monster_id = 21010701, pos = { x = -44.668, y = 246.100, z = 22.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 } },
		{ config_id = 1029, monster_id = 22050201, pos = { x = -36.803, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 101 },
		{ config_id = 1030, monster_id = 22050201, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 101 },
		{ config_id = 1031, monster_id = 22040201, pos = { x = -33.238, y = 246.100, z = 22.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1032, monster_id = 22040201, pos = { x = -35.220, y = 246.100, z = 18.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1033, monster_id = 22040201, pos = { x = -39.071, y = 246.100, z = 17.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1034, monster_id = 22040201, pos = { x = -42.555, y = 246.100, z = 18.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1035, monster_id = 22040201, pos = { x = -44.668, y = 246.100, z = 22.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1036, monster_id = 22050101, pos = { x = -36.803, y = 246.100, z = 21.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 101 },
		{ config_id = 1037, monster_id = 22050101, pos = { x = -41.162, y = 246.100, z = 21.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4179 }, isElite = true, pose_id = 101 },
		{ config_id = 1038, monster_id = 22040101, pos = { x = -33.238, y = 246.100, z = 22.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1039, monster_id = 22040101, pos = { x = -35.220, y = 246.100, z = 18.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1040, monster_id = 22040101, pos = { x = -39.071, y = 246.100, z = 17.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1041, monster_id = 22040101, pos = { x = -42.555, y = 246.100, z = 18.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 },
		{ config_id = 1042, monster_id = 22040101, pos = { x = -44.668, y = 246.100, z = 22.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4178 }, pose_id = 101 }
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