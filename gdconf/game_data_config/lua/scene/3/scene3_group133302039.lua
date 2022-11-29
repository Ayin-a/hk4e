-- 基础信息
local base_info = {
	group_id = 133302039
}

-- Trigger变量
local defs = {
	group_ID = 133302039,
	gadget_thunderThelfID = 39002,
	pointarray_ID = 330200004,
	maxPointCount = 14,
	pointInfo = {3,6,11,14} 
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


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0, turn_mode = false })
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
	{ config_id = 39001, gadget_id = 70350083, pos = { x = -592.392, y = 192.152, z = 2458.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 39002, gadget_id = 70290529, pos = { x = -587.829, y = 179.371, z = 2494.410 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 27, start_route = false, persistent = true, is_use_point_array = true, area_id = 24 },
	{ config_id = 39004, gadget_id = 70220103, pos = { x = -655.494, y = 150.000, z = 2553.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39005, gadget_id = 70220103, pos = { x = -669.764, y = 145.000, z = 2570.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39006, gadget_id = 70220103, pos = { x = -664.376, y = 145.000, z = 2581.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39007, gadget_id = 70220103, pos = { x = -668.751, y = 145.000, z = 2591.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39008, gadget_id = 70220103, pos = { x = -672.471, y = 145.000, z = 2611.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39009, gadget_id = 70690013, pos = { x = -587.887, y = 112.492, z = 2497.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39010, gadget_id = 70220103, pos = { x = -665.553, y = 148.000, z = 2640.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39011, gadget_id = 70220103, pos = { x = -650.388, y = 153.000, z = 2672.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39013, gadget_id = 70220103, pos = { x = -639.617, y = 158.000, z = 2689.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39014, gadget_id = 70220103, pos = { x = -628.417, y = 159.000, z = 2698.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39015, gadget_id = 70220103, pos = { x = -619.203, y = 163.000, z = 2722.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39016, gadget_id = 70690013, pos = { x = -669.804, y = 92.000, z = 2617.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39017, gadget_id = 70220103, pos = { x = -591.005, y = 215.000, z = 2747.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39019, gadget_id = 70220103, pos = { x = -565.582, y = 216.000, z = 2768.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39023, gadget_id = 70690013, pos = { x = -618.141, y = 155.399, z = 2727.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39034, gadget_id = 70690001, pos = { x = -593.535, y = 167.349, z = 2507.378 }, rot = { x = 21.177, y = 327.729, z = 342.580 }, level = 27, area_id = 24 },
	{ config_id = 39035, gadget_id = 70690001, pos = { x = -599.654, y = 165.208, z = 2514.214 }, rot = { x = 21.177, y = 304.513, z = 342.580 }, level = 27, area_id = 24 },
	{ config_id = 39037, gadget_id = 70690001, pos = { x = -614.917, y = 158.177, z = 2526.318 }, rot = { x = 22.777, y = 309.273, z = 330.056 }, level = 27, area_id = 24 },
	{ config_id = 39038, gadget_id = 70690001, pos = { x = -620.460, y = 155.140, z = 2530.825 }, rot = { x = 26.663, y = 306.757, z = 329.003 }, level = 27, area_id = 24 },
	{ config_id = 39039, gadget_id = 70690001, pos = { x = -627.073, y = 152.981, z = 2534.124 }, rot = { x = 0.000, y = 297.163, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39040, gadget_id = 70690013, pos = { x = -643.716, y = 96.000, z = 2542.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39041, gadget_id = 70690013, pos = { x = -565.582, y = 158.000, z = 2768.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39042, gadget_id = 70690001, pos = { x = -617.089, y = 177.533, z = 2724.711 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39044, gadget_id = 70310488, pos = { x = -655.494, y = 131.537, z = 2553.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39045, gadget_id = 70310488, pos = { x = -669.764, y = 131.488, z = 2570.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39046, gadget_id = 70310488, pos = { x = -664.376, y = 132.000, z = 2581.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39047, gadget_id = 70310488, pos = { x = -668.749, y = 131.767, z = 2591.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39048, gadget_id = 70310488, pos = { x = -665.553, y = 131.154, z = 2640.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39049, gadget_id = 70310488, pos = { x = -650.387, y = 149.858, z = 2672.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39051, gadget_id = 70310488, pos = { x = -639.617, y = 147.895, z = 2689.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39052, gadget_id = 70310488, pos = { x = -628.416, y = 148.377, z = 2698.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39053, gadget_id = 70310488, pos = { x = -619.193, y = 159.065, z = 2722.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39056, gadget_id = 70310488, pos = { x = -591.008, y = 201.743, z = 2747.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39057, gadget_id = 70310488, pos = { x = -672.471, y = 131.540, z = 2611.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39058, gadget_id = 70310488, pos = { x = -672.471, y = 131.540, z = 2611.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39059, gadget_id = 70310488, pos = { x = -619.193, y = 159.065, z = 2722.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39061, gadget_id = 70690001, pos = { x = -641.002, y = 158.000, z = 2673.526 }, rot = { x = 0.000, y = 59.373, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39062, gadget_id = 70690001, pos = { x = -637.197, y = 158.000, z = 2676.443 }, rot = { x = 0.000, y = 37.151, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39063, gadget_id = 70690001, pos = { x = -634.264, y = 158.000, z = 2680.314 }, rot = { x = 0.000, y = 29.261, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39064, gadget_id = 70690001, pos = { x = -631.880, y = 158.000, z = 2684.568 }, rot = { x = 0.000, y = 19.707, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39065, gadget_id = 70690001, pos = { x = -630.739, y = 158.000, z = 2687.753 }, rot = { x = 0.000, y = 19.707, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 39066, gadget_id = 70690013, pos = { x = -628.417, y = 101.000, z = 2698.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 39032, shape = RegionShape.SPHERE, radius = 5, pos = { x = -672.471, y = 150.000, z = 2611.047 }, area_id = 24 },
	{ config_id = 39033, shape = RegionShape.SPHERE, radius = 10, pos = { x = -620.279, y = 165.000, z = 2722.668 }, area_id = 24 },
	{ config_id = 39067, shape = RegionShape.CUBIC, size = { x = 70.000, y = 30.000, z = 10.000 }, pos = { x = -669.559, y = 132.000, z = 2621.377 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1039024, name = "GADGET_CREATE_39024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39024", action = "action_EVENT_GADGET_CREATE_39024", trigger_count = 0 },
	{ config_id = 1039025, name = "SELECT_OPTION_39025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_39025", action = "action_EVENT_SELECT_OPTION_39025", trigger_count = 0 },
	{ config_id = 1039026, name = "CHALLENGE_FAIL_39026", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_39026", trigger_count = 0 },
	{ config_id = 1039027, name = "CHALLENGE_SUCCESS_39027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_39027", trigger_count = 0 },
	{ config_id = 1039028, name = "GROUP_LOAD_39028", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_39028", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1039029, name = "PLATFORM_REACH_POINT_39029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_39029", action = "action_EVENT_PLATFORM_REACH_POINT_39029", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1039030, name = "AVATAR_NEAR_PLATFORM_39030", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_39030", action = "action_EVENT_AVATAR_NEAR_PLATFORM_39030", trigger_count = 0 },
	{ config_id = 1039031, name = "GADGET_STATE_CHANGE_39031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_39031", action = "action_EVENT_GADGET_STATE_CHANGE_39031", trigger_count = 0 },
	{ config_id = 1039032, name = "ENTER_REGION_39032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39032", action = "action_EVENT_ENTER_REGION_39032" },
	{ config_id = 1039033, name = "ENTER_REGION_39033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39033", action = "action_EVENT_ENTER_REGION_39033" },
	{ config_id = 1039054, name = "GADGET_CREATE_39054", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39054", action = "action_EVENT_GADGET_CREATE_39054", trigger_count = 0 },
	{ config_id = 1039060, name = "TIME_AXIS_PASS_39060", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_39060" },
	{ config_id = 1039067, name = "ENTER_REGION_39067", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_39067", action = "action_EVENT_ENTER_REGION_39067" }
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
		{ config_id = 39003, gadget_id = 70220103, pos = { x = -610.249, y = 191.365, z = 2500.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39012, gadget_id = 70220103, pos = { x = -634.482, y = 157.000, z = 2667.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39018, gadget_id = 70220103, pos = { x = -587.520, y = 215.000, z = 2760.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39020, gadget_id = 70220103, pos = { x = -571.288, y = 223.616, z = 2768.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39021, gadget_id = 70220103, pos = { x = -571.288, y = 223.616, z = 2768.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39022, gadget_id = 70220103, pos = { x = -571.288, y = 223.616, z = 2768.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39036, gadget_id = 70690001, pos = { x = -606.496, y = 163.847, z = 2518.918 }, rot = { x = 21.177, y = 304.513, z = 342.580 }, level = 27, area_id = 24 },
		{ config_id = 39043, gadget_id = 70690001, pos = { x = -617.089, y = 178.075, z = 2724.711 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 39050, gadget_id = 70310488, pos = { x = -634.482, y = 151.767, z = 2667.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
	},
	triggers = {
		{ config_id = 1039055, name = "TIME_AXIS_PASS_39055", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_39055", trigger_count = 0 }
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
		gadgets = { 39001 },
		regions = { },
		triggers = { "GADGET_CREATE_39024", "SELECT_OPTION_39025", "CHALLENGE_FAIL_39026", "CHALLENGE_SUCCESS_39027", "GROUP_LOAD_39028", "TIME_AXIS_PASS_39060" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 39002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_39029", "AVATAR_NEAR_PLATFORM_39030", "GADGET_STATE_CHANGE_39031", "GADGET_CREATE_39054" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 39004, 39005, 39006, 39007, 39008, 39009, 39034, 39035, 39037, 39038, 39039, 39040, 39044, 39045, 39046, 39047, 39057 },
		regions = { 39032, 39067 },
		triggers = { "ENTER_REGION_39032", "ENTER_REGION_39067" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 39010, 39011, 39013, 39014, 39015, 39016, 39048, 39049, 39051, 39052, 39058, 39059, 39061, 39062, 39063, 39064, 39065, 39066 },
		regions = { 39033 },
		triggers = { "ENTER_REGION_39033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 39017, 39019, 39023, 39041, 39042, 39053, 39056 },
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
function condition_EVENT_GADGET_CREATE_39024(context, evt)
	if 39001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302039, 39001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_39025(context, evt)
	-- 判断是gadgetid 39001 option_id 175
	if 39001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_39025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302039, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302039, 3)
	
	-- 删除指定group： 133302039 ；指定config：39001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302039, 39001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 39001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 300, 2, 39031, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-587，179，2494），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-587, y=179, z=2494}
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
function action_EVENT_CHALLENGE_FAIL_39026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302039, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_39027(context, evt)
	-- 将configid为 39001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_39028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302039, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_39029(context, evt)
	if 39002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_39029(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_39030(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_39030(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_39031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302039, 39002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_39031(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39032(context, evt)
	if evt.param1 ~= 39032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302039, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39033(context, evt)
	if evt.param1 ~= 39033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302039, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39054(context, evt)
	if 39002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39054(context, evt)
	-- 将configid为 39002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 39002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_39060(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_39067(context, evt)
	if evt.param1 ~= 39067 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_39067(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302039, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302039, 3)
	
	return 0
end