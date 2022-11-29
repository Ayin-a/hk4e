-- 基础信息
local base_info = {
	group_id = 133302021
}

-- Trigger变量
local defs = {
	group_ID = 133302021,
	gadget_thunderThelfID = 21002,
	pointarray_ID = 330200003,
	maxPointCount = 14,
	pointInfo = {6,10,14} 
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog("stop point : "..stoppoint)
	local currentNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	for i=currentNodeIndex + 1,stoppoint do
		table.insert(path,i)
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
	{ config_id = 21001, gadget_id = 70350083, pos = { x = -915.753, y = 389.499, z = 3194.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 21002, gadget_id = 70290529, pos = { x = -895.263, y = 400.000, z = 3180.964 }, rot = { x = 0.000, y = 102.946, z = 0.000 }, level = 30, start_route = false, persistent = true, is_use_point_array = true, area_id = 23 },
	{ config_id = 21005, gadget_id = 70220103, pos = { x = -871.055, y = 400.000, z = 3166.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21006, gadget_id = 70220103, pos = { x = -831.121, y = 400.000, z = 3152.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21007, gadget_id = 70220103, pos = { x = -792.046, y = 400.000, z = 3135.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21008, gadget_id = 70220103, pos = { x = -769.877, y = 400.000, z = 3102.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21009, gadget_id = 70690013, pos = { x = -908.593, y = 350.000, z = 3189.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21011, gadget_id = 70220103, pos = { x = -733.548, y = 400.000, z = 3084.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21013, gadget_id = 70220103, pos = { x = -700.252, y = 400.000, z = 3058.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21015, gadget_id = 70220103, pos = { x = -681.279, y = 400.000, z = 3039.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21016, gadget_id = 70690013, pos = { x = -769.490, y = 347.000, z = 3102.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21017, gadget_id = 70220103, pos = { x = -642.607, y = 400.000, z = 3031.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 21019, gadget_id = 70220103, pos = { x = -634.090, y = 400.000, z = 3004.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21020, gadget_id = 70220103, pos = { x = -601.833, y = 400.000, z = 3007.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21022, gadget_id = 70220103, pos = { x = -569.272, y = 400.000, z = 2984.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21023, gadget_id = 70690013, pos = { x = -681.279, y = 347.000, z = 3039.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21034, gadget_id = 70690013, pos = { x = -831.121, y = 345.000, z = 3152.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21035, gadget_id = 70690013, pos = { x = -700.252, y = 342.000, z = 3058.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21036, gadget_id = 70690013, pos = { x = -634.090, y = 345.000, z = 3004.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 21037, gadget_id = 70690013, pos = { x = -569.272, y = 342.000, z = 2984.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 21039, gadget_id = 70690001, pos = { x = -884.289, y = 397.000, z = 3184.469 }, rot = { x = 0.000, y = 95.823, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21040, gadget_id = 70690001, pos = { x = -878.129, y = 397.000, z = 3183.841 }, rot = { x = 0.000, y = 95.823, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21041, gadget_id = 70690001, pos = { x = -869.138, y = 397.000, z = 3182.123 }, rot = { x = 0.000, y = 114.635, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21042, gadget_id = 70690001, pos = { x = -864.723, y = 397.000, z = 3180.099 }, rot = { x = 0.000, y = 114.635, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21044, gadget_id = 70690001, pos = { x = -856.167, y = 397.000, z = 3175.171 }, rot = { x = 0.000, y = 134.342, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21045, gadget_id = 70690001, pos = { x = -850.735, y = 397.000, z = 3169.077 }, rot = { x = 0.000, y = 139.649, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21047, gadget_id = 70690001, pos = { x = -814.010, y = 397.000, z = 3133.505 }, rot = { x = 0.000, y = 137.309, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21048, gadget_id = 70690001, pos = { x = -807.567, y = 397.000, z = 3126.521 }, rot = { x = 0.000, y = 137.309, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21049, gadget_id = 70690001, pos = { x = -801.140, y = 397.000, z = 3119.554 }, rot = { x = 0.000, y = 137.309, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21050, gadget_id = 70690001, pos = { x = -796.386, y = 397.000, z = 3113.338 }, rot = { x = 0.000, y = 125.091, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21051, gadget_id = 70690001, pos = { x = -790.828, y = 397.000, z = 3110.131 }, rot = { x = 0.000, y = 114.728, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21052, gadget_id = 70690001, pos = { x = -757.319, y = 397.000, z = 3081.786 }, rot = { x = 0.000, y = 147.499, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21053, gadget_id = 70690001, pos = { x = -752.167, y = 397.000, z = 3074.396 }, rot = { x = 0.000, y = 143.017, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21054, gadget_id = 70690001, pos = { x = -747.058, y = 397.000, z = 3068.202 }, rot = { x = 0.000, y = 128.004, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21055, gadget_id = 70690001, pos = { x = -737.551, y = 397.000, z = 3061.589 }, rot = { x = 0.000, y = 117.021, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21056, gadget_id = 70690001, pos = { x = -731.734, y = 397.000, z = 3059.733 }, rot = { x = 0.000, y = 105.128, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21057, gadget_id = 70690001, pos = { x = -723.860, y = 397.000, z = 3058.105 }, rot = { x = 0.000, y = 90.060, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21058, gadget_id = 70690013, pos = { x = -601.833, y = 342.000, z = 3007.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 21059, gadget_id = 70690013, pos = { x = -871.055, y = 342.000, z = 3166.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21060, gadget_id = 70690013, pos = { x = -792.046, y = 342.000, z = 3135.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21061, gadget_id = 70690013, pos = { x = -733.548, y = 342.000, z = 3084.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21062, gadget_id = 70690013, pos = { x = -642.607, y = 342.000, z = 3031.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 21063, gadget_id = 70690001, pos = { x = -670.742, y = 397.000, z = 3025.167 }, rot = { x = 0.000, y = 127.815, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 21064, gadget_id = 70690001, pos = { x = -662.288, y = 397.000, z = 3018.606 }, rot = { x = 0.000, y = 127.815, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 21065, gadget_id = 70690001, pos = { x = -657.541, y = 397.000, z = 3014.483 }, rot = { x = 0.000, y = 117.607, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 21066, gadget_id = 70690001, pos = { x = -653.727, y = 397.000, z = 3012.489 }, rot = { x = 0.000, y = 117.607, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21067, gadget_id = 70690001, pos = { x = -618.536, y = 397.000, z = 2996.245 }, rot = { x = 0.000, y = 117.607, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21068, gadget_id = 70690001, pos = { x = -610.975, y = 397.000, z = 2992.291 }, rot = { x = 0.000, y = 111.567, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21069, gadget_id = 70690001, pos = { x = -600.934, y = 397.000, z = 2989.188 }, rot = { x = 0.000, y = 100.738, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21070, gadget_id = 70690001, pos = { x = -589.320, y = 397.000, z = 2986.929 }, rot = { x = 0.000, y = 100.738, z = 0.000 }, level = 33, area_id = 24 },
	{ config_id = 21071, gadget_id = 70690013, pos = { x = -769.490, y = 347.000, z = 3102.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 21072, gadget_id = 70690013, pos = { x = -681.279, y = 347.000, z = 3039.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 21032, shape = RegionShape.SPHERE, radius = 20, pos = { x = -768.368, y = 400.000, z = 3103.387 }, area_id = 23 },
	{ config_id = 21033, shape = RegionShape.SPHERE, radius = 20, pos = { x = -681.614, y = 400.000, z = 3039.553 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1021024, name = "GADGET_CREATE_21024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21024", action = "action_EVENT_GADGET_CREATE_21024", trigger_count = 0 },
	{ config_id = 1021025, name = "SELECT_OPTION_21025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_21025", action = "action_EVENT_SELECT_OPTION_21025", trigger_count = 0 },
	{ config_id = 1021026, name = "CHALLENGE_FAIL_21026", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_21026", trigger_count = 0 },
	{ config_id = 1021027, name = "CHALLENGE_SUCCESS_21027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_21027", trigger_count = 0 },
	{ config_id = 1021028, name = "GROUP_LOAD_21028", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_21028", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1021029, name = "PLATFORM_REACH_POINT_21029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_21029", action = "action_EVENT_PLATFORM_REACH_POINT_21029", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1021030, name = "AVATAR_NEAR_PLATFORM_21030", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_21030", action = "action_EVENT_AVATAR_NEAR_PLATFORM_21030", trigger_count = 0 },
	{ config_id = 1021031, name = "GADGET_STATE_CHANGE_21031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_21031", action = "action_EVENT_GADGET_STATE_CHANGE_21031", trigger_count = 0 },
	{ config_id = 1021032, name = "ENTER_REGION_21032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21032", action = "action_EVENT_ENTER_REGION_21032" },
	{ config_id = 1021033, name = "ENTER_REGION_21033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21033", action = "action_EVENT_ENTER_REGION_21033" },
	{ config_id = 1021038, name = "GADGET_CREATE_21038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_21038", action = "action_EVENT_GADGET_CREATE_21038", trigger_count = 0 },
	-- 挑战成功后延迟卸载suite2
	{ config_id = 1021073, name = "TIME_AXIS_PASS_21073", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_21073" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = false },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 21003, gadget_id = 70220103, pos = { x = -892.669, y = 400.000, z = 3181.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21004, gadget_id = 70220103, pos = { x = -849.855, y = 400.000, z = 3166.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21010, gadget_id = 70220103, pos = { x = -762.290, y = 400.000, z = 3093.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21012, gadget_id = 70220103, pos = { x = -741.248, y = 400.000, z = 3070.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
		{ config_id = 21014, gadget_id = 70220103, pos = { x = -700.089, y = 400.000, z = 3064.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 22 },
		{ config_id = 21018, gadget_id = 70220103, pos = { x = -617.384, y = 400.000, z = 3014.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
		{ config_id = 21021, gadget_id = 70220103, pos = { x = -590.149, y = 400.000, z = 2991.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 24 },
		{ config_id = 21043, gadget_id = 70690001, pos = { x = -860.215, y = 397.000, z = 3178.032 }, rot = { x = 0.000, y = 125.256, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 21046, gadget_id = 70690001, pos = { x = -836.797, y = 397.000, z = 3161.167 }, rot = { x = 0.000, y = 125.256, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 21001 },
		regions = { },
		triggers = { "GADGET_CREATE_21024", "SELECT_OPTION_21025", "CHALLENGE_FAIL_21026", "CHALLENGE_SUCCESS_21027", "GROUP_LOAD_21028", "TIME_AXIS_PASS_21073" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 21002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_21029", "AVATAR_NEAR_PLATFORM_21030", "GADGET_STATE_CHANGE_21031", "GADGET_CREATE_21038" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 21005, 21006, 21007, 21008, 21009, 21034, 21039, 21040, 21041, 21042, 21044, 21045, 21047, 21048, 21049, 21050, 21051, 21059, 21060, 21071 },
		regions = { 21032 },
		triggers = { "ENTER_REGION_21032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 21011, 21013, 21015, 21016, 21035, 21052, 21053, 21054, 21055, 21056, 21057, 21061, 21072 },
		regions = { 21033 },
		triggers = { "ENTER_REGION_21033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 21017, 21019, 21020, 21022, 21023, 21036, 21037, 21058, 21062, 21063, 21064, 21065, 21066, 21067, 21068, 21069, 21070 },
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
function condition_EVENT_GADGET_CREATE_21024(context, evt)
	if 21001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302021, 21001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_21025(context, evt)
	-- 判断是gadgetid 21001 option_id 175
	if 21001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_21025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302021, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302021, 3)
	
	-- 删除指定group： 133302021 ；指定config：21001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302021, 21001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 21001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 300, 2, 201031, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-895，400，3181），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-895, y=400, z=3181}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_21026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302021, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_21027(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_21028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302021, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_21029(context, evt)
	if 21002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_21029(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)       
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	    return -1
	end 
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
	    ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
	    --ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_thunderThelfID, GadgetState.GearStart)
	    --ScriptLib.SetFlowSuite(context, defs.group_ID, 2)       
	    --ScriptLib.MarkPlayerAction(context, 2014, 3, 1) 
	    return 0
	end
	        
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	next = next + 1
	ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_21030(context, evt)
	        ScriptLib.PrintLog("Near Platform condition : ".. evt.param1.." | RouteID = " .. evt.param2 .. " | Point = ".. evt.param3)
	        if defs.gadget_thunderThelfID ~= evt.param1 then
	            return false
	        end
	        local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_thunderThelfID)
	        ScriptLib.PrintLog("Near Platform condition : ".." State = "..state) 
	        if state == 202 then 
	            return false
	        end
	        if ScriptLib.GetGroupVariableValue(context, "isMoving") ~= 0 then 
	            return false
	        end
	        
	        if ScriptLib.GetGroupVariableValue(context, "isFinished") == 1 then
	            return false
	        end
	
	        return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_21030(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_21031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302021, 21002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_21031(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21032(context, evt)
	if evt.param1 ~= 21032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302021, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21033(context, evt)
	if evt.param1 ~= 21033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302021, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_21038(context, evt)
	if 21002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_21038(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_21073(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302021, 2)
	
	return 0
end