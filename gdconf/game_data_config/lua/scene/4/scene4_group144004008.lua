-- 基础信息
local base_info = {
	group_id = 144004008
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8003
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 24010301, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {8016,8015,8025}

local configIDList = {8001,8022,8023}
local randomNum = 2

local smallRegion = 8033
local bigRegion = 8034

local GroupID = 144004008

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[8005] = { config_id = 8005, monster_id = 24010101, pos = { x = -302.031, y = 120.798, z = -704.897 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8006] = { config_id = 8006, monster_id = 24010101, pos = { x = -299.486, y = 120.431, z = -707.140 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8007] = { config_id = 8007, monster_id = 24010101, pos = { x = -287.752, y = 120.565, z = -695.263 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8008] = { config_id = 8008, monster_id = 24010101, pos = { x = -292.521, y = 121.041, z = -691.155 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8009] = { config_id = 8009, monster_id = 24010101, pos = { x = -288.569, y = 120.910, z = -690.670 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8010] = { config_id = 8010, monster_id = 24010101, pos = { x = -287.752, y = 120.565, z = -695.263 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8011] = { config_id = 8011, monster_id = 24010301, pos = { x = -303.526, y = 120.779, z = -706.891 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 6, drop_id = 1000100, disableWander = true, affix = { 4118, 1007 }, pose_id = 100, area_id = 100 },
	[8018] = { config_id = 8018, monster_id = 24010101, pos = { x = -286.600, y = 120.712, z = -692.748 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8030] = { config_id = 8030, monster_id = 24010101, pos = { x = -292.521, y = 121.041, z = -691.155 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 5012, 1007 }, pose_id = 100, area_id = 100 },
	[8032] = { config_id = 8032, monster_id = 24010301, pos = { x = -288.569, y = 120.910, z = -690.670 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 6, drop_id = 1000100, disableWander = true, affix = { 4118, 1007 }, pose_id = 100, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[8001] = { config_id = 8001, gadget_id = 70350253, pos = { x = -288.932, y = 121.784, z = -705.383 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, route_id = 400400016, area_id = 100 },
	[8002] = { config_id = 8002, gadget_id = 70360272, pos = { x = -296.472, y = 120.692, z = -700.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	[8003] = { config_id = 8003, gadget_id = 70950009, pos = { x = -303.900, y = 118.850, z = -696.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	[8015] = { config_id = 8015, gadget_id = 70350253, pos = { x = -291.968, y = 121.857, z = -707.835 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, route_id = 400400017, area_id = 100 },
	[8016] = { config_id = 8016, gadget_id = 70350253, pos = { x = -303.973, y = 123.614, z = -693.839 }, rot = { x = 0.000, y = 125.000, z = 0.000 }, level = 1, route_id = 400400018, area_id = 100 },
	[8022] = { config_id = 8022, gadget_id = 70350253, pos = { x = -306.571, y = 123.518, z = -697.753 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, route_id = 400400019, area_id = 100 },
	[8023] = { config_id = 8023, gadget_id = 70350253, pos = { x = -299.815, y = 123.619, z = -689.074 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, route_id = 400400020, area_id = 100 },
	[8025] = { config_id = 8025, gadget_id = 70350253, pos = { x = -286.209, y = 121.900, z = -701.532 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, route_id = 400400021, area_id = 100 }
}

-- 区域
regions = {
	[8033] = { config_id = 8033, shape = RegionShape.SPHERE, radius = 25, pos = { x = -296.472, y = 120.692, z = -700.116 }, area_id = 100 },
	[8034] = { config_id = 8034, shape = RegionShape.SPHERE, radius = 30, pos = { x = -296.472, y = 120.692, z = -700.116 }, area_id = 100 },
	[8035] = { config_id = 8035, shape = RegionShape.SPHERE, radius = 20, pos = { x = -296.801, y = 120.817, z = -698.853 }, area_id = 100 }
}

-- 触发器
triggers = {
	{ config_id = 1008004, name = "GALLERY_START_8004", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_8004", trigger_count = 0 },
	{ config_id = 1008012, name = "GADGET_CREATE_8012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8012", action = "action_EVENT_GADGET_CREATE_8012", trigger_count = 0 },
	{ config_id = 1008013, name = "VARIABLE_CHANGE_8013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8013", action = "action_EVENT_VARIABLE_CHANGE_8013", trigger_count = 0 },
	{ config_id = 1008014, name = "TIMER_EVENT_8014", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer", condition = "", action = "action_EVENT_TIMER_EVENT_8014", trigger_count = 0 },
	{ config_id = 1008017, name = "TIMER_EVENT_8017", event = EventType.EVENT_TIMER_EVENT, source = "target_timer", condition = "", action = "action_EVENT_TIMER_EVENT_8017", trigger_count = 0 },
	{ config_id = 1008019, name = "VARIABLE_CHANGE_8019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8019", action = "action_EVENT_VARIABLE_CHANGE_8019", trigger_count = 0 },
	{ config_id = 1008020, name = "VARIABLE_CHANGE_8020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_8020", action = "action_EVENT_VARIABLE_CHANGE_8020", trigger_count = 0 },
	{ config_id = 1008021, name = "TIMER_EVENT_8021", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_8021", trigger_count = 0 },
	{ config_id = 1008024, name = "TIMER_EVENT_8024", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_8024", trigger_count = 0 },
	{ config_id = 1008026, name = "MONSTER_TIDE_DIE_8026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_8026", action = "action_EVENT_MONSTER_TIDE_DIE_8026", trigger_count = 0 },
	{ config_id = 1008027, name = "TIMER_EVENT_8027", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_8027", trigger_count = 0 },
	{ config_id = 1008028, name = "TIMER_EVENT_8028", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_8028", trigger_count = 0 },
	{ config_id = 1008029, name = "MONSTER_TIDE_DIE_8029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_8029", action = "action_EVENT_MONSTER_TIDE_DIE_8029", trigger_count = 0 },
	{ config_id = 1008031, name = "MONSTER_TIDE_DIE_8031", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_8031", action = "action_EVENT_MONSTER_TIDE_DIE_8031", trigger_count = 0 },
	{ config_id = 1008035, name = "ENTER_REGION_8035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_8035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_tide", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster_tide2", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster_tide3", value = 0, no_refresh = false },
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
		gadgets = { 8002 },
		regions = { 8035 },
		triggers = { "GALLERY_START_8004", "ENTER_REGION_8035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8003 },
		regions = { },
		triggers = { "GADGET_CREATE_8012", "VARIABLE_CHANGE_8013", "TIMER_EVENT_8014", "TIMER_EVENT_8017", "MONSTER_TIDE_DIE_8031" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 8001, 8022, 8023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 8015, 8016, 8025 },
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
		triggers = { "VARIABLE_CHANGE_8020", "TIMER_EVENT_8021", "TIMER_EVENT_8024", "MONSTER_TIDE_DIE_8026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_8019", "TIMER_EVENT_8027", "TIMER_EVENT_8028", "MONSTER_TIDE_DIE_8029" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 8005, 8006, 8011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 8007, 8008, 8009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 8010, 8030, 8032 },
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

-- 触发操作
function action_EVENT_GALLERY_START_8004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004008, 2)
	
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8012(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8012(context, evt)
	-- 将本组内变量名为 "monster_tide" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8013(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer", 1)
	end
	
	-- 将本组内变量名为 "monster_tide" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144004008, {8005,8006,8011}, 3, 1, 1) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004008的对象,请求一次调用,并将string参数："target_timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004008, "target_timer", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8017(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide3"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8019(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer3", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer3", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
			return -1
		end
	end
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8020(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer2", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144004008, "monster_timer2", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
			return -1
		end
	end
	
	-- 将本组内变量名为 "monster_tide2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide2", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8021(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144004008, {8007,8008,8009}, 3, 2, 2) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004008的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004008, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8024(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_8026(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_8026(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004008, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004008, 6)
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8027(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144004008, {8010,8030,8032}, 3, 1, 2) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144004008的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004008, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8028(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_8029(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_8029(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004008, "target_timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_8031(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_8031(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144004008, "target_timer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004008, 5)
	
	-- 将本组内变量名为 "monster_tide2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_8035(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"