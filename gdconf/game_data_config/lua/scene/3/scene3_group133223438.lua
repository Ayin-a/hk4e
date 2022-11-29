-- 基础信息
local base_info = {
	group_id = 133223438
}

-- Trigger变量
local defs = {
	group_ID = 133223438,
	gadget_thunderThelfID = 438001,
	pointarray_ID = 322300060,
	maxPointCount = 10,
	gadget_Reward_1 = 438002,
	pointInfo = {6,10} 
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
	{ config_id = 438001, gadget_id = 70350317, pos = { x = -6227.137, y = 229.248, z = -2513.878 }, rot = { x = 0.000, y = 101.180, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 438002, gadget_id = 70217011, pos = { x = -6199.136, y = 225.398, z = -2568.642 }, rot = { x = 1.702, y = 357.294, z = 0.646 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 438007, gadget_id = 70360286, pos = { x = -6207.446, y = 224.273, z = -2546.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 438008, gadget_id = 70360286, pos = { x = -6208.741, y = 223.507, z = -2504.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 438009, gadget_id = 70360286, pos = { x = -6202.824, y = 234.542, z = -2587.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1438003, name = "PLATFORM_REACH_POINT_438003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_438003", action = "action_EVENT_PLATFORM_REACH_POINT_438003", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1438004, name = "AVATAR_NEAR_PLATFORM_438004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_438004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_438004", trigger_count = 0 },
	{ config_id = 1438005, name = "GADGET_STATE_CHANGE_438005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_438005", action = "action_EVENT_GADGET_STATE_CHANGE_438005" },
	{ config_id = 1438006, name = "GROUP_REFRESH_438006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_438006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
	{ config_id = 7, name = "featherfinish", value = 0, no_refresh = true }
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
			{ config_id = 438001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 438007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_438003", "AVATAR_NEAR_PLATFORM_438004", "GROUP_REFRESH_438006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "featherfinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 438002, state = 0 },
			{ config_id = 438008, state = 0 },
			{ config_id = 438009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_438005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "featherfinish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_438003(context, evt)
	if 438001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_438003(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)                
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	        return -1
	end        
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
	        ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
	        ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_thunderThelfID, GadgetState.GearStart)
	        ScriptLib.GoToFlowSuite(context, defs.group_ID, 2)                
	        return 0
	end
	                
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	next = next + 1
	ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_438004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_438004(context, evt)
	MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	if 438002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_438005(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "featherfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "featherfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "feather04", 1, 133223001)  then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "progress", 1, 133223518)  then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_438006(context, evt)
	ScriptLib.PrintContextLog(context, "@@ FEATHER : GroupLoad")
	local featherValue = ScriptLib.GetGroupVariableValueByGroup(context, "feather04", 133223001)
	ScriptLib.PrintContextLog(context, "@@ FEATHER : featherValue"..featherValue)
	if 1 == featherValue then
		ScriptLib.RemoveEntityByConfigId(context, 133223438, EntityType.GADGET, 438001 )
		ScriptLib.GoToFlowSuite(context, 133223438, 2)
	end
	return 0
end