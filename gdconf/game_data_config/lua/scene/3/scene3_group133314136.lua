-- 基础信息
local base_info = {
	group_id = 133314136
}

-- Trigger变量
local defs = {
	group_ID = 133314136,
	gadget_thunderThelfID = 136002,
	pointarray_ID = 330300003,
	maxPointCount = 11,
	pointInfo = {1,3,4,6,7,11} 
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
	{ config_id = 136001, gadget_id = 70350083, pos = { x = -504.209, y = 180.634, z = 4269.122 }, rot = { x = 10.916, y = 283.531, z = 355.383 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 136002, gadget_id = 70290529, pos = { x = -520.449, y = 192.278, z = 4278.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, start_route = false, persistent = true, is_use_point_array = true, area_id = 32 },
	{ config_id = 136003, gadget_id = 70220103, pos = { x = -543.814, y = 197.612, z = 4297.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136004, gadget_id = 70220103, pos = { x = -566.145, y = 184.576, z = 4318.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136005, gadget_id = 70220103, pos = { x = -591.811, y = 163.669, z = 4335.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136006, gadget_id = 70220103, pos = { x = -618.883, y = 146.636, z = 4357.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136009, gadget_id = 70690013, pos = { x = -526.436, y = 159.813, z = 4283.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136010, gadget_id = 70220103, pos = { x = -681.958, y = 133.378, z = 4373.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136011, gadget_id = 70220103, pos = { x = -720.849, y = 138.311, z = 4364.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136012, gadget_id = 70220103, pos = { x = -761.126, y = 155.788, z = 4352.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136016, gadget_id = 70690013, pos = { x = -786.898, y = 113.367, z = 4328.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136017, gadget_id = 70220103, pos = { x = -810.356, y = 175.444, z = 4316.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136018, gadget_id = 70220103, pos = { x = -861.864, y = 197.335, z = 4284.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136019, gadget_id = 70220103, pos = { x = -914.972, y = 206.711, z = 4274.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136020, gadget_id = 70220103, pos = { x = -957.245, y = 227.758, z = 4257.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136023, gadget_id = 70690013, pos = { x = -982.309, y = 201.397, z = 4246.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 136024, gadget_id = 70690013, pos = { x = -660.054, y = 76.938, z = 4368.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 136033, shape = RegionShape.SPHERE, radius = 5, pos = { x = -618.883, y = 146.636, z = 4357.644 }, area_id = 32 },
	{ config_id = 136034, shape = RegionShape.SPHERE, radius = 5, pos = { x = -761.126, y = 155.788, z = 4352.378 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1136025, name = "GADGET_CREATE_136025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_136025", action = "action_EVENT_GADGET_CREATE_136025", trigger_count = 0 },
	{ config_id = 1136026, name = "SELECT_OPTION_136026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_136026", action = "action_EVENT_SELECT_OPTION_136026", trigger_count = 0 },
	{ config_id = 1136027, name = "CHALLENGE_FAIL_136027", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_136027", trigger_count = 0 },
	{ config_id = 1136028, name = "CHALLENGE_SUCCESS_136028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_136028", trigger_count = 0 },
	{ config_id = 1136029, name = "GROUP_LOAD_136029", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_136029", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1136030, name = "PLATFORM_ARRIVAL_136030", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_136030", action = "action_EVENT_PLATFORM_ARRIVAL_136030", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1136031, name = "AVATAR_NEAR_PLATFORM_136031", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_136031", action = "action_EVENT_AVATAR_NEAR_PLATFORM_136031", trigger_count = 0 },
	-- 胜利trigger:玩家追上光团后光团自动改状态
	{ config_id = 1136032, name = "GADGET_STATE_CHANGE_136032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136032", action = "action_EVENT_GADGET_STATE_CHANGE_136032", trigger_count = 0 },
	{ config_id = 1136033, name = "ENTER_REGION_136033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_136033", action = "action_EVENT_ENTER_REGION_136033" },
	{ config_id = 1136034, name = "ENTER_REGION_136034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_136034", action = "action_EVENT_ENTER_REGION_136034" },
	{ config_id = 1136035, name = "GADGET_CREATE_136035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_136035", action = "action_EVENT_GADGET_CREATE_136035", trigger_count = 0 },
	-- 挑战成功后延迟卸载suite2
	{ config_id = 1136036, name = "TIME_AXIS_PASS_136036", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_136036" }
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
		{ config_id = 136007, gadget_id = 70220103, pos = { x = -485.231, y = 107.291, z = 4373.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136008, gadget_id = 70220103, pos = { x = -489.635, y = 102.513, z = 4395.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136013, gadget_id = 70220103, pos = { x = -558.491, y = 38.409, z = 4726.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136014, gadget_id = 70220103, pos = { x = -536.542, y = 30.826, z = 4744.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136015, gadget_id = 70220103, pos = { x = -529.359, y = 4.741, z = 4769.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136021, gadget_id = 70220103, pos = { x = -552.831, y = 24.436, z = 5030.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
		{ config_id = 136022, gadget_id = 70220103, pos = { x = -537.922, y = 39.147, z = 5048.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 }
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
		gadgets = { 136001 },
		regions = { },
		triggers = { "GADGET_CREATE_136025", "SELECT_OPTION_136026", "CHALLENGE_FAIL_136027", "CHALLENGE_SUCCESS_136028", "GROUP_LOAD_136029", "TIME_AXIS_PASS_136036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 136002 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_136030", "AVATAR_NEAR_PLATFORM_136031", "GADGET_STATE_CHANGE_136032", "GADGET_CREATE_136035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 136003, 136004, 136005, 136006, 136009, 136024 },
		regions = { 136033 },
		triggers = { "ENTER_REGION_136033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 136010, 136011, 136012, 136016 },
		regions = { 136034 },
		triggers = { "ENTER_REGION_136034" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 136017, 136018, 136019, 136020, 136023 },
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
function condition_EVENT_GADGET_CREATE_136025(context, evt)
	if 136001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_136025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314136, 136001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_136026(context, evt)
	-- 判断是gadgetid 136001 option_id 175
	if 136001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_136026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314136, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314136, 3)
	
	-- 删除指定group： 133314136 ；指定config：136001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314136, 136001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 136001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为101（该挑战的识别id),挑战内容为82的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 82, 120, 2, 484031, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-1538.86，223.0917，3425.646），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1538.86, y=223.0917, z=3425.646}
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
function action_EVENT_CHALLENGE_FAIL_136027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314136, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_136028(context, evt)
	-- 将configid为 136001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_136029(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314136, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_136030(context, evt)
	if 136002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_136030(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_136031(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_136031(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136032(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133314136, 136002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136032(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_136033(context, evt)
	if evt.param1 ~= 136033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_136033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314136, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_136034(context, evt)
	if evt.param1 ~= 136034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_136034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314136, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_136035(context, evt)
	if 136002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_136035(context, evt)
	-- 将configid为 136002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 136002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_136036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314136, 2)
	
	return 0
end