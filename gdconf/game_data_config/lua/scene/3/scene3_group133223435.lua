-- 基础信息
local base_info = {
	group_id = 133223435
}

-- Trigger变量
local defs = {
	group_ID = 133223435,
	gadget_thunderThelfID = 435001,
	pointarray_ID = 322300059,
	maxPointCount = 29,
	gadget_Reward_1 = 435002,
	pointInfo = {10,15,17,24,29} 
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
	{ config_id = 435001, gadget_id = 70350317, pos = { x = -5939.125, y = 178.248, z = -2580.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 435002, gadget_id = 70217011, pos = { x = -5976.354, y = 167.812, z = -2760.227 }, rot = { x = 0.000, y = 32.310, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 435007, gadget_id = 70360286, pos = { x = -5905.878, y = 169.827, z = -2612.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435008, gadget_id = 70360286, pos = { x = -5926.170, y = 165.842, z = -2660.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435009, gadget_id = 70360286, pos = { x = -5944.706, y = 164.056, z = -2720.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435010, gadget_id = 70360286, pos = { x = -5976.809, y = 166.016, z = -2775.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435011, gadget_id = 70360286, pos = { x = -5984.309, y = 164.862, z = -2760.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435012, gadget_id = 70360286, pos = { x = -5959.253, y = 166.759, z = -2738.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435013, gadget_id = 70360286, pos = { x = -5986.269, y = 163.600, z = -2787.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 435014, gadget_id = 70360286, pos = { x = -5992.716, y = 164.434, z = -2761.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1435003, name = "PLATFORM_REACH_POINT_435003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_435003", action = "action_EVENT_PLATFORM_REACH_POINT_435003", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1435004, name = "AVATAR_NEAR_PLATFORM_435004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_435004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_435004", trigger_count = 0 },
	{ config_id = 1435005, name = "GADGET_STATE_CHANGE_435005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_435005", action = "action_EVENT_GADGET_STATE_CHANGE_435005" },
	{ config_id = 1435006, name = "GROUP_REFRESH_435006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_435006", action = "action_EVENT_GROUP_REFRESH_435006", trigger_count = 0 }
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
			{ config_id = 435001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 435007, state = 0 },
			{ config_id = 435008, state = 0 },
			{ config_id = 435009, state = 0 },
			{ config_id = 435010, state = 0 },
			{ config_id = 435011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_435003", "AVATAR_NEAR_PLATFORM_435004", "GROUP_REFRESH_435006" },
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
			{ config_id = 435002, state = 0 },
			{ config_id = 435012, state = 0 },
			{ config_id = 435013, state = 0 },
			{ config_id = 435014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_435005" },
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
function condition_EVENT_PLATFORM_REACH_POINT_435003(context, evt)
	if 435001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_435003(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_435004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_435004(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_435005(context, evt)
	if 435002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_435005(context, evt)
	-- 针对当前group内变量名为 "FeatherCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FeatherCount", 1, 133223122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "featherfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "featherfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将Group001组内变量名为 "feather01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "feather01", 1, 133223001)  then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_435006(context, evt)
	-- 判断变量"feather01"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather01", 133223001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_435006(context, evt)
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133223435, 1, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223435, 2)
	
	return 0
end