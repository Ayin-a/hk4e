-- 基础信息
local base_info = {
	group_id = 133303484
}

-- Trigger变量
local defs = {
	group_ID = 133303484,
	gadget_thunderThelfID = 484002,
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
	{ config_id = 484001, gadget_id = 70350083, pos = { x = -1528.279, y = 200.517, z = 3454.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 484002, gadget_id = 70290529, pos = { x = -1538.860, y = 223.092, z = 3425.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, start_route = false, persistent = true, is_use_point_array = true, area_id = 23 },
	{ config_id = 484003, gadget_id = 70220103, pos = { x = -1541.303, y = 223.092, z = 3424.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484004, gadget_id = 70220103, pos = { x = -1559.592, y = 228.892, z = 3402.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484005, gadget_id = 70220103, pos = { x = -1548.213, y = 221.881, z = 3348.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484006, gadget_id = 70220103, pos = { x = -1577.522, y = 225.672, z = 3313.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484009, gadget_id = 70690013, pos = { x = -1530.325, y = 166.012, z = 3435.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484010, gadget_id = 70220103, pos = { x = -1605.125, y = 217.200, z = 3299.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484011, gadget_id = 70220103, pos = { x = -1630.515, y = 217.200, z = 3286.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484012, gadget_id = 70220103, pos = { x = -1648.982, y = 230.974, z = 3249.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484016, gadget_id = 70690013, pos = { x = -1641.379, y = 178.365, z = 3270.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484017, gadget_id = 70220103, pos = { x = -1670.348, y = 230.974, z = 3240.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484018, gadget_id = 70220103, pos = { x = -1687.850, y = 230.974, z = 3220.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484019, gadget_id = 70220103, pos = { x = -1697.729, y = 230.974, z = 3199.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484020, gadget_id = 70220103, pos = { x = -1704.725, y = 230.974, z = 3161.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484023, gadget_id = 70690013, pos = { x = -1704.725, y = 181.668, z = 3181.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 484035, gadget_id = 70690013, pos = { x = -1554.941, y = 175.432, z = 3387.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 484032, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1577.522, y = 225.672, z = 3313.674 }, area_id = 23 },
	{ config_id = 484033, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1648.982, y = 230.974, z = 3249.172 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1484024, name = "GADGET_CREATE_484024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_484024", action = "action_EVENT_GADGET_CREATE_484024", trigger_count = 0 },
	{ config_id = 1484025, name = "SELECT_OPTION_484025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_484025", action = "action_EVENT_SELECT_OPTION_484025", trigger_count = 0 },
	{ config_id = 1484026, name = "CHALLENGE_FAIL_484026", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_484026", trigger_count = 0 },
	{ config_id = 1484027, name = "CHALLENGE_SUCCESS_484027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_484027", trigger_count = 0 },
	{ config_id = 1484028, name = "GROUP_LOAD_484028", event = EventType.EVENT_GROUP_LOAD, source = "101", condition = "", action = "action_EVENT_GROUP_LOAD_484028", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1484029, name = "PLATFORM_REACH_POINT_484029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_484029", action = "action_EVENT_PLATFORM_REACH_POINT_484029", trigger_count = 0 },
	-- 玩家接近光球后触发移动
	{ config_id = 1484030, name = "AVATAR_NEAR_PLATFORM_484030", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_484030", action = "action_EVENT_AVATAR_NEAR_PLATFORM_484030", trigger_count = 0 },
	-- 胜利trigger:玩家追上光团后光团自动改状态
	{ config_id = 1484031, name = "GADGET_STATE_CHANGE_484031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_484031", action = "action_EVENT_GADGET_STATE_CHANGE_484031", trigger_count = 0 },
	{ config_id = 1484032, name = "ENTER_REGION_484032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_484032", action = "action_EVENT_ENTER_REGION_484032" },
	{ config_id = 1484033, name = "ENTER_REGION_484033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_484033", action = "action_EVENT_ENTER_REGION_484033" },
	{ config_id = 1484034, name = "GADGET_CREATE_484034", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_484034", action = "action_EVENT_GADGET_CREATE_484034", trigger_count = 0 },
	-- 挑战成功后延迟卸载suite2
	{ config_id = 1484036, name = "TIME_AXIS_PASS_484036", event = EventType.EVENT_TIME_AXIS_PASS, source = "T", condition = "", action = "action_EVENT_TIME_AXIS_PASS_484036" }
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
		{ config_id = 484007, gadget_id = 70220103, pos = { x = -1512.531, y = 249.258, z = 3555.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484008, gadget_id = 70220103, pos = { x = -1516.944, y = 249.258, z = 3577.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484013, gadget_id = 70220103, pos = { x = -1515.632, y = 249.258, z = 3640.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484014, gadget_id = 70220103, pos = { x = -1493.680, y = 249.258, z = 3658.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484015, gadget_id = 70220103, pos = { x = -1486.495, y = 249.258, z = 3683.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484021, gadget_id = 70220103, pos = { x = -1445.798, y = 249.258, z = 3810.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 484022, gadget_id = 70220103, pos = { x = -1430.921, y = 249.258, z = 3828.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 484001 },
		regions = { },
		triggers = { "GADGET_CREATE_484024", "SELECT_OPTION_484025", "CHALLENGE_FAIL_484026", "CHALLENGE_SUCCESS_484027", "GROUP_LOAD_484028", "TIME_AXIS_PASS_484036" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 484002 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_484029", "AVATAR_NEAR_PLATFORM_484030", "GADGET_STATE_CHANGE_484031", "GADGET_CREATE_484034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 484003, 484004, 484005, 484006, 484009, 484035 },
		regions = { 484032 },
		triggers = { "ENTER_REGION_484032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 484010, 484011, 484012, 484016 },
		regions = { 484033 },
		triggers = { "ENTER_REGION_484033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 484017, 484018, 484019, 484020, 484023 },
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
function condition_EVENT_GADGET_CREATE_484024(context, evt)
	if 484001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_484024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303484, 484001, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_484025(context, evt)
	-- 判断是gadgetid 484001 option_id 175
	if 484001 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_484025(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303484, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303484, 3)
	
	-- 删除指定group： 133303484 ；指定config：484001；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133303484, 484001, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 484001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484001, GadgetState.GearStart) then
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
function action_EVENT_CHALLENGE_FAIL_484026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303484, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_484027(context, evt)
	-- 将configid为 484001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 5)
	
	-- 创建标识为"T"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T", {1}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_484028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303484, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_484029(context, evt)
	if 484002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_484029(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_484030(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_484030(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_484031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133303484, 484002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_484031(context, evt)
	-- 终止识别id为101的挑战，并判定成功
		ScriptLib.StopChallenge(context, 101, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_484032(context, evt)
	if evt.param1 ~= 484032 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_484032(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303484, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_484033(context, evt)
	if evt.param1 ~= 484033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_484033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303484, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_484034(context, evt)
	if 484002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_484034(context, evt)
	-- 将configid为 484002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 484002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_484036(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303484, 2)
	
	return 0
end