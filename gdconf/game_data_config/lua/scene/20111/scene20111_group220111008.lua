-- 基础信息
local base_info = {
	group_id = 220111008
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
	{ config_id = 8001, gadget_id = 70211001, pos = { x = 40.296, y = 3.320, z = 134.070 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true },
	{ config_id = 8003, gadget_id = 70350293, pos = { x = 32.402, y = 3.336, z = 137.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 8004, gadget_id = 70350293, pos = { x = 42.426, y = 3.336, z = 137.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 8005, gadget_id = 70350293, pos = { x = 27.280, y = 3.333, z = 132.346 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 8006, gadget_id = 70350293, pos = { x = 38.207, y = 3.333, z = 142.583 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 8022, gadget_id = 70220025, pos = { x = 20.018, y = 3.389, z = 139.549 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8023, gadget_id = 70220025, pos = { x = 40.451, y = 3.373, z = 154.853 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8026, gadget_id = 70211011, pos = { x = 20.770, y = 3.320, z = 130.921 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	-- 延迟卡人保险1
	{ config_id = 8013, shape = RegionShape.CUBIC, size = { x = 8.000, y = 5.000, z = 8.000 }, pos = { x = 42.607, y = 6.591, z = 132.382 } }
}

-- 触发器
triggers = {
	-- 提示
	{ config_id = 1008002, name = "GADGET_STATE_CHANGE_8002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8002", action = "action_EVENT_GADGET_STATE_CHANGE_8002", trigger_count = 0 },
	-- 提示
	{ config_id = 1008007, name = "GADGET_STATE_CHANGE_8007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8007", action = "action_EVENT_GADGET_STATE_CHANGE_8007", trigger_count = 0 },
	{ config_id = 1008008, name = "GADGET_STATE_CHANGE_8008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8008", action = "action_EVENT_GADGET_STATE_CHANGE_8008", trigger_count = 0 },
	{ config_id = 1008009, name = "GADGET_STATE_CHANGE_8009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8009", action = "action_EVENT_GADGET_STATE_CHANGE_8009", trigger_count = 0 },
	{ config_id = 1008010, name = "GADGET_STATE_CHANGE_8010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8010", action = "action_EVENT_GADGET_STATE_CHANGE_8010", trigger_count = 0 },
	{ config_id = 1008011, name = "GADGET_STATE_CHANGE_8011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8011", action = "action_EVENT_GADGET_STATE_CHANGE_8011", trigger_count = 0 },
	{ config_id = 1008012, name = "GADGET_STATE_CHANGE_8012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8012", action = "action_EVENT_GADGET_STATE_CHANGE_8012", trigger_count = 0 },
	-- 延迟卡人保险1
	{ config_id = 1008013, name = "ENTER_REGION_8013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8013", action = "action_EVENT_ENTER_REGION_8013", trigger_count = 0 },
	{ config_id = 1008014, name = "GADGET_STATE_CHANGE_8014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8014", action = "action_EVENT_GADGET_STATE_CHANGE_8014", trigger_count = 0 },
	{ config_id = 1008015, name = "GADGET_STATE_CHANGE_8015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8015", action = "action_EVENT_GADGET_STATE_CHANGE_8015" },
	{ config_id = 1008018, name = "GADGET_STATE_CHANGE_8018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8018", action = "action_EVENT_GADGET_STATE_CHANGE_8018", trigger_count = 0 },
	{ config_id = 1008019, name = "GADGET_STATE_CHANGE_8019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8019", action = "action_EVENT_GADGET_STATE_CHANGE_8019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wall1", value = 0, no_refresh = false },
	{ config_id = 2, name = "wall2", value = 0, no_refresh = false },
	{ config_id = 3, name = "wall3", value = 0, no_refresh = false },
	{ config_id = 4, name = "wall4", value = 0, no_refresh = false },
	{ config_id = 5, name = "door1", value = 0, no_refresh = false }
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
		gadgets = { 8001, 8003, 8004, 8005, 8006, 8022, 8023, 8026 },
		regions = { 8013 },
		triggers = { "GADGET_STATE_CHANGE_8002", "GADGET_STATE_CHANGE_8007", "GADGET_STATE_CHANGE_8008", "GADGET_STATE_CHANGE_8009", "GADGET_STATE_CHANGE_8010", "GADGET_STATE_CHANGE_8011", "GADGET_STATE_CHANGE_8012", "ENTER_REGION_8013", "GADGET_STATE_CHANGE_8014", "GADGET_STATE_CHANGE_8015", "GADGET_STATE_CHANGE_8018", "GADGET_STATE_CHANGE_8019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8002(context, evt)
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	-- 判断变量"wall2"为1
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 1 then
			return false
	end
	
	-- 检测config_id为8003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8002(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 检测config_id为8004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8007(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8008(context, evt)
	-- 检测config_id为8003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8003, 1, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 检测config_id为8003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8003, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8010(context, evt)
	-- 检测config_id为8004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为1
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8004, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8011(context, evt)
	-- 检测config_id为8004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8004, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8012(context, evt)
	-- 检测config_id为8005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为0
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8005, 1, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8013(context, evt)
	if evt.param1 ~= 8013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8003, 1, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8014(context, evt)
	-- 检测config_id为8006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8006, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8015(context, evt)
	-- 检测config_id为8006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8015(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 15)
	
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8018(context, evt)
	-- 检测config_id为8005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为1
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8005, 1, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8019(context, evt)
	-- 检测config_id为8006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 8006, 1, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end