-- 基础信息
local base_info = {
	group_id = 220131011
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
	{ config_id = 11001, gadget_id = 70800200, pos = { x = 81.922, y = 10.529, z = -70.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11002, gadget_id = 70800200, pos = { x = 76.283, y = 10.530, z = -64.692 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11004, gadget_id = 70800200, pos = { x = 64.684, y = 10.530, z = -87.192 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11005, gadget_id = 70800200, pos = { x = 53.110, y = 10.530, z = -75.846 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11007, gadget_id = 70800200, pos = { x = 64.974, y = 10.530, z = -53.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11025, gadget_id = 70350005, pos = { x = 88.063, y = 10.417, z = -76.117 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 11027, gadget_id = 70800212, pos = { x = 64.724, y = 10.530, z = -70.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11030, gadget_id = 70800200, pos = { x = 58.927, y = 10.530, z = -70.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
	{ config_id = 11031, gadget_id = 70800200, pos = { x = 47.242, y = 10.530, z = -70.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 11029, shape = RegionShape.SPHERE, radius = 10, pos = { x = 53.081, y = 13.253, z = -53.445 } }
}

-- 触发器
triggers = {
	-- 门1不被门8卡着
	{ config_id = 1011008, name = "GADGET_STATE_CHANGE_11008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11008", action = "action_EVENT_GADGET_STATE_CHANGE_11008", trigger_count = 0 },
	-- 门1
	{ config_id = 1011009, name = "GADGET_STATE_CHANGE_11009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11009", action = "action_EVENT_GADGET_STATE_CHANGE_11009", trigger_count = 0 },
	-- 门2
	{ config_id = 1011010, name = "GADGET_STATE_CHANGE_11010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11010", action = "action_EVENT_GADGET_STATE_CHANGE_11010", trigger_count = 0 },
	-- 门2
	{ config_id = 1011011, name = "GADGET_STATE_CHANGE_11011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11011", action = "action_EVENT_GADGET_STATE_CHANGE_11011", trigger_count = 0 },
	-- 门4
	{ config_id = 1011014, name = "GADGET_STATE_CHANGE_11014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11014", action = "action_EVENT_GADGET_STATE_CHANGE_11014", trigger_count = 0 },
	-- 门4
	{ config_id = 1011015, name = "GADGET_STATE_CHANGE_11015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11015", action = "action_EVENT_GADGET_STATE_CHANGE_11015", trigger_count = 0 },
	-- 门5
	{ config_id = 1011016, name = "GADGET_STATE_CHANGE_11016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11016", action = "action_EVENT_GADGET_STATE_CHANGE_11016", trigger_count = 0 },
	-- 门5
	{ config_id = 1011017, name = "GADGET_STATE_CHANGE_11017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11017", action = "action_EVENT_GADGET_STATE_CHANGE_11017", trigger_count = 0 },
	-- 门7
	{ config_id = 1011020, name = "GADGET_STATE_CHANGE_11020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11020", action = "action_EVENT_GADGET_STATE_CHANGE_11020", trigger_count = 0 },
	-- 门7
	{ config_id = 1011021, name = "GADGET_STATE_CHANGE_11021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11021", action = "action_EVENT_GADGET_STATE_CHANGE_11021", trigger_count = 0 },
	-- 门7被石块卡着-提示1
	{ config_id = 1011022, name = "GADGET_STATE_CHANGE_11022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11022", action = "action_EVENT_GADGET_STATE_CHANGE_11022", trigger_count = 0 },
	-- 石块推动的时候，让门1打开
	{ config_id = 1011023, name = "VARIABLE_CHANGE_11023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11023", action = "action_EVENT_VARIABLE_CHANGE_11023" },
	-- 石块推动的时候，让门2打开
	{ config_id = 1011024, name = "VARIABLE_CHANGE_11024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11024", action = "action_EVENT_VARIABLE_CHANGE_11024" },
	-- 水闸1之后，开大门
	{ config_id = 1011026, name = "VARIABLE_CHANGE_11026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11026", action = "action_EVENT_VARIABLE_CHANGE_11026" },
	-- 门7被石块卡着-提示2
	{ config_id = 1011028, name = "GADGET_STATE_CHANGE_11028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11028", action = "action_EVENT_GADGET_STATE_CHANGE_11028", trigger_count = 0 },
	{ config_id = 1011029, name = "ENTER_REGION_11029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11029", action = "action_EVENT_ENTER_REGION_11029" },
	-- 门1被门8卡着
	{ config_id = 1011032, name = "GADGET_STATE_CHANGE_11032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11032", action = "action_EVENT_GADGET_STATE_CHANGE_11032", trigger_count = 0 },
	-- 门8不被门1卡着
	{ config_id = 1011033, name = "GADGET_STATE_CHANGE_11033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11033", action = "action_EVENT_GADGET_STATE_CHANGE_11033", trigger_count = 0 },
	-- 门8不被门9卡着
	{ config_id = 1011034, name = "GADGET_STATE_CHANGE_11034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11034", action = "action_EVENT_GADGET_STATE_CHANGE_11034", trigger_count = 0 },
	-- 门8被门1卡着
	{ config_id = 1011035, name = "GADGET_STATE_CHANGE_11035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11035", action = "action_EVENT_GADGET_STATE_CHANGE_11035", trigger_count = 0 },
	-- 门8被门9卡着
	{ config_id = 1011036, name = "GADGET_STATE_CHANGE_11036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11036", action = "action_EVENT_GADGET_STATE_CHANGE_11036", trigger_count = 0 },
	-- 门9正常移动
	{ config_id = 1011037, name = "GADGET_STATE_CHANGE_11037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11037", action = "action_EVENT_GADGET_STATE_CHANGE_11037", trigger_count = 0 },
	-- 门9正常移动
	{ config_id = 1011038, name = "GADGET_STATE_CHANGE_11038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11038", action = "action_EVENT_GADGET_STATE_CHANGE_11038", trigger_count = 0 },
	-- 门9被门8卡着
	{ config_id = 1011039, name = "GADGET_STATE_CHANGE_11039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11039", action = "action_EVENT_GADGET_STATE_CHANGE_11039", trigger_count = 0 },
	-- 石块推动的时候，让门8归位
	{ config_id = 1011040, name = "VARIABLE_CHANGE_11040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11040", action = "action_EVENT_VARIABLE_CHANGE_11040" },
	-- 石块推动的时候，让门8归位
	{ config_id = 1011041, name = "VARIABLE_CHANGE_11041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11041", action = "action_EVENT_VARIABLE_CHANGE_11041" }
}

-- 变量
variables = {
	{ config_id = 1, name = "W1", value = 1, no_refresh = false },
	{ config_id = 2, name = "W2", value = 1, no_refresh = false },
	{ config_id = 3, name = "W3", value = 1, no_refresh = false },
	{ config_id = 4, name = "W4", value = 1, no_refresh = false },
	{ config_id = 5, name = "W5", value = 1, no_refresh = false },
	{ config_id = 6, name = "W6", value = 1, no_refresh = false },
	{ config_id = 7, name = "W7", value = 1, no_refresh = false },
	{ config_id = 8, name = "A", value = 0, no_refresh = false },
	{ config_id = 9, name = "B", value = 0, no_refresh = false },
	{ config_id = 10, name = "Start", value = 0, no_refresh = false },
	{ config_id = 11, name = "Reminder", value = 0, no_refresh = false },
	{ config_id = 12, name = "W8", value = 3, no_refresh = false },
	{ config_id = 13, name = "W9", value = 4, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 11003, gadget_id = 70800200, pos = { x = 70.475, y = 10.530, z = -81.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true },
		{ config_id = 11006, gadget_id = 70800200, pos = { x = 54.105, y = 10.530, z = -53.777 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, interact_id = 43, is_use_point_array = true }
	},
	triggers = {
		{ config_id = 1011012, name = "GADGET_STATE_CHANGE_11012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11012", action = "action_EVENT_GADGET_STATE_CHANGE_11012", trigger_count = 0 },
		{ config_id = 1011013, name = "GADGET_STATE_CHANGE_11013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11013", action = "action_EVENT_GADGET_STATE_CHANGE_11013", trigger_count = 0 },
		{ config_id = 1011018, name = "GADGET_STATE_CHANGE_11018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11018", action = "action_EVENT_GADGET_STATE_CHANGE_11018", trigger_count = 0 },
		{ config_id = 1011019, name = "GADGET_STATE_CHANGE_11019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11019", action = "action_EVENT_GADGET_STATE_CHANGE_11019", trigger_count = 0 }
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
		gadgets = { 11001, 11002, 11004, 11005, 11007, 11025, 11027, 11030, 11031 },
		regions = { 11029 },
		triggers = { "GADGET_STATE_CHANGE_11008", "GADGET_STATE_CHANGE_11009", "GADGET_STATE_CHANGE_11010", "GADGET_STATE_CHANGE_11011", "GADGET_STATE_CHANGE_11014", "GADGET_STATE_CHANGE_11015", "GADGET_STATE_CHANGE_11016", "GADGET_STATE_CHANGE_11017", "GADGET_STATE_CHANGE_11020", "GADGET_STATE_CHANGE_11021", "GADGET_STATE_CHANGE_11022", "VARIABLE_CHANGE_11023", "VARIABLE_CHANGE_11024", "VARIABLE_CHANGE_11026", "GADGET_STATE_CHANGE_11028", "ENTER_REGION_11029", "GADGET_STATE_CHANGE_11032", "GADGET_STATE_CHANGE_11033", "GADGET_STATE_CHANGE_11034", "GADGET_STATE_CHANGE_11035", "GADGET_STATE_CHANGE_11036", "GADGET_STATE_CHANGE_11037", "GADGET_STATE_CHANGE_11038", "GADGET_STATE_CHANGE_11039", "VARIABLE_CHANGE_11040", "VARIABLE_CHANGE_11041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11008(context, evt)
	-- 检测config_id为11001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W1"为1
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 1 then
			return false
	end
	
	-- 判断变量"W8"为3
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11008(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11001, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11009(context, evt)
	-- 检测config_id为11001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W1"为2
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11009(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11001, 2, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
	-- 检测config_id为11002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W2"为1
	if ScriptLib.GetGroupVariableValue(context, "W2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11002, 2, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11011(context, evt)
	-- 检测config_id为11002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W2"为2
	if ScriptLib.GetGroupVariableValue(context, "W2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11002, 2, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
	-- 检测config_id为11004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W4"为1
	if ScriptLib.GetGroupVariableValue(context, "W4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11004, 2, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W4" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
	-- 检测config_id为11004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W4"为2
	if ScriptLib.GetGroupVariableValue(context, "W4") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11004, 2, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11016(context, evt)
	-- 检测config_id为11005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W5"为1
	if ScriptLib.GetGroupVariableValue(context, "W5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11005, 2, {10}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W5" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W5", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11017(context, evt)
	-- 检测config_id为11005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W5"为2
	if ScriptLib.GetGroupVariableValue(context, "W5") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11005, 2, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11020(context, evt)
	-- 检测config_id为11007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W7"为1
	if ScriptLib.GetGroupVariableValue(context, "W7") ~= 1 then
			return false
	end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11020(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11007, 2, {14}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W7" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W7", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11021(context, evt)
	-- 检测config_id为11007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W7"为2
	if ScriptLib.GetGroupVariableValue(context, "W7") ~= 2 then
			return false
	end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11007, 2, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11022(context, evt)
	-- 检测config_id为11007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W7"为1
	if ScriptLib.GetGroupVariableValue(context, "W7") ~= 1 then
			return false
	end
	
	-- 判断变量"A"为0
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 0 then
			return false
	end
	
	-- 判断变量"Reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "Reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11022(context, evt)
	-- 调用提示id为 201310105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"W1"为1
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11001, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"W2"为1
	if ScriptLib.GetGroupVariableValue(context, "W2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11002, 2, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Start"为1
	if ScriptLib.GetGroupVariableValue(context, "Start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11026(context, evt)
	-- 将configid为 11025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11028(context, evt)
	-- 检测config_id为11007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W7"为1
	if ScriptLib.GetGroupVariableValue(context, "W7") ~= 1 then
			return false
	end
	
	-- 判断变量"A"为0
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 0 then
			return false
	end
	
	-- 判断变量"Reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "Reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11028(context, evt)
	-- 调用提示id为 201310106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11029(context, evt)
	if evt.param1 ~= 11029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11029(context, evt)
	-- 将本组内变量名为 "Reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11032(context, evt)
	-- 检测config_id为11001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W1"为1
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 1 then
			return false
	end
	
	-- 判断变量"W8"为2
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11032(context, evt)
	-- 调用提示id为 201310108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11033(context, evt)
	-- 检测config_id为11030的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W8"为3
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 3 then
			return false
	end
	
	-- 判断变量"W1"为1
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11033(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11030, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W8" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W8", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11034(context, evt)
	-- 检测config_id为11030的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W8"为2
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 2 then
			return false
	end
	
	-- 判断变量"W9"为4
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11034(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11030, 2, {15}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W8" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W8", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11035(context, evt)
	-- 检测config_id为11030的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W8"为3
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 3 then
			return false
	end
	
	-- 判断变量"W1"为2
	if ScriptLib.GetGroupVariableValue(context, "W1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11035(context, evt)
	-- 调用提示id为 201310108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11036(context, evt)
	-- 检测config_id为11030的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11030 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W8"为2
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 2 then
			return false
	end
	
	-- 判断变量"W9"为3
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11036(context, evt)
	-- 调用提示id为 201310108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11037(context, evt)
	-- 检测config_id为11031的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11031 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W9"为4
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 4 then
			return false
	end
	
	-- 判断变量"W8"为2
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11037(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11031, 2, {15}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W9" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W9", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11038(context, evt)
	-- 检测config_id为11031的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11031 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W9"为3
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11031, 2, {16}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W9" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W9", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11039(context, evt)
	-- 检测config_id为11031的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 11031 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"W9"为4
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 4 then
			return false
	end
	
	-- 判断变量"W8"为3
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11039(context, evt)
	-- 调用提示id为 201310108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201310108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"W8"为2
	if ScriptLib.GetGroupVariableValue(context, "W8") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11040(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11030, 2, {15}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W8" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W8", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"W9"为3
	if ScriptLib.GetGroupVariableValue(context, "W9") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11041(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 11031, 2, {16}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "W9" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "W9", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end