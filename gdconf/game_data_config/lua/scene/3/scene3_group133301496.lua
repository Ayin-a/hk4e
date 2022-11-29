-- 基础信息
local base_info = {
	group_id = 133301496
}

-- Trigger变量
local defs = {
	group_ID = 133301496,
	gadget_thunderThelfID = 496002,
	pointarray_ID = 330100002,
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
	{ config_id = 496001, gadget_id = 70350083, pos = { x = -445.390, y = 200.646, z = 3145.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 496002, gadget_id = 70290529, pos = { x = -457.022, y = 204.071, z = 3166.129 }, rot = { x = 0.000, y = 343.393, z = 0.000 }, level = 33, start_route = false, persistent = true, is_use_point_array = true, area_id = 22 },
	{ config_id = 496005, gadget_id = 70220103, pos = { x = -491.798, y = 192.500, z = 3287.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496006, gadget_id = 70220103, pos = { x = -494.720, y = 189.244, z = 3269.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496008, gadget_id = 70220103, pos = { x = -480.923, y = 193.706, z = 3239.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496009, gadget_id = 70690013, pos = { x = -475.033, y = 138.658, z = 3215.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496011, gadget_id = 70220103, pos = { x = -475.033, y = 182.992, z = 3215.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496015, gadget_id = 70220103, pos = { x = -457.880, y = 203.530, z = 3163.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496016, gadget_id = 70690013, pos = { x = -458.569, y = 145.530, z = 3163.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496018, gadget_id = 70220103, pos = { x = -500.671, y = 186.820, z = 3319.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496019, gadget_id = 70220103, pos = { x = -525.494, y = 174.386, z = 3333.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496020, gadget_id = 70220103, pos = { x = -540.967, y = 171.893, z = 3339.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496023, gadget_id = 70690013, pos = { x = -485.593, y = 134.500, z = 3282.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496036, gadget_id = 70310488, pos = { x = -475.035, y = 171.012, z = 3215.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496038, gadget_id = 70310488, pos = { x = -480.923, y = 186.961, z = 3239.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496039, gadget_id = 70690001, pos = { x = -480.032, y = 191.874, z = 3249.779 }, rot = { x = 0.000, y = 345.128, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496040, gadget_id = 70690001, pos = { x = -481.379, y = 191.874, z = 3254.849 }, rot = { x = 0.000, y = 345.128, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496041, gadget_id = 70690001, pos = { x = -483.034, y = 191.874, z = 3261.083 }, rot = { x = 0.000, y = 345.128, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496042, gadget_id = 70310488, pos = { x = -494.721, y = 181.534, z = 3269.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496043, gadget_id = 70310488, pos = { x = -491.798, y = 184.230, z = 3287.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496044, gadget_id = 70690013, pos = { x = -475.033, y = 138.658, z = 3215.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 496045, gadget_id = 70310488, pos = { x = -491.798, y = 184.230, z = 3287.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 496032, shape = RegionShape.SPHERE, radius = 25, pos = { x = -491.798, y = 192.500, z = 3296.876 }, area_id = 22 },
	{ config_id = 496033, shape = RegionShape.SPHERE, radius = 20, pos = { x = -474.887, y = 182.992, z = 3225.908 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1496024, name = "GADGET_CREATE_496024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_496024", action = "action_EVENT_GADGET_CREATE_496024", trigger_count = 0 },
	{ config_id = 1496025, name = "SELECT_OPTION_496025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_496025", action = "action_EVENT_SELECT_OPTION_496025", trigger_count = 0 },
	{ config_id = 1496026, name = "CHALLENGE_FAIL_496026", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_496026", trigger_count = 0 },
	{ config_id = 1496027, name = "CHALLENGE_SUCCESS_496027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_496027", trigger_count = 0 },
	{ config_id = 1496028, name = "GROUP_LOAD_496028", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_496028", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1496029, name = "PLATFORM_REACH_POINT_496029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_496029", action = "action_EVENT_PLATFORM_REACH_POINT_496029", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1496030, name = "AVATAR_NEAR_PLATFORM_496030", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_496030", action = "action_EVENT_AVATAR_NEAR_PLATFORM_496030", trigger_count = 0 },
	-- 胜利trigger:玩家追上光团后光团自动改状态
	{ config_id = 1496031, name = "GADGET_STATE_CHANGE_496031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_496031", action = "action_EVENT_GADGET_STATE_CHANGE_496031", trigger_count = 0 },
	{ config_id = 1496032, name = "ENTER_REGION_496032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_496032", action = "action_EVENT_ENTER_REGION_496032" },
	{ config_id = 1496033, name = "ENTER_REGION_496033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_496033", action = "action_EVENT_ENTER_REGION_496033" },
	{ config_id = 1496034, name = "GADGET_CREATE_496034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_496034", action = "action_EVENT_GADGET_CREATE_496034", trigger_count = 0 },
	-- 挑战成功后延迟卸载suite2
	{ config_id = 1496046, name = "TIME_AXIS_PASS_496046", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_496046" }
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
		{ config_id = 496003, gadget_id = 70220103, pos = { x = -488.640, y = 194.513, z = 3294.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496004, gadget_id = 70220103, pos = { x = -477.859, y = 191.843, z = 3258.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496007, gadget_id = 70220103, pos = { x = -486.642, y = 193.706, z = 3248.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496010, gadget_id = 70220103, pos = { x = -477.413, y = 193.706, z = 3237.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496012, gadget_id = 70220103, pos = { x = -474.525, y = 183.605, z = 3192.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496013, gadget_id = 70220103, pos = { x = -468.044, y = 187.077, z = 3175.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496014, gadget_id = 70220103, pos = { x = -460.193, y = 199.952, z = 3163.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496017, gadget_id = 70220103, pos = { x = -491.772, y = 194.513, z = 3308.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496021, gadget_id = 70220103, pos = { x = -522.015, y = 181.937, z = 3332.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496022, gadget_id = 70220103, pos = { x = -522.015, y = 181.937, z = 3332.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496035, gadget_id = 70310488, pos = { x = -468.044, y = 179.095, z = 3175.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 496037, gadget_id = 70310488, pos = { x = -474.525, y = 173.222, z = 3192.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
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
		gadgets = { 496001 },
		regions = { },
		triggers = { "GADGET_CREATE_496024", "SELECT_OPTION_496025", "CHALLENGE_FAIL_496026", "CHALLENGE_SUCCESS_496027", "GROUP_LOAD_496028", "TIME_AXIS_PASS_496046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 496002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_496029", "AVATAR_NEAR_PLATFORM_496030", "GADGET_STATE_CHANGE_496031", "GADGET_CREATE_496034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 496011, 496015, 496016, 496044 },
		regions = { 496033 },
		triggers = { "ENTER_REGION_496033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 496005, 496006, 496008, 496009, 496036, 496038, 496039, 496040, 496041, 496042, 496045 },
		regions = { 496032 },
		triggers = { "ENTER_REGION_496032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 496018, 496019, 496020, 496023, 496043 },
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
function condition_EVENT_GADGET_CREATE_496024(context, evt)
	if 496001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_496024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301496, 496001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_496025(context, evt)
	-- 判断是gadgetid 496001 option_id 175
	if 496001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_496025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301496, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301496, 3)
	
	-- 删除指定group： 133301496 ；指定config：496001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301496, 496001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 496001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 496001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 300, 2, 496031, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-457，204，3165），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-457, y=204, z=3165}
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
function action_EVENT_CHALLENGE_FAIL_496026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301496, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_496027(context, evt)
	-- 将configid为 496001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 496001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_496028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301496, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_496029(context, evt)
	if 496002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_496029(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_496030(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_496030(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_496031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301496, 496002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_496031(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_496032(context, evt)
	if evt.param1 ~= 496032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_496032(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301496, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_496033(context, evt)
	if evt.param1 ~= 496033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_496033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301496, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_496034(context, evt)
	if 496002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_496034(context, evt)
	-- 将configid为 496002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 496002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_496046(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301496, 2)
	
	return 0
end