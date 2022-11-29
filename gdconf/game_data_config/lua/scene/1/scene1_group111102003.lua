-- 基础信息
local base_info = {
	group_id = 111102003
}

-- DEFS_MISCS
local	defs = 
{
	group_id = 111102003,
	--起始操作台configID
	start_operator = 3008,
	--所有演员物件。用于统一设置状态
	actor_list = 
	{
		3001, 3003, 3004, 3005
	},
	--行动序列
	actions = 
	{
   		[1] = { config_id = 3001, reminder_id = 31021109, point_array = 0, point_id_list = 0, duration = 6},
   		[2] = { config_id = 3003, reminder_id = 31021107, point_array = 0, point_id_list = 0, duration = 3},
   		[3] = { config_id = 3004, reminder_id = 31021107, point_array = 0, point_id_list = 0, duration = 3},
   		[4] = { config_id = 3005, reminder_id = 31021107, point_array = 0, point_id_list = 0, duration = 3},
	},
	--断案阶段加载哪些suite。用于放置操作台和聚光灯
	question_suits =  
	{
   		2
	},
	--真正的凶手对应哪个操作台config_id
	answer = 3006,
	--玩法范围，主机出圈则重置
	play_region = 3009,

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
	-- 提问者
	[3001] = { config_id = 3001, gadget_id = 70310175, pos = { x = 1330.262, y = 331.346, z = -1946.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 管家（就是他！）
	[3002] = { config_id = 3002, gadget_id = 70360001, pos = { x = 1327.966, y = 330.423, z = -1940.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } } },
	-- 管家
	[3003] = { config_id = 3003, gadget_id = 70310175, pos = { x = 1327.616, y = 330.016, z = -1940.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 仆人1
	[3004] = { config_id = 3004, gadget_id = 70310175, pos = { x = 1332.345, y = 330.011, z = -1940.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 仆人2（犯人）
	[3005] = { config_id = 3005, gadget_id = 70310175, pos = { x = 1329.742, y = 330.012, z = -1936.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 仆人1（就是他！）
	[3006] = { config_id = 3006, gadget_id = 70360001, pos = { x = 1332.252, y = 330.518, z = -1940.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } } },
	-- 仆人2（就是他！）
	[3007] = { config_id = 3007, gadget_id = 70360001, pos = { x = 1330.092, y = 330.637, z = -1936.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 402 } } },
	-- 起始操作台
	[3008] = { config_id = 3008, gadget_id = 70360001, pos = { x = 1330.262, y = 330.339, z = -1946.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 401 } } }
}

-- 区域
regions = {
	-- 玩法限定范围 出圈重置
	[3009] = { config_id = 3009, shape = RegionShape.SPHERE, radius = 12, pos = { x = 1328.671, y = 330.014, z = -1942.124 } }
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
	end_suite = 3,
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
		gadgets = { 3001, 3003, 3004, 3005, 3008 },
		regions = { 3009 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3006, 3007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = End Suite,
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

require "V2_8/CrowTheatre_Whodunit"