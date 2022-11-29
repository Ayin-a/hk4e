-- 基础信息
local base_info = {
	group_id = 133223218
}

-- Trigger变量
local defs = {
	group_ID = 133223218,
	gadget_thunderThelfID = 218001,
	pointarray_ID = 322300043,
	maxPointCount = 41,
	pointInfo = {41} ,
	loopStartPointIndex = 1
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
	{ config_id = 218001, gadget_id = 70350292, pos = { x = -5963.138, y = 202.496, z = -2645.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, persistent = true, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218002, name = "VARIABLE_CHANGE_218002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_218002", action = "action_EVENT_VARIABLE_CHANGE_218002" },
	-- 到达中断点停止
	{ config_id = 1218003, name = "PLATFORM_REACH_POINT_218003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218003", action = "action_EVENT_PLATFORM_REACH_POINT_218003", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1218004, name = "AVATAR_NEAR_PLATFORM_218004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_218004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_218004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 2, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 5, name = "currentPathNodeIndex", value = 0, no_refresh = false },
	{ config_id = 6, name = "loopCount", value = 0, no_refresh = true },
	{ config_id = 7, name = "markFinish", value = 0, no_refresh = true }
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
			{ config_id = 218001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_218002", "PLATFORM_REACH_POINT_218003", "AVATAR_NEAR_PLATFORM_218004" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 2, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 5, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 6, name = "loopCount", value = 0, no_refresh = true },
			{ config_id = 7, name = "markFinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 2, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 5, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 6, name = "loopCount", value = 0, no_refresh = true },
			{ config_id = 7, name = "markFinish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_218002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"markFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "markFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_218002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223218, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218003(context, evt)
	if 218001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_218003(context, evt)
	
			ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	
	if evt.param3 == defs.maxPointCount then
		ScriptLib.ChangeGroupVariableValue(context, "loopCount", 1)
		next = defs.loopStartPointIndex
		ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
		ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",0)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_218004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_218004(context, evt)
		MovePlatform(context)
		return 0
end