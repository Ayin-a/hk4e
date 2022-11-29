-- 基础信息
local base_info = {
	group_id = 111101111
}

-- Trigger变量
local defs = {
	group_ID = 111101111,
	gadget_thunderThelfID = 111001,
	pointarray_ID = 110100006,
	maxPointCount = 14,
	gadget_Reward_1 = 111004,
	pointInfo = {5,10,14} 
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
	{ config_id = 111001, gadget_id = 70950062, pos = { x = 2572.467, y = 212.972, z = -1385.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true },
	{ config_id = 111004, gadget_id = 70211121, pos = { x = 2561.622, y = 211.603, z = -1376.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 111006, gadget_id = 70950062, pos = { x = 2562.009, y = 211.997, z = -1378.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1111002, name = "PLATFORM_REACH_POINT_111002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_111002", action = "action_EVENT_PLATFORM_REACH_POINT_111002", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1111003, name = "AVATAR_NEAR_PLATFORM_111003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_111003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_111003", trigger_count = 0 },
	{ config_id = 1111005, name = "GROUP_LOAD_111005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_111005", trigger_count = 0 }
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
			{ config_id = 111001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_111002", "AVATAR_NEAR_PLATFORM_111003", "GROUP_LOAD_111005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 111004, state = 0 },
			{ config_id = 111006, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_111002(context, evt)
	if 111001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_111002(context, evt)
				ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)
			
				if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
					return -1
					end	
				ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
				-- 将本组内变量名为 "isMoving" 的变量设置为 0
					
		
				if evt.param3 == defs.maxPointCount then
					ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_Reward_1 }) 
	ScriptLib.SetFlowSuite(context, defs.group_ID, 2)
					return 0
				end
				
				local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
				next = next + 1
				ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
				ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
				return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_111003(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_111003(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_111005(context, evt)
	ScriptLib.PrintLog("GroupLoad : ..... ")
	return 0
end