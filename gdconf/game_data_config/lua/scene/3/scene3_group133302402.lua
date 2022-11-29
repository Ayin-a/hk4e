-- 基础信息
local base_info = {
	group_id = 133302402
}

-- Trigger变量
local defs = {
	group_ID = 133302402,
	gadget_thunderThelfID = 402002,
	pointarray_ID = 330200002,
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
	{ config_id = 402001, gadget_id = 70350083, pos = { x = -557.736, y = 311.259, z = 2195.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402002, gadget_id = 70290529, pos = { x = -558.512, y = 360.000, z = 2221.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, start_route = false, persistent = true, is_use_point_array = true, area_id = 24 },
	{ config_id = 402008, gadget_id = 70220103, pos = { x = -557.395, y = 360.000, z = 2224.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402009, gadget_id = 70220103, pos = { x = -568.498, y = 360.000, z = 2248.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402010, gadget_id = 70220103, pos = { x = -555.833, y = 360.000, z = 2273.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402011, gadget_id = 70220103, pos = { x = -569.217, y = 360.000, z = 2279.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402012, gadget_id = 70220103, pos = { x = -541.988, y = 360.000, z = 2296.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402013, gadget_id = 70220103, pos = { x = -546.401, y = 360.000, z = 2318.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402017, gadget_id = 70690013, pos = { x = -557.548, y = 310.000, z = 2197.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402018, gadget_id = 70220103, pos = { x = -533.268, y = 360.000, z = 2336.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402019, gadget_id = 70220103, pos = { x = -544.371, y = 360.000, z = 2350.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402020, gadget_id = 70220103, pos = { x = -531.705, y = 360.000, z = 2376.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402021, gadget_id = 70220103, pos = { x = -545.089, y = 360.000, z = 2381.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402022, gadget_id = 70220103, pos = { x = -523.137, y = 360.000, z = 2399.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402023, gadget_id = 70220103, pos = { x = -515.952, y = 360.000, z = 2424.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402024, gadget_id = 70690013, pos = { x = -545.819, y = 307.000, z = 2321.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402025, gadget_id = 70220103, pos = { x = -495.246, y = 360.000, z = 2451.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402026, gadget_id = 70220103, pos = { x = -506.349, y = 360.000, z = 2475.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402027, gadget_id = 70220103, pos = { x = -484.247, y = 360.000, z = 2492.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402028, gadget_id = 70220103, pos = { x = -490.410, y = 360.000, z = 2525.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402029, gadget_id = 70220103, pos = { x = -475.255, y = 360.000, z = 2551.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402030, gadget_id = 70220103, pos = { x = -460.378, y = 360.000, z = 2569.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402031, gadget_id = 70690013, pos = { x = -513.595, y = 307.000, z = 2428.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402034, gadget_id = 70330197, pos = { x = -544.862, y = 281.772, z = 2206.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402035, gadget_id = 70690013, pos = { x = -555.833, y = 302.000, z = 2273.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402036, gadget_id = 70690013, pos = { x = -531.705, y = 302.000, z = 2376.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402037, gadget_id = 70690013, pos = { x = -490.410, y = 302.000, z = 2525.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 402038, gadget_id = 70690013, pos = { x = -460.378, y = 302.000, z = 2569.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 402032, shape = RegionShape.SPHERE, radius = 5, pos = { x = -546.401, y = 360.000, z = 2318.555 }, area_id = 24 },
	{ config_id = 402033, shape = RegionShape.SPHERE, radius = 5, pos = { x = -515.952, y = 360.000, z = 2424.061 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1402003, name = "GADGET_CREATE_402003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_402003", action = "action_EVENT_GADGET_CREATE_402003", trigger_count = 0 },
	{ config_id = 1402004, name = "SELECT_OPTION_402004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_402004", action = "action_EVENT_SELECT_OPTION_402004", trigger_count = 0 },
	{ config_id = 1402005, name = "CHALLENGE_FAIL_402005", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_402005", trigger_count = 0 },
	{ config_id = 1402006, name = "CHALLENGE_SUCCESS_402006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_402006", trigger_count = 0 },
	{ config_id = 1402007, name = "GROUP_LOAD_402007", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_402007", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1402014, name = "PLATFORM_REACH_POINT_402014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_402014", action = "action_EVENT_PLATFORM_REACH_POINT_402014", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1402015, name = "AVATAR_NEAR_PLATFORM_402015", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_402015", action = "action_EVENT_AVATAR_NEAR_PLATFORM_402015", trigger_count = 0 },
	{ config_id = 1402016, name = "GADGET_STATE_CHANGE_402016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402016", action = "action_EVENT_GADGET_STATE_CHANGE_402016", trigger_count = 0 },
	{ config_id = 1402032, name = "ENTER_REGION_402032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_402032", action = "action_EVENT_ENTER_REGION_402032" },
	{ config_id = 1402033, name = "ENTER_REGION_402033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_402033", action = "action_EVENT_ENTER_REGION_402033" },
	{ config_id = 1402039, name = "GADGET_CREATE_402039", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_402039", action = "action_EVENT_GADGET_CREATE_402039", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
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
		gadgets = { 402001, 402034 },
		regions = { },
		triggers = { "GADGET_CREATE_402003", "SELECT_OPTION_402004", "CHALLENGE_FAIL_402005", "CHALLENGE_SUCCESS_402006", "GROUP_LOAD_402007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 402002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_402014", "AVATAR_NEAR_PLATFORM_402015", "GADGET_STATE_CHANGE_402016", "GADGET_CREATE_402039" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段1,
		monsters = { },
		gadgets = { 402008, 402009, 402010, 402011, 402012, 402013, 402017, 402035 },
		regions = { 402032 },
		triggers = { "ENTER_REGION_402032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 阶段2,
		monsters = { },
		gadgets = { 402018, 402019, 402020, 402021, 402022, 402023, 402024, 402036 },
		regions = { 402033 },
		triggers = { "ENTER_REGION_402033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 阶段3,
		monsters = { },
		gadgets = { 402025, 402026, 402027, 402028, 402029, 402030, 402031, 402037, 402038 },
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
function condition_EVENT_GADGET_CREATE_402003(context, evt)
	if 402001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_402003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302402, 402001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_402004(context, evt)
	-- 判断是gadgetid 402001 option_id 175
	if 402001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_402004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302402, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302402, 3)
	
	-- 删除指定group： 133302402 ；指定config：402001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302402, 402001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 402001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 300, 2, 402016, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-558，360，2222），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-558, y=360, z=2222}
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
function action_EVENT_CHALLENGE_FAIL_402005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302402, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_402006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302402, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_402007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302402, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_402014(context, evt)
	if 402002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_402014(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_402015(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_402015(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_402016(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133302402, 402002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402016(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_402032(context, evt)
	if evt.param1 ~= 402032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_402032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302402, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302402, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_402033(context, evt)
	if evt.param1 ~= 402033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_402033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302402, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302402, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_402039(context, evt)
	if 402002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_402039(context, evt)
	-- 将configid为 402002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end