-- 基础信息
local base_info = {
	group_id = 133223437
}

-- Trigger变量
local defs = {
	group_ID = 133223437,
	gadget_thunderThelfID = 437001,
	pointarray_ID = 322300057,
	maxPointCount = 16,
	gadget_Reward_1 = 437002,
	pointInfo = {4,10,16} 
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
	{ config_id = 437001, gadget_id = 70350317, pos = { x = -5939.619, y = 177.972, z = -2581.290 }, rot = { x = 0.000, y = 182.136, z = 0.000 }, level = 33, persistent = true, is_use_point_array = true, area_id = 18 },
	{ config_id = 437002, gadget_id = 70217011, pos = { x = -5938.267, y = 169.664, z = -2680.443 }, rot = { x = 0.000, y = 27.872, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 18 },
	{ config_id = 437007, gadget_id = 70360286, pos = { x = -5925.115, y = 170.165, z = -2644.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 437008, gadget_id = 70360286, pos = { x = -5912.735, y = 170.642, z = -2607.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 437009, gadget_id = 70360286, pos = { x = -5937.501, y = 169.484, z = -2688.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 437010, gadget_id = 70360286, pos = { x = -5947.938, y = 171.519, z = -2698.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 437011, gadget_id = 70360286, pos = { x = -5963.260, y = 169.456, z = -2747.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 437012, gadget_id = 70360286, pos = { x = -5913.718, y = 170.774, z = -2607.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 到达中断点停止
	{ config_id = 1437003, name = "PLATFORM_REACH_POINT_437003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_437003", action = "action_EVENT_PLATFORM_REACH_POINT_437003", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1437004, name = "AVATAR_NEAR_PLATFORM_437004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_437004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_437004", trigger_count = 0 },
	{ config_id = 1437005, name = "GADGET_STATE_CHANGE_437005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_437005", action = "action_EVENT_GADGET_STATE_CHANGE_437005" },
	{ config_id = 1437006, name = "GROUP_REFRESH_437006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_437006", action = "action_EVENT_GROUP_REFRESH_437006", trigger_count = 0 }
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
			{ config_id = 437001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 437007, state = 0 },
			{ config_id = 437008, state = 0 },
			{ config_id = 437009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_437003", "AVATAR_NEAR_PLATFORM_437004", "GROUP_REFRESH_437006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "featherfinish", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 437002, state = 0 },
			{ config_id = 437010, state = 0 },
			{ config_id = 437011, state = 0 },
			{ config_id = 437012, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_437005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false },
			{ config_id = 7, name = "featherfinish", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_437003(context, evt)
	if 437001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_437003(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_437004(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_437004(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_437005(context, evt)
	if 437002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_437005(context, evt)
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
	
	-- 将Group001组内变量名为 "feather03" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "feather03", 1, 133223001)  then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_437006(context, evt)
	-- 判断变量"feather03"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "feather03", 133223001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_437006(context, evt)
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133223437, 1, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223437, 2)
	
	return 0
end