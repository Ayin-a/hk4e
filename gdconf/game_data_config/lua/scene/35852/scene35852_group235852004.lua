-- 基础信息
local base_info = {
	group_id = 235852004
}

-- DEFS_MISCS
local defs = {
				--起始操作台
				starter = 4001 ,
				--起始操作台选项
				option_id = 94 ,
				--波次之间延时 秒
				delay = 2,
				--挑战总时限 秒
				time_limit = 90,
 is_tutorial = 1,
	challenge_id = 2010055,	
	  type = 4,
		rand_suites = {3},
				--怪物潮信息
				--monsters填入怪物configID，为一组怪物的集合，即一波怪物
				--当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量【max是代表一次性刷出的最大数量，min代表的是当小于该值时会触发补怪，每只怪物在一个集合内只能使用一次】
				--spec_event:随着本怪物潮的出现而发生的关卡事件。为LD约定好的枚举。（即希望随着怪物潮出现的BUFF）
				tide_cfg = {
			
					[1] = { monsters = {4002,4003,4004,4005,4006,4007,4008,4009,4010,4011}, min =10, max = 10,mona_buffs = {1}},
				
				},

				stars = {
					--suite x
					[3] = {{4012, 4019}, {4013,4020}, {4014,4021}, {4015,4022}, {4016,4023}, {4017,4024},{4018,4025}},
					
			},
				--怪物潮随机表
				--随机固定顺序怪物潮组合 每次进地城随机取key。
				--key对应value代表依序出现的MonsterTide【即上面tide_cfg中配置的参数】，小花括号内配置复数个表示同时刷出。【即table配置不同的怪物波次的组合，允许复数个怪物波次为一波一次性刷出】
				rand_table = {
					[1] = 
					{
						{1},
						
					},
					
				},
			}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 21020201, pos = { x = 192.812, y = 634.126, z = -1745.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4003] = { config_id = 4003, monster_id = 21020201, pos = { x = 200.920, y = 634.126, z = -1719.519 }, rot = { x = 0.000, y = 179.349, z = 0.000 }, level = 1 },
	[4004] = { config_id = 4004, monster_id = 21010501, pos = { x = 211.088, y = 634.126, z = -1736.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4005] = { config_id = 4005, monster_id = 21010501, pos = { x = 179.536, y = 634.126, z = -1730.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4006] = { config_id = 4006, monster_id = 21011001, pos = { x = 183.587, y = 634.126, z = -1738.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4007] = { config_id = 4007, monster_id = 21011001, pos = { x = 207.208, y = 634.126, z = -1726.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4008] = { config_id = 4008, monster_id = 21010701, pos = { x = 200.437, y = 634.126, z = -1740.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4009] = { config_id = 4009, monster_id = 21010701, pos = { x = 196.539, y = 634.126, z = -1741.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4010] = { config_id = 4010, monster_id = 21011201, pos = { x = 189.375, y = 634.126, z = -1730.467 }, rot = { x = 0.000, y = 136.681, z = 0.000 }, level = 1 },
	[4011] = { config_id = 4011, monster_id = 21011201, pos = { x = 195.992, y = 634.126, z = -1726.914 }, rot = { x = 0.000, y = 138.268, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70360010, pos = { x = 196.697, y = 633.804, z = -1732.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, autopick = true, worktop_config = { init_options = { 94 } } },
	[4012] = { config_id = 4012, gadget_id = 70220119, pos = { x = 219.801, y = 648.279, z = -1753.214 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = { ["SGV_Constellation_Mark"]= 4012,  ["SGV_Constellation_Target"]= 4013} },
	[4013] = { config_id = 4013, gadget_id = 70220119, pos = { x = 216.744, y = 645.686, z = -1754.990 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4013,  ["SGV_Constellation_Target"]= 4014} },
	[4014] = { config_id = 4014, gadget_id = 70220119, pos = { x = 220.794, y = 643.037, z = -1752.637 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4014,  ["SGV_Constellation_Target"]= 4012} },
	[4015] = { config_id = 4015, gadget_id = 70220119, pos = { x = 212.637, y = 647.189, z = -1757.376 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4015,  ["SGV_Constellation_Target"]= 4013} },
	[4016] = { config_id = 4016, gadget_id = 70220119, pos = { x = 208.893, y = 646.196, z = -1759.551 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4016,  ["SGV_Constellation_Target"]= 4015} },
	[4017] = { config_id = 4017, gadget_id = 70220119, pos = { x = 205.486, y = 650.002, z = -1759.401 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4017,  ["SGV_Constellation_Target"]= 4016} },
	[4018] = { config_id = 4018, gadget_id = 70220119, pos = { x = 204.787, y = 643.902, z = -1760.652 }, rot = { x = 0.000, y = 59.847, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Constellation_Mark"]= 4018,  ["SGV_Constellation_Target"]= 4017} },
	[4019] = { config_id = 4019, gadget_id = 70310323, pos = { x = 206.052, y = 634.126, z = -1733.528 }, rot = { x = 0.000, y = 14.937, z = 0.000 }, level = 1 },
	[4020] = { config_id = 4020, gadget_id = 70310323, pos = { x = 198.951, y = 634.126, z = -1731.091 }, rot = { x = 0.000, y = 17.574, z = 0.000 }, level = 1 },
	[4021] = { config_id = 4021, gadget_id = 70310323, pos = { x = 202.395, y = 634.126, z = -1725.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4022] = { config_id = 4022, gadget_id = 70310323, pos = { x = 195.619, y = 634.126, z = -1735.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4023] = { config_id = 4023, gadget_id = 70310323, pos = { x = 190.020, y = 634.126, z = -1736.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4024] = { config_id = 4024, gadget_id = 70310323, pos = { x = 187.814, y = 634.126, z = -1743.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4025] = { config_id = 4025, gadget_id = 70310323, pos = { x = 182.516, y = 634.126, z = -1733.837 }, rot = { x = 0.000, y = 19.142, z = 0.000 }, level = 1 },
	[4027] = { config_id = 4027, gadget_id = 70310075, pos = { x = 199.829, y = 635.710, z = -1768.140 }, rot = { x = 0.000, y = 330.914, z = 0.000 }, level = 1 },
	[4028] = { config_id = 4028, gadget_id = 70900201, pos = { x = 196.697, y = 634.126, z = -1732.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[4032] = { config_id = 4032, gadget_id = 70310457, pos = { x = 204.566, y = 634.049, z = -1733.097 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	[4033] = { config_id = 4033, gadget_id = 70310457, pos = { x = 203.768, y = 634.049, z = -1732.822 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	[4034] = { config_id = 4034, gadget_id = 70310457, pos = { x = 202.963, y = 634.049, z = -1732.545 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	[4035] = { config_id = 4035, gadget_id = 70310457, pos = { x = 202.161, y = 634.049, z = -1732.269 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	[4036] = { config_id = 4036, gadget_id = 70310457, pos = { x = 201.344, y = 634.049, z = -1731.988 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	-- 分割线
	[4037] = { config_id = 4037, gadget_id = 70310457, pos = { x = 200.629, y = 634.049, z = -1731.742 }, rot = { x = 270.000, y = 199.000, z = 0.000 }, level = 1 },
	[4038] = { config_id = 4038, gadget_id = 70310457, pos = { x = 199.362, y = 634.049, z = -1729.850 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4039] = { config_id = 4039, gadget_id = 70310457, pos = { x = 199.881, y = 634.049, z = -1729.183 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4040] = { config_id = 4040, gadget_id = 70310457, pos = { x = 200.405, y = 634.049, z = -1728.513 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4041] = { config_id = 4041, gadget_id = 70310457, pos = { x = 200.926, y = 634.049, z = -1727.843 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4042] = { config_id = 4042, gadget_id = 70310457, pos = { x = 201.457, y = 634.049, z = -1727.162 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	-- 分割线
	[4043] = { config_id = 4043, gadget_id = 70310457, pos = { x = 201.921, y = 634.049, z = -1726.565 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4044] = { config_id = 4044, gadget_id = 70310457, pos = { x = 204.653, y = 634.049, z = -1731.073 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4045] = { config_id = 4045, gadget_id = 70310457, pos = { x = 204.248, y = 634.049, z = -1730.331 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4046] = { config_id = 4046, gadget_id = 70310457, pos = { x = 203.842, y = 634.049, z = -1729.584 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4047] = { config_id = 4047, gadget_id = 70310457, pos = { x = 203.435, y = 634.049, z = -1728.839 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4048] = { config_id = 4048, gadget_id = 70310457, pos = { x = 203.021, y = 634.049, z = -1728.081 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4049] = { config_id = 4049, gadget_id = 70310457, pos = { x = 202.659, y = 634.049, z = -1727.417 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4050] = { config_id = 4050, gadget_id = 70310457, pos = { x = 205.053, y = 634.049, z = -1731.806 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	-- 分割线
	[4051] = { config_id = 4051, gadget_id = 70310457, pos = { x = 205.411, y = 634.049, z = -1732.463 }, rot = { x = 270.000, y = 241.396, z = 0.000 }, level = 1 },
	[4052] = { config_id = 4052, gadget_id = 70310457, pos = { x = 195.833, y = 634.049, z = -1734.621 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4053] = { config_id = 4053, gadget_id = 70310457, pos = { x = 196.352, y = 634.049, z = -1733.954 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4054] = { config_id = 4054, gadget_id = 70310457, pos = { x = 196.875, y = 634.049, z = -1733.284 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4055] = { config_id = 4055, gadget_id = 70310457, pos = { x = 197.396, y = 634.049, z = -1732.614 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4056] = { config_id = 4056, gadget_id = 70310457, pos = { x = 197.927, y = 634.049, z = -1731.933 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	-- 分割线
	[4057] = { config_id = 4057, gadget_id = 70310457, pos = { x = 198.392, y = 634.049, z = -1731.336 }, rot = { x = 270.000, y = 307.932, z = 0.000 }, level = 1 },
	[4058] = { config_id = 4058, gadget_id = 70310457, pos = { x = 191.172, y = 634.049, z = -1735.970 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	[4059] = { config_id = 4059, gadget_id = 70310457, pos = { x = 192.017, y = 634.049, z = -1735.967 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	[4060] = { config_id = 4060, gadget_id = 70310457, pos = { x = 192.867, y = 634.049, z = -1735.964 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	[4061] = { config_id = 4061, gadget_id = 70310457, pos = { x = 193.716, y = 634.049, z = -1735.960 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	[4062] = { config_id = 4062, gadget_id = 70310457, pos = { x = 194.579, y = 634.049, z = -1735.957 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	-- 分割线
	[4063] = { config_id = 4063, gadget_id = 70310457, pos = { x = 195.336, y = 634.049, z = -1735.954 }, rot = { x = 270.000, y = 359.796, z = 0.000 }, level = 1 },
	[4064] = { config_id = 4064, gadget_id = 70310457, pos = { x = 188.189, y = 634.049, z = -1741.076 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4065] = { config_id = 4065, gadget_id = 70310457, pos = { x = 188.419, y = 634.049, z = -1740.257 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4066] = { config_id = 4066, gadget_id = 70310457, pos = { x = 188.646, y = 634.049, z = -1739.438 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4067] = { config_id = 4067, gadget_id = 70310457, pos = { x = 188.871, y = 634.049, z = -1738.620 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4068] = { config_id = 4068, gadget_id = 70310457, pos = { x = 189.102, y = 634.049, z = -1737.787 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4069] = { config_id = 4069, gadget_id = 70310457, pos = { x = 189.303, y = 634.049, z = -1737.058 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	-- 分割线
	[4070] = { config_id = 4070, gadget_id = 70310457, pos = { x = 187.971, y = 634.049, z = -1741.865 }, rot = { x = 270.000, y = 285.465, z = 0.000 }, level = 1 },
	[4071] = { config_id = 4071, gadget_id = 70310457, pos = { x = 185.095, y = 634.049, z = -1738.722 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4072] = { config_id = 4072, gadget_id = 70310457, pos = { x = 185.483, y = 634.049, z = -1739.478 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4073] = { config_id = 4073, gadget_id = 70310457, pos = { x = 185.875, y = 634.049, z = -1740.233 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4074] = { config_id = 4074, gadget_id = 70310457, pos = { x = 186.266, y = 634.049, z = -1740.985 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4075] = { config_id = 4075, gadget_id = 70310457, pos = { x = 186.665, y = 634.049, z = -1741.752 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4076] = { config_id = 4076, gadget_id = 70310457, pos = { x = 187.014, y = 634.049, z = -1742.424 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4077] = { config_id = 4077, gadget_id = 70310457, pos = { x = 184.718, y = 634.049, z = -1737.995 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4079] = { config_id = 4079, gadget_id = 70310075, pos = { x = 225.753, y = 637.841, z = -1716.446 }, rot = { x = 0.000, y = 241.790, z = 0.000 }, level = 1 },
	[4080] = { config_id = 4080, gadget_id = 70310457, pos = { x = 183.203, y = 634.049, z = -1735.077 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4081] = { config_id = 4081, gadget_id = 70310457, pos = { x = 183.594, y = 634.049, z = -1735.828 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	[4082] = { config_id = 4082, gadget_id = 70310457, pos = { x = 183.993, y = 634.049, z = -1736.595 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 },
	-- 分割线
	[4083] = { config_id = 4083, gadget_id = 70310457, pos = { x = 184.342, y = 634.049, z = -1737.267 }, rot = { x = 270.000, y = 62.571, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[4031] = { config_id = 4031, shape = RegionShape.SPHERE, radius = 15, pos = { x = 196.761, y = 634.126, z = -1733.785 } },
	[4078] = { config_id = 4078, shape = RegionShape.SPHERE, radius = 15, pos = { x = 196.761, y = 634.126, z = -1733.785 } }
}

-- 触发器
triggers = {
	{ config_id = 1004026, name = "CHALLENGE_SUCCESS_4026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010055", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4026", trigger_count = 0 },
	{ config_id = 1004029, name = "SELECT_OPTION_4029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4029", action = "action_EVENT_SELECT_OPTION_4029", trigger_count = 0 },
	{ config_id = 1004030, name = "CHALLENGE_FAIL_4030", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010055", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4030", trigger_count = 0 },
	{ config_id = 1004031, name = "ENTER_REGION_4031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4031", action = "action_EVENT_ENTER_REGION_4031", trigger_count = 0 },
	{ config_id = 1004078, name = "ENTER_REGION_4078", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4078", action = "action_EVENT_ENTER_REGION_4078" }
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
		gadgets = { 4001, 4027, 4052, 4053, 4054, 4055, 4056, 4057, 4058, 4059, 4060, 4061, 4062, 4063, 4064, 4065, 4066, 4067, 4068, 4069, 4070, 4071, 4072, 4073, 4074, 4075, 4076, 4077, 4080, 4081, 4082, 4083 },
		regions = { 4031, 4078 },
		triggers = { "CHALLENGE_SUCCESS_4026", "SELECT_OPTION_4029", "CHALLENGE_FAIL_4030", "ENTER_REGION_4031", "ENTER_REGION_4078" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4010, 4011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4028 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4026(context, evt)
	-- 触发镜头注目，注目位置为坐标（199，635，-1768），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=199, y=635, z=-1768}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235852006, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4079 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4029(context, evt)
	-- 判断是gadgetid 4001 option_id 94
	if 4001 ~= evt.param1 then
		return false	
	end
	
	if 94 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4029(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 235852004 ；指定config：4001；物件身上指定option：94；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 235852004, 4001, 94) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建id为4079的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4079 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235852004, 4001, {94}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4079 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4031(context, evt)
	if evt.param1 ~= 4031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4031(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 235852004, EntityType.GADGET, 4028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4078(context, evt)
	if evt.param1 ~= 4078 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
	        return false
	end
	
	if 0~=ScriptLib.GetExhibitionAccumulableData(context,context.uid,11402109) then
	              return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4078(context, evt)
	ScriptLib.AddExhibitionAccumulableData(context, context.uid,"Activity_SummerTimeV2_Mona_Guide2", 1)
	
	ScriptLib.ShowClientTutorial(context,868,{})
	return 0
end

require "V2_8/DLActivityDungeon"