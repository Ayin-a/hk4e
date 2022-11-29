-- 基础信息
local base_info = {
	group_id = 220134047
}

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
	{ config_id = 47001, gadget_id = 70380301, pos = { x = 647.373, y = 633.841, z = -1703.420 }, rot = { x = 0.000, y = 32.227, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 47006, gadget_id = 70360002, pos = { x = 658.443, y = 623.380, z = -1685.488 }, rot = { x = 0.000, y = 215.214, z = 0.000 }, level = 1, worktop_config = { init_options = { 214 } } },
	{ config_id = 47007, gadget_id = 70360002, pos = { x = 634.792, y = 623.380, z = -1723.132 }, rot = { x = 0.000, y = 26.408, z = 0.000 }, level = 1, worktop_config = { init_options = { 214 } } }
}

-- 区域
regions = {
	{ config_id = 47005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 639.316, y = 623.380, z = -1698.005 } }
}

-- 触发器
triggers = {
	-- 左：1的时候推向2
	{ config_id = 1047002, name = "SELECT_OPTION_47002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47002", action = "action_EVENT_SELECT_OPTION_47002", trigger_count = 0 },
	-- 左：2的时候推向3
	{ config_id = 1047003, name = "SELECT_OPTION_47003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47003", action = "action_EVENT_SELECT_OPTION_47003", trigger_count = 0 },
	-- 左：3的时候推向4
	{ config_id = 1047004, name = "SELECT_OPTION_47004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47004", action = "action_EVENT_SELECT_OPTION_47004", trigger_count = 0 },
	{ config_id = 1047005, name = "ENTER_REGION_47005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_47005", action = "action_EVENT_ENTER_REGION_47005", trigger_count = 0 },
	-- 左：4的时候推向1
	{ config_id = 1047008, name = "SELECT_OPTION_47008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47008", action = "action_EVENT_SELECT_OPTION_47008", trigger_count = 0 },
	-- 右：1的时候推向2
	{ config_id = 1047009, name = "SELECT_OPTION_47009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47009", action = "action_EVENT_SELECT_OPTION_47009", trigger_count = 0 },
	-- 右：2的时候推向3
	{ config_id = 1047010, name = "SELECT_OPTION_47010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47010", action = "action_EVENT_SELECT_OPTION_47010", trigger_count = 0 },
	-- 右：3的时候推向4
	{ config_id = 1047011, name = "SELECT_OPTION_47011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47011", action = "action_EVENT_SELECT_OPTION_47011", trigger_count = 0 },
	-- 右：4的时候推向1
	{ config_id = 1047012, name = "SELECT_OPTION_47012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47012", action = "action_EVENT_SELECT_OPTION_47012", trigger_count = 0 },
	-- position到5的时候变为1
	{ config_id = 1047013, name = "VARIABLE_CHANGE_47013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47013", action = "action_EVENT_VARIABLE_CHANGE_47013", trigger_count = 0 },
	-- position到5的时候变为1
	{ config_id = 1047014, name = "VARIABLE_CHANGE_47014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47014", action = "action_EVENT_VARIABLE_CHANGE_47014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "position", value = 1, no_refresh = true }
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
		gadgets = { 47001, 47006, 47007 },
		regions = { 47005 },
		triggers = { "SELECT_OPTION_47002", "SELECT_OPTION_47003", "SELECT_OPTION_47004", "ENTER_REGION_47005", "SELECT_OPTION_47008", "SELECT_OPTION_47009", "SELECT_OPTION_47010", "SELECT_OPTION_47011", "SELECT_OPTION_47012", "VARIABLE_CHANGE_47013", "VARIABLE_CHANGE_47014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_47002(context, evt)
	-- 判断是gadgetid 47006 option_id 214
	if 47006 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为1
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47002(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47003(context, evt)
	-- 判断是gadgetid 47006 option_id 214
	if 47006 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为2
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47003(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47004(context, evt)
	-- 判断是gadgetid 47006 option_id 214
	if 47006 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为3
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47004(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_47005(context, evt)
	if evt.param1 ~= 47005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_47005(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "position" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47008(context, evt)
	-- 判断是gadgetid 47006 option_id 214
	if 47006 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为4
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47009(context, evt)
	-- 判断是gadgetid 47007 option_id 214
	if 47007 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为1
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47010(context, evt)
	-- 判断是gadgetid 47007 option_id 214
	if 47007 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为2
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47011(context, evt)
	-- 判断是gadgetid 47007 option_id 214
	if 47007 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为3
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47012(context, evt)
	-- 判断是gadgetid 47007 option_id 214
	if 47007 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"position"为4
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 47001, 54, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "position" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"position"为5
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47013(context, evt)
	-- 将本组内变量名为 "position" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "position", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134060, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"position"为2
	if ScriptLib.GetGroupVariableValue(context, "position") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220134060, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end