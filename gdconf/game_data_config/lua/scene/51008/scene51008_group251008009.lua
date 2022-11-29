-- 基础信息
local base_info = {
	group_id = 251008009
}

-- DEFS_MISCS
local defs = {


        --玩法范围region cube
        play_region = 9001,



        air_wall = {9011},


        --刷怪规则
        rule = 
        {
                [1] = 
                {        --[杀怪数] = { 启动的tide， 停止补怪的tide}
                        [0] = { toStart = {1,2,4},},
                        [4] = { toStart = {3,5,6}, toStop = 0 },
                        --[20] = { toStart = 3, toStop = 0 },
                },
                [2] = 
                {        --[杀怪数] = { 启动的tide， 停止补怪的tide}
                        [0] = { toStart = {7,8,9,10,11,12},},
                        [8] = { toStart = {13,14}, toStop = 0 },
                },
                [3] = 
                {        --[杀怪数] = { 启动的tide， 停止补怪的tide}
                        [0] = { toStart = {7,8,9,10,11,12},},
                        [10] = { toStart = {13,14}, toStop = 0 },
                },
                [4] = 
                {        --[杀怪数] = { 启动的tide， 停止补怪的tide}
                        [0] = { toStart = {7,8,9,10,11,12},},
                        [12] = { toStart = {13,14}, toStop = 0 },
                },
        },

        --怪物信息
        tide = 
        {       
                --单人用 
                [1] = { 9002, 9017,},
                [2] = { 9003, 9018,},
                [3] = { 9004, 9019,},
                [4] = { 9005, 9020,},
                [5] = { 9006, 9021,},
                [6] = { 9007, 9022,},
                

                --多人用
                [7] = { 9008, 9023,},
                [8] = { 9009, 9024,},
                [9] = { 9010, 9025,},
                [10] = { 9012, 9026,},
                [11] = { 9013, 9027,},
                [12] = { 9014, 9028,},
                [13] = { 9015, 9029,},
                [14] = { 9016, 9030,},

                --[3] = { 9008, 9009,},
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 单人
	[9002] = { config_id = 9002, monster_id = 21010101, pos = { x = 400.000, y = -1.110, z = 407.122 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9003] = { config_id = 9003, monster_id = 21010401, pos = { x = 402.559, y = -1.110, z = 409.118 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9004] = { config_id = 9004, monster_id = 21010101, pos = { x = 406.744, y = -1.077, z = 401.917 }, rot = { x = 0.000, y = 268.215, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9005] = { config_id = 9005, monster_id = 21010101, pos = { x = 397.848, y = -1.095, z = 409.222 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9006] = { config_id = 9006, monster_id = 21020201, pos = { x = 403.157, y = -1.109, z = 403.388 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9007] = { config_id = 9007, monster_id = 21010401, pos = { x = 405.654, y = -1.110, z = 405.430 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9008] = { config_id = 9008, monster_id = 21010401, pos = { x = 389.313, y = -1.110, z = 403.950 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9009] = { config_id = 9009, monster_id = 21010101, pos = { x = 391.660, y = -1.104, z = 400.977 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9010] = { config_id = 9010, monster_id = 21010401, pos = { x = 389.000, y = -1.108, z = 398.164 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9012] = { config_id = 9012, monster_id = 21010401, pos = { x = 411.571, y = -1.109, z = 403.112 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9013] = { config_id = 9013, monster_id = 21010101, pos = { x = 408.980, y = -1.110, z = 400.300 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9014] = { config_id = 9014, monster_id = 21010401, pos = { x = 411.475, y = -1.109, z = 396.707 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9015] = { config_id = 9015, monster_id = 21020201, pos = { x = 387.676, y = -1.109, z = 400.157 }, rot = { x = 0.000, y = 91.881, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	[9016] = { config_id = 9016, monster_id = 21020201, pos = { x = 413.128, y = -1.111, z = 400.381 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9017] = { config_id = 9017, monster_id = 21010101, pos = { x = 400.000, y = -1.110, z = 405.493 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9018] = { config_id = 9018, monster_id = 21010401, pos = { x = 402.559, y = -1.110, z = 407.489 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9019] = { config_id = 9019, monster_id = 21010101, pos = { x = 406.318, y = -1.089, z = 402.155 }, rot = { x = 0.000, y = 268.215, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9020] = { config_id = 9020, monster_id = 21010101, pos = { x = 397.848, y = -1.110, z = 407.593 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9021] = { config_id = 9021, monster_id = 21020201, pos = { x = 404.067, y = -1.083, z = 402.186 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 单人
	[9022] = { config_id = 9022, monster_id = 21010401, pos = { x = 406.564, y = -1.111, z = 404.228 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9023] = { config_id = 9023, monster_id = 21010401, pos = { x = 389.313, y = -1.084, z = 401.193 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9024] = { config_id = 9024, monster_id = 21010101, pos = { x = 391.665, y = -1.110, z = 398.218 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9025] = { config_id = 9025, monster_id = 21010401, pos = { x = 389.001, y = -1.096, z = 395.406 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9026] = { config_id = 9026, monster_id = 21010401, pos = { x = 411.571, y = -1.110, z = 406.644 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9027] = { config_id = 9027, monster_id = 21010101, pos = { x = 408.980, y = -1.111, z = 403.833 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9028] = { config_id = 9028, monster_id = 21010401, pos = { x = 411.475, y = -1.110, z = 400.240 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9029] = { config_id = 9029, monster_id = 21020201, pos = { x = 387.595, y = -1.110, z = 397.662 }, rot = { x = 0.000, y = 91.881, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } },
	-- 多人
	[9030] = { config_id = 9030, monster_id = 21020201, pos = { x = 413.128, y = -1.094, z = 403.914 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1, disableWander = true, affix = { 4183 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[9011] = { config_id = 9011, gadget_id = 70380323, pos = { x = 400.000, y = -1.079, z = 400.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[9001] = { config_id = 9001, shape = RegionShape.CUBIC, size = { x = 70.000, y = 40.000, z = 70.000 }, pos = { x = 400.000, y = -1.079, z = 400.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1009001, name = "ENTER_REGION_9001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { },
		regions = { 9001 },
		triggers = { "ENTER_REGION_9001" },
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

require "V3_2/CharAmuse_Retrans"
require "V3_2/CharAmuse_BattleTide"
require "MonsterQuickDeath"