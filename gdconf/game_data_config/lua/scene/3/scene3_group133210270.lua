-- 基础信息
local base_info = {
	group_id = 133210270
}

-- Trigger变量
local defs = {
	group_ID = 133210270,
	gadget_thunderThelfID = 270001,
	pointarray_ID = 321000050,
	maxPointCount = 19,
	gadget_Reward_1 = 270007,
	pointInfo = {8,17,19} ,
	gadget_Reward_2 = 270008,
	gadget_Reward_3 = 270009
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
	{ config_id = 270001, gadget_id = 70350292, pos = { x = -3825.744, y = 109.615, z = -884.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, start_route = false, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 270006, gadget_id = 70350292, pos = { x = -3859.248, y = 110.482, z = -774.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, start_route = false, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 270007, gadget_id = 70211121, pos = { x = -3856.969, y = 110.245, z = -778.107 }, rot = { x = 359.576, y = 328.931, z = 356.329 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 270008, gadget_id = 70211121, pos = { x = -3854.924, y = 109.990, z = -770.152 }, rot = { x = 358.395, y = 238.862, z = 0.494 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 270009, gadget_id = 70211131, pos = { x = -3861.132, y = 110.692, z = -773.915 }, rot = { x = 5.026, y = 92.887, z = 5.672 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1270002, name = "PLATFORM_REACH_POINT_270002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_270002", action = "action_EVENT_PLATFORM_REACH_POINT_270002", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1270003, name = "AVATAR_NEAR_PLATFORM_270003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_270003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_270003", trigger_count = 0 },
	-- 上一步完成创建闪电球
	{ config_id = 1270004, name = "VARIABLE_CHANGE_270004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270004", action = "action_EVENT_VARIABLE_CHANGE_270004" },
	-- 上一步完成创建闪电球
	{ config_id = 1270005, name = "GROUP_LOAD_270005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_270005", action = "action_EVENT_GROUP_LOAD_270005", trigger_count = 0 },
	-- 玩法完成刷到suite2
	{ config_id = 1270010, name = "GROUP_LOAD_270010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_270010", action = "action_EVENT_GROUP_LOAD_270010", trigger_count = 0 },
	-- 玩法完成刷到suite2
	{ config_id = 1270011, name = "VARIABLE_CHANGE_270011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270011", action = "action_EVENT_VARIABLE_CHANGE_270011" }
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
		triggers = { "VARIABLE_CHANGE_270004", "GROUP_LOAD_270005" },
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
			{ config_id = 270001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_270002", "AVATAR_NEAR_PLATFORM_270003", "GROUP_LOAD_270010", "VARIABLE_CHANGE_270011" },
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
			{ config_id = 270006, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 270007, state = 0 },
			{ config_id = 270008, state = 0 },
			{ config_id = 270009, state = 0 }
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
function condition_EVENT_PLATFORM_REACH_POINT_270002(context, evt)
	if 270001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_270002(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
		ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward_1 }) 
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward_2 }) 
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward_3 }) 
	ScriptLib.ShowReminder(context, 32100169)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_thunderThelfID, GadgetState.GearStart)
	ScriptLib.SetGroupVariableValue(context, "ReachPoint", 1)
	ScriptLib.SetGroupVariableValue(context, "next_baton_start", 2)	
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_270003(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_270003(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_270004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"next_baton_start"为1
	if ScriptLib.GetGroupVariableValue(context, "next_baton_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_270004(context, evt)
	-- 调用提示id为 32100168 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100168) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210270, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_270005(context, evt)
	-- 判断变量"next_baton_start"为1
	if ScriptLib.GetGroupVariableValue(context, "next_baton_start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_270005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210270, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_270010(context, evt)
	-- 判断变量"ReachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "ReachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_270010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210270, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_270011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ReachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "ReachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_270011(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210270, 3)
	
	return 0
end