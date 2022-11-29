-- 基础信息
local base_info = {
	group_id = 133210268
}

-- Trigger变量
local defs = {
	group_ID = 133210268,
	gadget_thunderThelfID = 268001,
	pointarray_ID = 321000048,
	maxPointCount = 14,
	gadget_Reward_1 = 0,
	pointInfo = {5,10,14} ,
	next_baton = 133210269
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
	{ config_id = 268001, gadget_id = 70350292, pos = { x = -3689.608, y = 122.788, z = -694.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, start_route = false, persistent = true, is_use_point_array = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1268002, name = "PLATFORM_REACH_POINT_268002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_268002", action = "action_EVENT_PLATFORM_REACH_POINT_268002", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1268003, name = "AVATAR_NEAR_PLATFORM_268003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_268003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_268003", trigger_count = 0 },
	-- 上一步完成创建闪电球
	{ config_id = 1268004, name = "VARIABLE_CHANGE_268004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_268004", action = "action_EVENT_VARIABLE_CHANGE_268004" },
	-- 上一步完成创建闪电球
	{ config_id = 1268005, name = "GROUP_LOAD_268005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_268005", action = "action_EVENT_GROUP_LOAD_268005", trigger_count = 0 },
	-- 玩法完成刷到suite2
	{ config_id = 1268006, name = "GROUP_LOAD_268006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_268006", action = "action_EVENT_GROUP_LOAD_268006", trigger_count = 0 },
	-- 玩法完成刷到suite2
	{ config_id = 1268007, name = "VARIABLE_CHANGE_268007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_268007", action = "action_EVENT_VARIABLE_CHANGE_268007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
	{ config_id = 7, name = "next_baton_start", value = 0, no_refresh = true },
	{ config_id = 8, name = "ReachPoint", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_268004", "GROUP_LOAD_268005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "next_baton_start", value = 0, no_refresh = true },
			{ config_id = 8, name = "ReachPoint", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 268001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_268002", "AVATAR_NEAR_PLATFORM_268003", "GROUP_LOAD_268006", "VARIABLE_CHANGE_268007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "next_baton_start", value = 0, no_refresh = true },
			{ config_id = 8, name = "ReachPoint", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "next_baton_start", value = 0, no_refresh = true },
			{ config_id = 8, name = "ReachPoint", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_268002(context, evt)
	if 268001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_268002(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
		ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
	ScriptLib.SetGroupVariableValueByGroup(context, "next_baton_start", 1, defs.next_baton)
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_thunderThelfID })
	ScriptLib.SetGroupVariableValue(context, "ReachPoint", 1)
	ScriptLib.SetGroupVariableValue(context, "next_baton_start", 2)	
		
		return 0
	end
			
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	next = next + 1
	ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_268003(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_268003(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_268004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"next_baton_start"为1
	if ScriptLib.GetGroupVariableValue(context, "next_baton_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_268004(context, evt)
	-- 调用提示id为 32100165 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Release" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Release", 1, 133210393) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210268, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_268005(context, evt)
	-- 判断变量"next_baton_start"为1
	if ScriptLib.GetGroupVariableValue(context, "next_baton_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_268005(context, evt)
	-- 将本组内变量名为 "Release" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Release", 1, 133210393) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210268, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_268006(context, evt)
	-- 判断变量"ReachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "ReachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_268006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210268, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_268007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ReachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "ReachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_268007(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210268, 3)
	
	return 0
end