-- 基础信息
local base_info = {
	group_id = 144004004
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8001
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 25010501, score = 50},
        {monsterID = 25030301, score = 50},
        {monsterID = 25070101, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {4021,4040,4019,4020}
local configIDList = {4004,4005,4006,4018}
local randomNum = 2

local smallRegion = 4060
local bigRegion = 4061

local GroupID = 144004004

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[4002] = { config_id = 4002, monster_id = 25010301, pos = { x = -662.295, y = 120.992, z = -205.819 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4003] = { config_id = 4003, monster_id = 25010401, pos = { x = -659.194, y = 120.473, z = -211.604 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4008] = { config_id = 4008, monster_id = 25010301, pos = { x = -660.991, y = 120.753, z = -209.009 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4023] = { config_id = 4023, monster_id = 25010201, pos = { x = -662.604, y = 121.026, z = -205.289 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4024] = { config_id = 4024, monster_id = 25010201, pos = { x = -659.503, y = 120.521, z = -211.075 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4025] = { config_id = 4025, monster_id = 25010701, pos = { x = -661.300, y = 120.777, z = -208.480 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4026] = { config_id = 4026, monster_id = 25010201, pos = { x = -654.706, y = 120.499, z = -196.817 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4027] = { config_id = 4027, monster_id = 25010201, pos = { x = -653.102, y = 120.279, z = -212.357 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4028] = { config_id = 4028, monster_id = 25010401, pos = { x = -654.397, y = 120.425, z = -197.347 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4029] = { config_id = 4029, monster_id = 25010301, pos = { x = -652.793, y = 120.288, z = -212.887 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4030] = { config_id = 4030, monster_id = 25010401, pos = { x = -647.681, y = 120.270, z = -210.066 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4031] = { config_id = 4031, monster_id = 25010301, pos = { x = -647.409, y = 120.104, z = -204.378 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4033] = { config_id = 4033, monster_id = 25010501, pos = { x = -660.172, y = 120.793, z = -200.577 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 6, drop_id = 1000100, disableWander = true, affix = { 4118, 1033 }, area_id = 103 },
	[4034] = { config_id = 4034, monster_id = 25010301, pos = { x = -650.273, y = 120.307, z = -211.580 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4035] = { config_id = 4035, monster_id = 25010401, pos = { x = -657.365, y = 120.596, z = -198.864 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4036] = { config_id = 4036, monster_id = 25010301, pos = { x = -649.168, y = 119.949, z = -200.941 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4037] = { config_id = 4037, monster_id = 25010701, pos = { x = -647.989, y = 120.265, z = -209.537 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4038] = { config_id = 4038, monster_id = 25010201, pos = { x = -647.718, y = 120.095, z = -203.848 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4039] = { config_id = 4039, monster_id = 25010201, pos = { x = -660.481, y = 120.877, z = -200.048 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4043] = { config_id = 4043, monster_id = 25030301, pos = { x = -650.582, y = 120.308, z = -211.051 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 6, drop_id = 1000100, disableWander = true, affix = { 4118, 1033 }, area_id = 103 },
	[4047] = { config_id = 4047, monster_id = 25010201, pos = { x = -657.674, y = 120.679, z = -198.335 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4048] = { config_id = 4048, monster_id = 25010201, pos = { x = -649.477, y = 119.940, z = -200.411 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4049] = { config_id = 4049, monster_id = 25010201, pos = { x = -662.019, y = 120.964, z = -206.226 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4050] = { config_id = 4050, monster_id = 25010301, pos = { x = -658.918, y = 120.443, z = -212.012 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4051] = { config_id = 4051, monster_id = 25060101, pos = { x = -660.714, y = 120.708, z = -209.416 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4052] = { config_id = 4052, monster_id = 25010401, pos = { x = -654.121, y = 120.369, z = -197.754 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4053] = { config_id = 4053, monster_id = 25010201, pos = { x = -652.517, y = 120.272, z = -213.294 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4054] = { config_id = 4054, monster_id = 25060101, pos = { x = -647.404, y = 120.290, z = -210.473 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4055] = { config_id = 4055, monster_id = 25010301, pos = { x = -647.133, y = 120.124, z = -204.785 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4056] = { config_id = 4056, monster_id = 25010201, pos = { x = -659.895, y = 120.743, z = -200.984 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4057] = { config_id = 4057, monster_id = 25070101, pos = { x = -649.997, y = 120.298, z = -211.987 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 6, drop_id = 1000100, disableWander = true, affix = { 4118, 1033 }, area_id = 103 },
	[4058] = { config_id = 4058, monster_id = 25010401, pos = { x = -657.088, y = 120.513, z = -199.272 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 },
	[4059] = { config_id = 4059, monster_id = 25010201, pos = { x = -648.892, y = 119.943, z = -201.348 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[4001] = { config_id = 4001, gadget_id = 70360272, pos = { x = -654.285, y = 120.332, z = -205.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	[4004] = { config_id = 4004, gadget_id = 70350253, pos = { x = -652.507, y = 123.209, z = -193.756 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, route_id = 400400022, area_id = 103 },
	[4005] = { config_id = 4005, gadget_id = 70350253, pos = { x = -660.894, y = 123.873, z = -196.921 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, route_id = 400400023, area_id = 103 },
	[4006] = { config_id = 4006, gadget_id = 70350253, pos = { x = -651.198, y = 122.710, z = -216.426 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 1, route_id = 400400024, area_id = 103 },
	[4018] = { config_id = 4018, gadget_id = 70350253, pos = { x = -642.784, y = 122.609, z = -205.423 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, route_id = 400400025, area_id = 103 },
	[4019] = { config_id = 4019, gadget_id = 70350253, pos = { x = -664.187, y = 123.967, z = -203.076 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 400400026, area_id = 103 },
	[4020] = { config_id = 4020, gadget_id = 70350253, pos = { x = -645.976, y = 122.010, z = -198.968 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, route_id = 400400027, area_id = 103 },
	[4021] = { config_id = 4021, gadget_id = 70350253, pos = { x = -662.121, y = 123.196, z = -212.374 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, route_id = 400400028, area_id = 103 },
	[4032] = { config_id = 4032, gadget_id = 70350253, pos = { x = -645.902, y = 123.755, z = -192.730 }, rot = { x = 0.000, y = 215.000, z = 0.000 }, level = 1, route_id = 400400029, area_id = 103 },
	[4040] = { config_id = 4040, gadget_id = 70350253, pos = { x = -644.896, y = 122.730, z = -213.076 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, route_id = 400400030, area_id = 103 },
	[4041] = { config_id = 4041, gadget_id = 70950009, pos = { x = -659.750, y = 118.870, z = -209.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	[4016] = { config_id = 4016, shape = RegionShape.SPHERE, radius = 20, pos = { x = -653.929, y = 120.332, z = -204.858 }, area_id = 103 },
	[4060] = { config_id = 4060, shape = RegionShape.SPHERE, radius = 25, pos = { x = -654.285, y = 120.332, z = -205.225 }, area_id = 103 },
	[4061] = { config_id = 4061, shape = RegionShape.SPHERE, radius = 30, pos = { x = -654.285, y = 120.332, z = -205.225 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1004007, name = "VARIABLE_CHANGE_4007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4007", action = "action_EVENT_VARIABLE_CHANGE_4007", trigger_count = 0 },
	{ config_id = 1004009, name = "GALLERY_START_4009", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_4009", trigger_count = 0 },
	{ config_id = 1004010, name = "GADGET_CREATE_4010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4010", action = "action_EVENT_GADGET_CREATE_4010", trigger_count = 0 },
	{ config_id = 1004011, name = "TIMER_EVENT_4011", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_4011", trigger_count = 0 },
	{ config_id = 1004012, name = "TIMER_EVENT_4012", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_4012", trigger_count = 0 },
	{ config_id = 1004013, name = "MONSTER_TIDE_DIE_4013", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_4013", action = "action_EVENT_MONSTER_TIDE_DIE_4013", trigger_count = 0 },
	{ config_id = 1004014, name = "VARIABLE_CHANGE_4014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4014", action = "action_EVENT_VARIABLE_CHANGE_4014", trigger_count = 0 },
	{ config_id = 1004015, name = "TIMER_EVENT_4015", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_4015", trigger_count = 0 },
	{ config_id = 1004016, name = "ENTER_REGION_4016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_4016", trigger_count = 0 },
	{ config_id = 1004017, name = "TIMER_EVENT_4017", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_4017", trigger_count = 0 },
	{ config_id = 1004022, name = "MONSTER_TIDE_DIE_4022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_4022", action = "action_EVENT_MONSTER_TIDE_DIE_4022", trigger_count = 0 },
	{ config_id = 1004042, name = "VARIABLE_CHANGE_4042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4042", action = "action_EVENT_VARIABLE_CHANGE_4042", trigger_count = 0 },
	{ config_id = 1004044, name = "TIMER_EVENT_4044", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_4044", trigger_count = 0 },
	{ config_id = 1004045, name = "TIMER_EVENT_4045", event = EventType.EVENT_TIMER_EVENT, source = "target_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_4045", trigger_count = 0 },
	{ config_id = 1004046, name = "MONSTER_TIDE_DIE_4046", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_4046", action = "action_EVENT_MONSTER_TIDE_DIE_4046", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "wave_2", value = 0, no_refresh = false },
	{ config_id = 3, name = "wave_3", value = 0, no_refresh = false },
	{ config_id = 4, name = "time_out", value = 0, no_refresh = false }
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
		gadgets = { 4001 },
		regions = { 4016 },
		triggers = { "GALLERY_START_4009", "ENTER_REGION_4016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4041 },
		regions = { },
		triggers = { "GADGET_CREATE_4010", "VARIABLE_CHANGE_4042", "TIMER_EVENT_4044", "TIMER_EVENT_4045", "MONSTER_TIDE_DIE_4046" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4019, 4020, 4021, 4040 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4004, 4005, 4006, 4018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4007", "TIMER_EVENT_4011", "TIMER_EVENT_4012", "MONSTER_TIDE_DIE_4013" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_4014", "TIMER_EVENT_4015", "TIMER_EVENT_4017", "MONSTER_TIDE_DIE_4022" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 4002, 4003, 4008, 4028, 4029, 4030, 4031, 4033, 4034, 4035, 4036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 4023, 4024, 4025, 4026, 4027, 4037, 4038, 4039, 4043, 4047, 4048 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 4049, 4050, 4051, 4052, 4053, 4054, 4055, 4056, 4057, 4058, 4059 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4007(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer2", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
		return -1
		end
	end
	
	-- 将本组内变量名为 "wave_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GALLERY_START_4009(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4010(context, evt)
	if 4041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4010(context, evt)
	-- 将本组内变量名为 "wave_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4011(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144004004, {4023,4024,4025,4026,4027,4037,4038,4039,4043,4047,4048}, 11, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004004的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004004, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4012(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4013(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4013(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004004, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004004, 6)
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4014(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer3", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
		return -1
		end
	end
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4015(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144004004, {4049,4050,4051,4052,4053,4054,4055,4056,4057,4058,4059}, 11, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004004的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004004, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_4016(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4017(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4022(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4022(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004004, "target_timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4042(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer1", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004004, "monster_timer1", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
		return -1
		end
	end
	
	-- 将本组内变量名为 "wave_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4044(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144004004, {4002,4003,4008,4028,4029,4030,4031,4033,4034,4035,4036}, 11, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004004的对象,请求一次调用,并将string参数："target_timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004004, "target_timer1", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4045(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4046(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4046(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004004, "target_timer1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004004, 5)
	
	-- 将本组内变量名为 "wave_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"