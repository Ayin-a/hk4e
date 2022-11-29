-- 基础信息
local base_info = {
	group_id = 133315024
}

-- Trigger变量
local defs = {
	group_ID = 133315024,
	gadget_thunderThelfID = 24002,
	pointarray_ID = 331500003,
	maxPointCount = 21,
	pointInfo = {5,15,21} 
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
	{ config_id = 24001, gadget_id = 70350083, pos = { x = 215.755, y = 329.612, z = 2397.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 24002, gadget_id = 70290529, pos = { x = 198.946, y = 329.163, z = 2389.763 }, rot = { x = 0.000, y = 253.792, z = 0.000 }, level = 27, start_route = false, persistent = true, is_use_point_array = true, area_id = 20 },
	{ config_id = 24003, gadget_id = 70220103, pos = { x = 177.581, y = 334.086, z = 2386.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24004, gadget_id = 70220103, pos = { x = 157.081, y = 324.121, z = 2382.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24005, gadget_id = 70220103, pos = { x = 142.926, y = 324.694, z = 2373.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24006, gadget_id = 70220103, pos = { x = 142.928, y = 324.358, z = 2384.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24007, gadget_id = 70220103, pos = { x = 113.518, y = 316.241, z = 2368.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24009, gadget_id = 70690013, pos = { x = 109.785, y = 257.000, z = 2350.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24010, gadget_id = 70220103, pos = { x = 100.911, y = 305.468, z = 2330.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24011, gadget_id = 70220103, pos = { x = 84.676, y = 304.074, z = 2314.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24012, gadget_id = 70220103, pos = { x = 94.269, y = 305.301, z = 2292.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24013, gadget_id = 70220103, pos = { x = 117.420, y = 296.501, z = 2288.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24014, gadget_id = 70220103, pos = { x = 139.858, y = 289.089, z = 2266.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24017, gadget_id = 70220103, pos = { x = 161.177, y = 278.720, z = 2277.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24018, gadget_id = 70220103, pos = { x = 176.675, y = 278.264, z = 2291.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24019, gadget_id = 70220103, pos = { x = 195.575, y = 278.166, z = 2311.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24020, gadget_id = 70220103, pos = { x = 215.387, y = 278.927, z = 2288.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24021, gadget_id = 70220103, pos = { x = 247.831, y = 279.460, z = 2289.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24022, gadget_id = 70220103, pos = { x = 283.692, y = 279.998, z = 2291.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24035, gadget_id = 70310488, pos = { x = 177.581, y = 329.003, z = 2386.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24036, gadget_id = 70310488, pos = { x = 157.081, y = 319.038, z = 2382.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24037, gadget_id = 70310488, pos = { x = 142.926, y = 319.612, z = 2373.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24038, gadget_id = 70310488, pos = { x = 142.928, y = 319.275, z = 2384.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24039, gadget_id = 70310488, pos = { x = 113.517, y = 311.159, z = 2368.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24040, gadget_id = 70310488, pos = { x = 100.912, y = 300.247, z = 2330.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24041, gadget_id = 70310488, pos = { x = 84.676, y = 299.072, z = 2314.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24042, gadget_id = 70310488, pos = { x = 94.269, y = 300.299, z = 2292.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24043, gadget_id = 70310488, pos = { x = 117.420, y = 291.500, z = 2288.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24044, gadget_id = 70310488, pos = { x = 139.859, y = 284.088, z = 2266.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24045, gadget_id = 70310488, pos = { x = 161.177, y = 273.334, z = 2277.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24046, gadget_id = 70310488, pos = { x = 176.675, y = 273.173, z = 2291.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24047, gadget_id = 70310488, pos = { x = 195.576, y = 273.074, z = 2311.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24048, gadget_id = 70310488, pos = { x = 215.387, y = 273.836, z = 2288.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24049, gadget_id = 70310488, pos = { x = 247.831, y = 274.376, z = 2289.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24050, gadget_id = 70310488, pos = { x = 113.517, y = 311.159, z = 2368.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 24051, gadget_id = 70310488, pos = { x = 139.859, y = 284.088, z = 2266.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 24032, shape = RegionShape.SPHERE, radius = 15, pos = { x = 112.226, y = 314.410, z = 2357.042 }, area_id = 20 },
	{ config_id = 24033, shape = RegionShape.SPHERE, radius = 20, pos = { x = 150.108, y = 289.089, z = 2271.578 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1024024, name = "GADGET_CREATE_24024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_24024", action = "action_EVENT_GADGET_CREATE_24024", trigger_count = 0 },
	{ config_id = 1024025, name = "SELECT_OPTION_24025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_24025", action = "action_EVENT_SELECT_OPTION_24025", trigger_count = 0 },
	{ config_id = 1024026, name = "CHALLENGE_FAIL_24026", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_24026", trigger_count = 0 },
	{ config_id = 1024027, name = "CHALLENGE_SUCCESS_24027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_24027", trigger_count = 0 },
	{ config_id = 1024028, name = "GROUP_LOAD_24028", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_24028", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1024029, name = "PLATFORM_REACH_POINT_24029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_24029", action = "action_EVENT_PLATFORM_REACH_POINT_24029", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1024030, name = "AVATAR_NEAR_PLATFORM_24030", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_24030", action = "action_EVENT_AVATAR_NEAR_PLATFORM_24030", trigger_count = 0 },
	-- 胜利trigger:玩家追上光团后光团自动改状态
	{ config_id = 1024031, name = "GADGET_STATE_CHANGE_24031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24031", action = "action_EVENT_GADGET_STATE_CHANGE_24031", trigger_count = 0 },
	{ config_id = 1024032, name = "ENTER_REGION_24032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24032", action = "action_EVENT_ENTER_REGION_24032" },
	{ config_id = 1024033, name = "ENTER_REGION_24033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_24033", action = "action_EVENT_ENTER_REGION_24033" },
	-- 光球创生后切成201状态
	{ config_id = 1024034, name = "GADGET_CREATE_24034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_24034", action = "action_EVENT_GADGET_CREATE_24034", trigger_count = 0 },
	-- 挑战成功后延迟卸载suite2
	{ config_id = 1024052, name = "TIME_AXIS_PASS_24052", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_24052" }
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
		{ config_id = 24008, gadget_id = 70220103, pos = { x = 113.518, y = 316.241, z = 2368.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 24015, gadget_id = 70220103, pos = { x = 162.265, y = 278.553, z = 2277.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 24016, gadget_id = 70690013, pos = { x = 139.858, y = 289.089, z = 2266.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 24023, gadget_id = 70690013, pos = { x = 283.692, y = 279.998, z = 2291.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		gadgets = { 24001 },
		regions = { },
		triggers = { "GADGET_CREATE_24024", "SELECT_OPTION_24025", "CHALLENGE_FAIL_24026", "CHALLENGE_SUCCESS_24027", "GROUP_LOAD_24028", "TIME_AXIS_PASS_24052" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_24029", "AVATAR_NEAR_PLATFORM_24030", "GADGET_STATE_CHANGE_24031", "GADGET_CREATE_24034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 24003, 24004, 24005, 24006, 24007, 24009, 24035, 24036, 24037, 24038, 24039 },
		regions = { 24032 },
		triggers = { "ENTER_REGION_24032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 24010, 24011, 24012, 24013, 24014, 24040, 24041, 24042, 24043, 24044, 24050 },
		regions = { 24033 },
		triggers = { "ENTER_REGION_24033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 24017, 24018, 24019, 24020, 24021, 24022, 24045, 24046, 24047, 24048, 24049, 24051 },
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
function condition_EVENT_GADGET_CREATE_24024(context, evt)
	if 24001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_24024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315024, 24001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_24025(context, evt)
	-- 判断是gadgetid 24001 option_id 175
	if 24001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_24025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315024, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315024, 3)
	
	-- 删除指定group： 133315024 ；指定config：24001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133315024, 24001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 24001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 300, 2, 587031, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（199，329，2390），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=199, y=329, z=2390}
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
function action_EVENT_CHALLENGE_FAIL_24026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315024, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_24027(context, evt)
	-- 将configid为 24001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_24028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315024, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_24029(context, evt)
	if 24002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_24029(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_24030(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_24030(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133315024, 24002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24031(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24032(context, evt)
	if evt.param1 ~= 24032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315024, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_24033(context, evt)
	if evt.param1 ~= 24033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_24033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315024, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_24034(context, evt)
	if 24002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_24034(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_24052(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315024, 2)
	
	return 0
end