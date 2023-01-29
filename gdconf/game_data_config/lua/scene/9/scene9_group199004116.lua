-- 基础信息
local base_info = {
	group_id = 199004116
}

-- Trigger变量
local defs = {
	group_ID = 199004116,
	gadget_thunderThelfID = 116015,
	pointarray_ID = 900400010,
	maxPointCount = 16,
	gadget_Reward_1 = 116002,
	pointInfo = {3,5,8,10,12,15,16} 
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
	{ config_id = 116001, gadget_id = 70360001, pos = { x = -315.448, y = 158.849, z = -680.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 116002, gadget_id = 70211121, pos = { x = -212.290, y = 120.032, z = -508.180 }, rot = { x = 0.000, y = 275.852, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 116006, gadget_id = 70360001, pos = { x = -310.866, y = 157.412, z = -685.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 116013, gadget_id = 70350292, pos = { x = -316.738, y = 160.058, z = -679.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, persistent = true, area_id = 400 },
	{ config_id = 116015, gadget_id = 70350292, pos = { x = -316.738, y = 160.058, z = -679.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, persistent = true, is_use_point_array = true, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 116020, shape = RegionShape.SPHERE, radius = 12, pos = { x = -310.675, y = 157.717, z = -686.656 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1116003, name = "GROUP_LOAD_116003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116003", trigger_count = 0 },
	-- 到达中断点停止
	{ config_id = 1116004, name = "PLATFORM_REACH_POINT_116004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116004", action = "action_EVENT_PLATFORM_REACH_POINT_116004", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1116005, name = "AVATAR_NEAR_PLATFORM_116005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_116005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_116005", trigger_count = 0 },
	{ config_id = 1116010, name = "LEVEL_TAG_CHANGE_116010", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_116010", trigger_count = 0 },
	{ config_id = 1116011, name = "GADGET_CREATE_116011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_116011", trigger_count = 0 },
	{ config_id = 1116012, name = "VARIABLE_CHANGE_116012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_116012", trigger_count = 0 },
	{ config_id = 1116014, name = "GROUP_LOAD_116014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116014", trigger_count = 0 },
	{ config_id = 1116016, name = "GADGET_CREATE_116016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_116016", action = "action_EVENT_GADGET_CREATE_116016", trigger_count = 0 },
	{ config_id = 1116017, name = "VARIABLE_CHANGE_116017", event = EventType.EVENT_VARIABLE_CHANGE, source = "dq", condition = "", action = "action_EVENT_VARIABLE_CHANGE_116017", trigger_count = 0 },
	{ config_id = 1116018, name = "GROUP_LOAD_116018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116018", trigger_count = 0 },
	{ config_id = 1116019, name = "VARIABLE_CHANGE_116019", event = EventType.EVENT_VARIABLE_CHANGE, source = "dq", condition = "", action = "action_EVENT_VARIABLE_CHANGE_116019", trigger_count = 0 },
	{ config_id = 1116020, name = "ENTER_REGION_116020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_116020", trigger_count = 0 },
	{ config_id = 1116021, name = "GROUP_LOAD_116021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
	{ config_id = 8, name = "md", value = 0, no_refresh = true },
	{ config_id = 9, name = "ly", value = 0, no_refresh = true },
	{ config_id = 10, name = "dq", value = 0, no_refresh = true },
	{ config_id = 11, name = "talkmd", value = 0, no_refresh = true },
	{ config_id = 12, name = "talkdq", value = 0, no_refresh = true },
	{ config_id = 13, name = "talkly", value = 0, no_refresh = true },
	{ config_id = 14, name = "talk", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1116007, name = "GROUP_LOAD_116007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_116007", trigger_count = 0 },
		{ config_id = 1116008, name = "LEVEL_TAG_CHANGE_116008", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_116008", trigger_count = 0 },
		{ config_id = 1116009, name = "VARIABLE_CHANGE_116009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_116009", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 116001 },
		regions = { 116020 },
		triggers = { "LEVEL_TAG_CHANGE_116010", "GADGET_CREATE_116011", "VARIABLE_CHANGE_116012", "GROUP_LOAD_116014", "VARIABLE_CHANGE_116017", "VARIABLE_CHANGE_116019", "ENTER_REGION_116020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 116015 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_116004", "AVATAR_NEAR_PLATFORM_116005", "GADGET_CREATE_116016", "GROUP_LOAD_116021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 116002, 116015 },
		regions = { },
		triggers = { "GROUP_LOAD_116003", "GROUP_LOAD_116018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 116006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 116013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
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
function action_EVENT_GROUP_LOAD_116003(context, evt)
	ScriptLib.SetPlatformPointArray(context, 116015, 900400011, {1}, {route_type=RouteType.OneWay, turn_mode=false, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116004(context, evt)
	if 116015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_116004(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
		ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward_1 }) 
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_thunderThelfID, GadgetState.GearStart)
		ScriptLib.GoToGroupSuite(context, base_info.group_id, 3)
		ScriptLib.MarkPlayerAction(context, 2014, 3, 1)	
		return 0
	end
			
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	next = next + 1
	ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_116005(context, evt)
			ScriptLib.PrintLog("Near Platform condition : ".. evt.param1.." | RouteID = " .. evt.param2 .. " | Point = ".. evt.param3)
			if defs.gadget_thunderThelfID ~= evt.param1 then
				return false
			end
			local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_thunderThelfID)
			ScriptLib.PrintLog("Near Platform condition : ".." State = "..state) 
			if state == 201 then 
				return false
			end
			if ScriptLib.GetGroupVariableValue(context, "isMoving") ~= 0 then 
				return false
			end
			
			return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_116005(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_116010(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	else
		if evt.param2 == 7 then
			ScriptLib.AddExtraGroupSuite(context, 0, 5)
			
			if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 1 then
				ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
				
				ScriptLib.StartPlatform(context, 116013)
			else
				if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400009)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
					
					ScriptLib.StartPlatform(context, 116013)
				end
			end
		else
			if evt.param2 == 8 then
				ScriptLib.AddExtraGroupSuite(context, 0, 5)
				
				if ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400010)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
						
						ScriptLib.StartPlatform(context, 116013)
					end
				end
			else
				if ScriptLib.CheckSceneTag(context, 9,1023 ) then
					ScriptLib.AddExtraGroupSuite(context, 0, 5)
					
					if ScriptLib.GetGroupVariableValue(context, "dq") == 0 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
						
						ScriptLib.StartPlatform(context, 116013)
					end
				else
					ScriptLib.RemoveExtraGroupSuite(context, 199004116, 5)
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_116011(context, evt)
	if evt.param1 == 116013 then
		if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.CheckSceneTag(context, 9,1023 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 2)
		else
			if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) then
				if ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400009)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
						
						ScriptLib.StartPlatform(context, 116013)
					end
				end
			else
				if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) then
					if ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
							ScriptLib.SetPlatformRouteId(context, 116013, 900400010)
							
							ScriptLib.StartPlatform(context, 116013)
						else
							ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
							
							ScriptLib.StartPlatform(context, 116013)
						end
					end
				else
					if ScriptLib.CheckSceneTag(context, 9,1023 ) then
						ScriptLib.AddExtraGroupSuite(context, 0, 5)
						
						if ScriptLib.GetGroupVariableValue(context, "dq") == 0 then
							ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
							
							ScriptLib.StartPlatform(context, 116013)
						else
							ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
							
							ScriptLib.StartPlatform(context, 116013)
						end
					else
						ScriptLib.RemoveExtraGroupSuite(context, 199004116, 5)
					end
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_116012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name == "ly" or evt.source_name == "md" or evt.source_name == "dq" then
		if ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 1 then
			if ScriptLib.CheckSceneTag(context, 9,1023 ) then
				ScriptLib.AddExtraGroupSuite(context, 0, 2)
			end
			
			if ScriptLib.GetGroupVariableValue(context, "talk") == 3 then
				ScriptLib.SetGroupVariableValue(context, "talk", 3)
				
				ScriptLib.ShowReminder(context, 1111369)
			end
		else
			if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 1 then
				ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
				
				ScriptLib.StartPlatform(context, 116013)
			else
				if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 0 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400009)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 1 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 0 then
							ScriptLib.SetPlatformRouteId(context, 116013, 900400010)
							
							ScriptLib.StartPlatform(context, 116013)
						else
							if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1024 ) then
								ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
								
								ScriptLib.StartPlatform(context, 116013)
							end
						end
					end
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_116014(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.CheckSceneTag(context, 9,1023 ) then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=2})
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "talk") == 3 then
		else
			ScriptLib.SetGroupVariableValue(context, "talk", 3)
			
			ScriptLib.ShowReminder(context, 1111369)
		end
	else
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) then
			ScriptLib.AddExtraGroupSuite(context, 0, 5)
			
			if ScriptLib.GetGroupVariableValue(context, "ly") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
				ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
				
				ScriptLib.StartPlatform(context, 116013)
			else
				if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400009)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
					
					ScriptLib.StartPlatform(context, 116013)
				end
			end
		else
			if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) then
				ScriptLib.AddExtraGroupSuite(context, 0, 5)
				
				if ScriptLib.GetGroupVariableValue(context, "md") == 1 and ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
					ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
					
					ScriptLib.StartPlatform(context, 116013)
				else
					if ScriptLib.GetGroupVariableValue(context, "dq") == 1 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400010)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
						
						ScriptLib.StartPlatform(context, 116013)
					end
				end
			else
				if ScriptLib.CheckSceneTag(context, 9,1023 ) then
					ScriptLib.AddExtraGroupSuite(context, 0, 5)
					
					if ScriptLib.GetGroupVariableValue(context, "dq") == 0 then
						ScriptLib.SetPlatformRouteId(context, 116013, 900400011)
						
						ScriptLib.StartPlatform(context, 116013)
					else
						ScriptLib.SetPlatformRouteId(context, 116013, 900400031)
						
						ScriptLib.StartPlatform(context, 116013)
					end
				else
					ScriptLib.RemoveExtraGroupSuite(context, 199004116, 5)
				end
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_116016(context, evt)
	if 116015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_116016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 116013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_116017(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.CheckSceneTag(context, 9,1026 ) then
		ScriptLib.SetGroupVariableValueByGroup(context, "lock", 1, 199004113)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.SetGroupVariableValueByGroup(context, "lock", 1, 199004114)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_116018(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,116015, GadgetState.GearStart)
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_116019(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 and ScriptLib.GetGroupVariableValue(context, "talk") == 0 then
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1024 ) then
			ScriptLib.SetGroupVariableValue(context, "talk", 1)
			
			ScriptLib.ShowReminder(context, 1111363)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) then
			ScriptLib.SetGroupVariableValue(context, "talk", 2)
			
			ScriptLib.ShowReminder(context, 1111367)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) then
			ScriptLib.SetGroupVariableValue(context, "talk", 2)
			
			ScriptLib.ShowReminder(context, 1111367)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_116020(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1024 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "talk") == 0 then
		ScriptLib.ShowReminder(context, 1111363)
		
		ScriptLib.SetGroupVariableValue(context, "talk", 1)
	else
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "talk") == 1 then
			ScriptLib.ShowReminder(context, 1111365)
			
			ScriptLib.SetGroupVariableValue(context, "talk", 2)
		end
		
		if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) and ScriptLib.GetGroupVariableValue(context, "dq") == 1 and ScriptLib.GetGroupVariableValue(context, "talk") == 1 then
			ScriptLib.ShowReminder(context, 1111365)
			
			ScriptLib.SetGroupVariableValue(context, "talk", 2)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_116021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199004116, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end