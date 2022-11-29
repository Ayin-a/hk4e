-- 基础信息
local base_info = {
	group_id = 251008001
}

-- DEFS_MISCS
local defs = {

    -----全玩法通用配置-----

    --玩法范围region cube
    play_region = 1003,
    air_wall = {1005},
    --进入时加载内容，例如棒球发球机。依次为单人、2人…
    enter_suites = {2,2,2,2},

    --启动时加载内容，例如史莱姆球。依次为单人、2人…
    play_suites = {},
    --玩法限时秒
    limit_time = 3000,
    target = 1000,
    -----消消乐配置-------
    wall = 1002,    


    hp = 
    {        --[人数] = {各种砖块血量}
            [1] = { Normal = 78, Stamina = 78, Line = 300, All = 720,},
            [2] = { Normal = 114, Stamina = 114, Line = 450, All = 1080,},
            [3] = { Normal = 138, Stamina = 138, Line = 540, All = 1296,},
            [4] = { Normal = 156, Stamina = 156, Line = 600, All = 1440,},
    }

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
	[1002] = { config_id = 1002, gadget_id = 70320006, pos = { x = -7.214, y = 0.000, z = 9.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1004] = { config_id = 1004, gadget_id = 70320023, pos = { x = 0.000, y = 0.000, z = 10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1005] = { config_id = 1005, gadget_id = 70380323, pos = { x = 0.000, y = 0.000, z = -7.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1003] = { config_id = 1003, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = 0.274, y = 9.327, z = -0.179 } }
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
		{ config_id = 1001, gadget_id = 44000006, pos = { x = 0.674, y = 0.500, z = 1.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1004 },
		regions = { 1003 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

require "V3_2/CharAmuse_BrickWall"
require "V3_2/CharAmuse_Retrans"