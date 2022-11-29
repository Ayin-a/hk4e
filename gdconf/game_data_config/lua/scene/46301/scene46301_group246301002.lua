-- 基础信息
local base_info = {
	group_id = 246301002
}

-- DEFS_MISCS
defs = {
        operator_id = 2043, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400171, -- 刷下一波怪时，弹出reminder
        gallery_id = 25004,
        energy_gadget = 2045, -- 回能量物件
}


monster_list = {
    -- 第1波怪
    [1]={
        elite_monster = {2001,2002}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 49, -- 精英怪掉落的时停能量
        elite_monster_score = 55, -- 击杀精英怪的积分
        tide_mons = {2003,2004,2005,2006,2007}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 49, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 2, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第2波怪
    [2]={
        elite_monster = {2008,2009}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 49, -- 精英怪掉落的时停能量
        elite_monster_score = 85, -- 击杀精英怪的积分
        tide_mons = {2010,2011,2012,2013,2014}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 49, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 3, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第3波怪
    [3]={
        elite_monster = {2015,2016}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 49,  -- 精英怪掉落的时停能量
        elite_monster_score = 75, -- 击杀精英怪的积分
        tide_mons = {2017,2018,2019,2020,2021}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 49, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 4, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第4波怪
    [4]={
        elite_monster = {2022,2023}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 49, -- 精英怪掉落的时停能量
        elite_monster_score = 75, -- 击杀精英怪的积分
        tide_mons = {2024,2025,2026,2027,2028}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 49, -- 小怪掉落的时停能量
        tide_mons_score = 6,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第5波怪
    [5]={
        elite_monster = {2029}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 135, -- 精英怪掉落的时停能量
        elite_monster_score = 220, -- 击杀精英怪的积分
        tide_mons = {2032,2033,2034}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 135, -- 小怪掉落的时停能量
        tide_mons_score = 20,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 6, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第6波怪
    [6]={
        elite_monster = {2036,2037}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 135, -- 精英怪掉落的时停能量
        elite_monster_score = 220, -- 击杀精英怪的积分
        tide_mons = {2039,2040,2041}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 135, -- 小怪掉落的时停能量
        tide_mons_score = 20,  -- 击杀小怪的积分
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
	{ config_id = 2001, monster_id = 20011301, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第1波
	{ config_id = 2002, monster_id = 20011301, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第1波
	{ config_id = 2003, monster_id = 20010801, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第1波
	{ config_id = 2004, monster_id = 20010801, pos = { x = -6.619, y = 246.100, z = 7.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第1波
	{ config_id = 2005, monster_id = 20010801, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第1波
	{ config_id = 2006, monster_id = 20010801, pos = { x = -14.979, y = 246.100, z = 7.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第1波
	{ config_id = 2007, monster_id = 20010801, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第2波
	{ config_id = 2008, monster_id = 26010201, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第2波
	{ config_id = 2009, monster_id = 26010201, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第2波
	{ config_id = 2010, monster_id = 20011001, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第2波
	{ config_id = 2011, monster_id = 20011001, pos = { x = -6.619, y = 246.100, z = 7.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第2波
	{ config_id = 2012, monster_id = 20011001, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第2波
	{ config_id = 2013, monster_id = 20011001, pos = { x = -14.979, y = 246.100, z = 7.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第2波
	{ config_id = 2014, monster_id = 20011001, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第3波
	{ config_id = 2015, monster_id = 21020201, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第3波
	{ config_id = 2016, monster_id = 21020201, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第3波
	{ config_id = 2017, monster_id = 21010201, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第3波
	{ config_id = 2018, monster_id = 21010401, pos = { x = -8.732, y = 246.100, z = 8.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第3波
	{ config_id = 2019, monster_id = 21030101, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第3波
	{ config_id = 2020, monster_id = 21010401, pos = { x = -12.903, y = 246.100, z = 8.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第3波
	{ config_id = 2021, monster_id = 21010201, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第4波
	{ config_id = 2022, monster_id = 21020701, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第4波
	{ config_id = 2023, monster_id = 21020701, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true },
	-- 第4波
	{ config_id = 2024, monster_id = 21010701, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第4波
	{ config_id = 2025, monster_id = 21010901, pos = { x = -8.732, y = 246.100, z = 8.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第4波
	{ config_id = 2026, monster_id = 21030601, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第4波
	{ config_id = 2027, monster_id = 21010901, pos = { x = -12.903, y = 246.100, z = 8.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第4波
	{ config_id = 2028, monster_id = 21010701, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 } },
	-- 第5波
	{ config_id = 2029, monster_id = 22050201, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true, pose_id = 101 },
	-- 第5波
	{ config_id = 2030, monster_id = 22050201, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true, pose_id = 101 },
	-- 第5波
	{ config_id = 2031, monster_id = 22040201, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第5波
	{ config_id = 2032, monster_id = 22040201, pos = { x = -7.110, y = 246.100, z = 7.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第5波
	{ config_id = 2033, monster_id = 22040201, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第5波
	{ config_id = 2034, monster_id = 22040201, pos = { x = -14.444, y = 246.100, z = 7.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第5波
	{ config_id = 2035, monster_id = 22040201, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第6波
	{ config_id = 2036, monster_id = 22050101, pos = { x = -8.692, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true, pose_id = 101 },
	-- 第6波
	{ config_id = 2037, monster_id = 22050101, pos = { x = -13.052, y = 246.100, z = 10.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4173 }, isElite = true, pose_id = 101 },
	-- 第6波
	{ config_id = 2038, monster_id = 22040101, pos = { x = -5.127, y = 246.100, z = 11.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第6波
	{ config_id = 2039, monster_id = 22040101, pos = { x = -7.110, y = 246.100, z = 7.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第6波
	{ config_id = 2040, monster_id = 22040101, pos = { x = -10.960, y = 246.100, z = 5.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第6波
	{ config_id = 2041, monster_id = 22040101, pos = { x = -14.444, y = 246.100, z = 7.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 },
	-- 第6波
	{ config_id = 2042, monster_id = 22040101, pos = { x = -16.558, y = 246.100, z = 11.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4172 }, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2043, gadget_id = 70360367, pos = { x = -11.053, y = 246.100, z = 11.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2044, gadget_id = 70950156, pos = { x = -11.053, y = 246.100, z = 11.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2045, gadget_id = 44000451, pos = { x = -10.866, y = 246.100, z = 12.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 2043, 2044, 2045 },
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