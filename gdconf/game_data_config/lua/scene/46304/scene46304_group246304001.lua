-- 基础信息
local base_info = {
	group_id = 246304001
}

-- DEFS_MISCS
defs = {
        operator_id = 1043, --操作台的configid
        option_id = 175, --操作台的option id
        reminder_id = 400171, -- 刷下一波怪时，弹出reminder
        gallery_id = 25005,
        energy_gadget = 1045, -- 回能量物件
}


monster_list = {
    -- 第1波怪
    [1]={
        elite_monster = {1001,1002}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 63, -- 精英怪掉落的时停能量
        elite_monster_score = 88, -- 击杀精英怪的积分
        tide_mons = {1003,1004,1005,1006,1007}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 63, -- 小怪掉落的时停能量
        tide_mons_score = 11,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 2, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第2波怪
    [2]={
        elite_monster = {1008,1009}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 63, -- 精英怪掉落的时停能量
        elite_monster_score = 88, -- 击杀精英怪的积分
        tide_mons = {1010,1011,1012,1013,1014}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 63, -- 小怪掉落的时停能量
        tide_mons_score = 11,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 3, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第3波怪
    [3]={
        elite_monster = {1015,1016}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 63,  -- 精英怪掉落的时停能量
        elite_monster_score = 88, -- 击杀精英怪的积分
        tide_mons = {1017,1018,1019,1020,1021}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 63, -- 小怪掉落的时停能量
        tide_mons_score = 11,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 4, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第4波怪
    [4]={
        elite_monster = {1022,1023}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 94, -- 精英怪掉落的时停能量
        elite_monster_score = 160, -- 击杀精英怪的积分
        tide_mons = {1024,1025,1026,1027,1028}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 94, -- 小怪掉落的时停能量
        tide_mons_score = 18,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 5, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第5波怪
    [5]={
        elite_monster = {1029,1030}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 94, -- 精英怪掉落的时停能量
        elite_monster_score = 160, -- 击杀精英怪的积分
        tide_mons = {1031,1032,1033,1034,1035}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 94, -- 小怪掉落的时停能量
        tide_mons_score = 18,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 6, -- 下一波的ID
        next_delay = 2, -- 刷下一波怪延迟
        },

    -- 第6波怪
    [6]={
        elite_monster = {1036,1037}, -- 精英怪entity id, 精英怪全部死亡就刷下一波
        elite_monster_energy = 94, -- 精英怪掉落的时停能量
        elite_monster_score = 160, -- 击杀精英怪的积分
        tide_mons = {1038,1039,1040,1041,1042}, -- 附属小怪entity id，每个id小怪死了之后，重新刷出来
        tide_mons_energy = 94, -- 小怪掉落的时停能量
        tide_mons_score = 18,  -- 击杀小怪的积分
        tide_mon_delay = 2, -- 附属小怪的刷怪间隔
        next = 4, -- 下一波的ID
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
	{ config_id = 1001, monster_id = 22010401, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第1波
	{ config_id = 1002, monster_id = 22010201, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第1波
	{ config_id = 1003, monster_id = 21010701, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第1波
	{ config_id = 1004, monster_id = 21010401, pos = { x = -50.445, y = 246.100, z = 26.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第1波
	{ config_id = 1005, monster_id = 21010701, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第1波
	{ config_id = 1006, monster_id = 21010401, pos = { x = -55.614, y = 246.100, z = 26.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第1波
	{ config_id = 1007, monster_id = 21010701, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第2波
	{ config_id = 1008, monster_id = 22010401, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第2波
	{ config_id = 1009, monster_id = 22010101, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第2波
	{ config_id = 1010, monster_id = 21010201, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第2波
	{ config_id = 1011, monster_id = 21011001, pos = { x = -50.185, y = 246.100, z = 26.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第2波
	{ config_id = 1012, monster_id = 21010201, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第2波
	{ config_id = 1013, monster_id = 21011001, pos = { x = -55.388, y = 246.100, z = 26.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第2波
	{ config_id = 1014, monster_id = 21010201, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第3波
	{ config_id = 1015, monster_id = 22010101, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第3波
	{ config_id = 1016, monster_id = 22010201, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第3波
	{ config_id = 1017, monster_id = 21010201, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第3波
	{ config_id = 1018, monster_id = 21010601, pos = { x = -50.584, y = 246.100, z = 26.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第3波
	{ config_id = 1019, monster_id = 21030501, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第3波
	{ config_id = 1020, monster_id = 21010601, pos = { x = -54.755, y = 246.100, z = 26.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第3波
	{ config_id = 1021, monster_id = 21010201, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第4波
	{ config_id = 1022, monster_id = 23010101, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第4波
	{ config_id = 1023, monster_id = 23010601, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第4波
	{ config_id = 1024, monster_id = 25060101, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第4波
	{ config_id = 1025, monster_id = 25010301, pos = { x = -50.584, y = 246.100, z = 26.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第4波
	{ config_id = 1026, monster_id = 25030201, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第4波
	{ config_id = 1027, monster_id = 25010301, pos = { x = -54.755, y = 246.100, z = 26.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第4波
	{ config_id = 1028, monster_id = 25060101, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第5波
	{ config_id = 1029, monster_id = 23010101, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第5波
	{ config_id = 1030, monster_id = 23010301, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第5波
	{ config_id = 1031, monster_id = 25070101, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第5波
	{ config_id = 1032, monster_id = 25020201, pos = { x = -49.917, y = 246.100, z = 26.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第5波
	{ config_id = 1033, monster_id = 25010601, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第5波
	{ config_id = 1034, monster_id = 25020201, pos = { x = -55.420, y = 246.100, z = 26.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第5波
	{ config_id = 1035, monster_id = 25070101, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第6波
	{ config_id = 1036, monster_id = 23010601, pos = { x = -50.545, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第6波
	{ config_id = 1037, monster_id = 23010301, pos = { x = -54.904, y = 246.100, z = 28.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1044, 4175 }, isElite = true },
	-- 第6波
	{ config_id = 1038, monster_id = 25070101, pos = { x = -46.980, y = 246.100, z = 29.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第6波
	{ config_id = 1039, monster_id = 25010501, pos = { x = -50.397, y = 246.100, z = 26.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第6波
	{ config_id = 1040, monster_id = 25020201, pos = { x = -52.813, y = 246.100, z = 24.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第6波
	{ config_id = 1041, monster_id = 25010501, pos = { x = -55.147, y = 246.100, z = 26.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } },
	-- 第6波
	{ config_id = 1042, monster_id = 25070101, pos = { x = -58.410, y = 246.100, z = 29.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4174 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1043, gadget_id = 70360367, pos = { x = -52.905, y = 246.100, z = 30.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70950156, pos = { x = -52.905, y = 246.100, z = 30.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 44000451, pos = { x = -52.713, y = 246.100, z = 31.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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