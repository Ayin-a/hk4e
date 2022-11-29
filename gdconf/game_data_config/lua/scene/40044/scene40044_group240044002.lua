-- 基础信息
local base_info = {
	group_id = 240044002
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
	{ config_id = 2001, gadget_id = 70350293, pos = { x = -98.709, y = 1.450, z = -76.241 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2002, gadget_id = 70350293, pos = { x = -88.269, y = 1.450, z = -76.169 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2003, gadget_id = 70350293, pos = { x = -78.016, y = 1.507, z = -55.554 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2004, gadget_id = 70350293, pos = { x = -88.269, y = 1.450, z = -55.496 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2005, gadget_id = 70350293, pos = { x = -98.709, y = 1.450, z = -55.515 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2006, gadget_id = 70350293, pos = { x = -93.468, y = 1.450, z = -60.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2007, gadget_id = 70350293, pos = { x = -93.472, y = 1.507, z = -50.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2008, gadget_id = 70350293, pos = { x = -103.561, y = 1.507, z = -50.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2009, gadget_id = 70350293, pos = { x = -73.232, y = 1.507, z = -50.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, interact_id = 43, is_use_point_array = true },
	{ config_id = 2031, gadget_id = 70211011, pos = { x = -91.577, y = 1.430, z = -42.943 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 2033, gadget_id = 70290141, pos = { x = -105.134, y = 1.390, z = -78.093 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 2034, gadget_id = 70290141, pos = { x = -70.913, y = 1.393, z = -42.555 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70290141, pos = { x = -106.585, y = 1.437, z = -43.993 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70360001, pos = { x = -105.084, y = 2.326, z = -77.917 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 2037, gadget_id = 70360001, pos = { x = -70.847, y = 3.788, z = -42.710 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1 },
	{ config_id = 2038, gadget_id = 70360001, pos = { x = -106.320, y = 2.400, z = -43.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2028, shape = RegionShape.SPHERE, radius = 5, pos = { x = -93.154, y = -0.365, z = -80.021 } },
	{ config_id = 2030, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 8.000 }, pos = { x = -103.920, y = 2.209, z = -65.470 } },
	{ config_id = 2032, shape = RegionShape.SPHERE, radius = 5, pos = { x = -93.591, y = 13.770, z = -85.597 } },
	-- 延迟卡人保险1
	{ config_id = 2050, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -104.203, y = 1.473, z = -44.711 } },
	-- 延迟卡人保险2
	{ config_id = 2051, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = -72.085, y = 1.473, z = -44.194 } }
}

-- 触发器
triggers = {
	{ config_id = 1002010, name = "GADGET_STATE_CHANGE_2010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2010", action = "action_EVENT_GADGET_STATE_CHANGE_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "GADGET_STATE_CHANGE_2011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2011", action = "action_EVENT_GADGET_STATE_CHANGE_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "GADGET_STATE_CHANGE_2012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2012", action = "action_EVENT_GADGET_STATE_CHANGE_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "GADGET_STATE_CHANGE_2013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2013", action = "action_EVENT_GADGET_STATE_CHANGE_2013", trigger_count = 0 },
	{ config_id = 1002014, name = "GADGET_STATE_CHANGE_2014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2014", action = "action_EVENT_GADGET_STATE_CHANGE_2014", trigger_count = 0 },
	{ config_id = 1002015, name = "GADGET_STATE_CHANGE_2015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2015", action = "action_EVENT_GADGET_STATE_CHANGE_2015", trigger_count = 0 },
	{ config_id = 1002016, name = "GADGET_STATE_CHANGE_2016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2016", action = "action_EVENT_GADGET_STATE_CHANGE_2016", trigger_count = 0 },
	{ config_id = 1002017, name = "GADGET_STATE_CHANGE_2017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2017", action = "action_EVENT_GADGET_STATE_CHANGE_2017", trigger_count = 0 },
	{ config_id = 1002018, name = "GADGET_STATE_CHANGE_2018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2018", action = "action_EVENT_GADGET_STATE_CHANGE_2018", trigger_count = 0 },
	{ config_id = 1002019, name = "GADGET_STATE_CHANGE_2019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2019", action = "action_EVENT_GADGET_STATE_CHANGE_2019", trigger_count = 0 },
	{ config_id = 1002020, name = "GADGET_STATE_CHANGE_2020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2020", action = "action_EVENT_GADGET_STATE_CHANGE_2020", trigger_count = 0 },
	{ config_id = 1002021, name = "GADGET_STATE_CHANGE_2021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2021", action = "action_EVENT_GADGET_STATE_CHANGE_2021", trigger_count = 0 },
	{ config_id = 1002022, name = "GADGET_STATE_CHANGE_2022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2022", action = "action_EVENT_GADGET_STATE_CHANGE_2022", trigger_count = 0 },
	{ config_id = 1002023, name = "GADGET_STATE_CHANGE_2023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2023", action = "action_EVENT_GADGET_STATE_CHANGE_2023", trigger_count = 0 },
	{ config_id = 1002024, name = "GADGET_STATE_CHANGE_2024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2024", action = "action_EVENT_GADGET_STATE_CHANGE_2024", trigger_count = 0 },
	{ config_id = 1002025, name = "GADGET_STATE_CHANGE_2025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2025", action = "action_EVENT_GADGET_STATE_CHANGE_2025", trigger_count = 0 },
	{ config_id = 1002026, name = "GADGET_STATE_CHANGE_2026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2026", action = "action_EVENT_GADGET_STATE_CHANGE_2026", trigger_count = 0 },
	{ config_id = 1002027, name = "GADGET_STATE_CHANGE_2027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2027", action = "action_EVENT_GADGET_STATE_CHANGE_2027", trigger_count = 0 },
	{ config_id = 1002028, name = "ENTER_REGION_2028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2028", action = "action_EVENT_ENTER_REGION_2028" },
	-- 1次性目标点开关
	{ config_id = 1002029, name = "GADGET_STATE_CHANGE_2029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2029", action = "action_EVENT_GADGET_STATE_CHANGE_2029" },
	{ config_id = 1002030, name = "ENTER_REGION_2030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2030", action = "action_EVENT_ENTER_REGION_2030" },
	{ config_id = 1002032, name = "ENTER_REGION_2032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2032", action = "action_EVENT_ENTER_REGION_2032" },
	{ config_id = 1002039, name = "SELECT_OPTION_2039", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2039", action = "action_EVENT_SELECT_OPTION_2039" },
	{ config_id = 1002040, name = "SELECT_OPTION_2040", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2040", action = "action_EVENT_SELECT_OPTION_2040" },
	{ config_id = 1002041, name = "SELECT_OPTION_2041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2041", action = "action_EVENT_SELECT_OPTION_2041" },
	-- 提示
	{ config_id = 1002042, name = "GADGET_STATE_CHANGE_2042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2042", action = "action_EVENT_GADGET_STATE_CHANGE_2042", trigger_count = 0 },
	-- 提示
	{ config_id = 1002043, name = "GADGET_STATE_CHANGE_2043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2043", action = "action_EVENT_GADGET_STATE_CHANGE_2043", trigger_count = 0 },
	-- 提示
	{ config_id = 1002044, name = "GADGET_STATE_CHANGE_2044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2044", action = "action_EVENT_GADGET_STATE_CHANGE_2044", trigger_count = 0 },
	-- 提示
	{ config_id = 1002045, name = "GADGET_STATE_CHANGE_2045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2045", action = "action_EVENT_GADGET_STATE_CHANGE_2045", trigger_count = 0 },
	-- 提示
	{ config_id = 1002046, name = "GADGET_STATE_CHANGE_2046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2046", action = "action_EVENT_GADGET_STATE_CHANGE_2046", trigger_count = 0 },
	-- 提示
	{ config_id = 1002047, name = "GADGET_STATE_CHANGE_2047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2047", action = "action_EVENT_GADGET_STATE_CHANGE_2047", trigger_count = 0 },
	-- 提示
	{ config_id = 1002048, name = "GADGET_STATE_CHANGE_2048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2048", action = "action_EVENT_GADGET_STATE_CHANGE_2048", trigger_count = 0 },
	-- 提示
	{ config_id = 1002049, name = "GADGET_STATE_CHANGE_2049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2049", action = "action_EVENT_GADGET_STATE_CHANGE_2049", trigger_count = 0 },
	-- 延迟卡人保险1
	{ config_id = 1002050, name = "ENTER_REGION_2050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2050", action = "action_EVENT_ENTER_REGION_2050", trigger_count = 0 },
	-- 延迟卡人保险2
	{ config_id = 1002051, name = "ENTER_REGION_2051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2051", action = "action_EVENT_ENTER_REGION_2051", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wall1", value = 0, no_refresh = false },
	{ config_id = 2, name = "wall2", value = 0, no_refresh = false },
	{ config_id = 3, name = "wall3", value = 0, no_refresh = false },
	{ config_id = 4, name = "wall4", value = 0, no_refresh = false },
	{ config_id = 5, name = "wall5", value = 0, no_refresh = false },
	{ config_id = 6, name = "wall6", value = 0, no_refresh = false },
	{ config_id = 7, name = "wall7", value = 0, no_refresh = false },
	{ config_id = 8, name = "wall8", value = 0, no_refresh = false },
	{ config_id = 9, name = "wall9", value = 0, no_refresh = false }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2031, 2033, 2034, 2035, 2036, 2037, 2038 },
		regions = { 2028, 2030, 2032, 2050, 2051 },
		triggers = { "GADGET_STATE_CHANGE_2010", "GADGET_STATE_CHANGE_2011", "GADGET_STATE_CHANGE_2012", "GADGET_STATE_CHANGE_2013", "GADGET_STATE_CHANGE_2014", "GADGET_STATE_CHANGE_2015", "GADGET_STATE_CHANGE_2016", "GADGET_STATE_CHANGE_2017", "GADGET_STATE_CHANGE_2018", "GADGET_STATE_CHANGE_2019", "GADGET_STATE_CHANGE_2020", "GADGET_STATE_CHANGE_2021", "GADGET_STATE_CHANGE_2022", "GADGET_STATE_CHANGE_2023", "GADGET_STATE_CHANGE_2024", "GADGET_STATE_CHANGE_2025", "GADGET_STATE_CHANGE_2026", "GADGET_STATE_CHANGE_2027", "ENTER_REGION_2028", "GADGET_STATE_CHANGE_2029", "ENTER_REGION_2030", "ENTER_REGION_2032", "SELECT_OPTION_2039", "SELECT_OPTION_2040", "SELECT_OPTION_2041", "GADGET_STATE_CHANGE_2042", "GADGET_STATE_CHANGE_2043", "GADGET_STATE_CHANGE_2044", "GADGET_STATE_CHANGE_2045", "GADGET_STATE_CHANGE_2046", "GADGET_STATE_CHANGE_2047", "GADGET_STATE_CHANGE_2048", "GADGET_STATE_CHANGE_2049", "ENTER_REGION_2050", "ENTER_REGION_2051" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2001, 1, {10}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2001, 1, {1}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 检测config_id为2002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2002, 1, {11}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	-- 检测config_id为2002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为1
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2013(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2002, 1, {2}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2014(context, evt)
	-- 检测config_id为2003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为0
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2003, 1, {12}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2015(context, evt)
	-- 检测config_id为2003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall3"为1
	if ScriptLib.GetGroupVariableValue(context, "wall3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2015(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2003, 1, {3}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2016(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2016(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {11}, tempParam) then
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
function condition_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2017(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2004, 1, {4}, tempParam) then
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2005, 1, {10}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2019(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2005, 1, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	-- 检测config_id为2006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall6"为0
	if ScriptLib.GetGroupVariableValue(context, "wall6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2020(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2006, 1, {14}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2021(context, evt)
	-- 检测config_id为2006的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall6"为1
	if ScriptLib.GetGroupVariableValue(context, "wall6") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2021(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2006, 1, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall6", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2022(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2022(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2023(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall8"为0
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2023(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall7", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	-- 检测config_id为2008的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall8"为0
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2008, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall8" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall8", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	-- 检测config_id为2008的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall8"为1
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2008, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall8" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall8", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2026(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2026(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2027(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2027(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2028(context, evt)
	if evt.param1 ~= 2028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2028(context, evt)
	-- 调用提示id为 400440101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400440101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	-- 检测config_id为2002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240044004, 1)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240044004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2030(context, evt)
	if evt.param1 ~= 2030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2030(context, evt)
	-- 调用提示id为 400440102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400440102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2032(context, evt)
	if evt.param1 ~= 2032 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2032(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240044002, 2036, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2037, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240044002, 2038, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2039(context, evt)
	-- 判断是gadgetid 2036 option_id 73
	if 2036 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2039(context, evt)
	-- 改变指定group组240044002中， configid为2033的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044002, 2033, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240044002 ；指定config：2036；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240044002, 2036, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2040(context, evt)
	-- 判断是gadgetid 2037 option_id 73
	if 2037 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2040(context, evt)
	-- 改变指定group组240044002中， configid为2034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044002, 2034, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240044002 ；指定config：2037；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240044002, 2037, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2041(context, evt)
	-- 判断是gadgetid 2038 option_id 73
	if 2038 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2041(context, evt)
	-- 改变指定group组240044002中， configid为2035的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044002, 2035, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240044002 ；指定config：2038；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240044002, 2038, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2042(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为0
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 0 then
			return false
	end
	
	-- 判断变量"wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2042(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2043(context, evt)
	-- 检测config_id为2005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall1"为1
	if ScriptLib.GetGroupVariableValue(context, "wall1") ~= 1 then
			return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2043(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2044(context, evt)
	-- 检测config_id为2002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为0
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 0 then
			return false
	end
	
	-- 判断变量"wall4"为1
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2044(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2045(context, evt)
	-- 检测config_id为2004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall2"为1
	if ScriptLib.GetGroupVariableValue(context, "wall2") ~= 1 then
			return false
	end
	
	-- 判断变量"wall4"为0
	if ScriptLib.GetGroupVariableValue(context, "wall4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2045(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2046(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall9"为1
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2046(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2047(context, evt)
	-- 检测config_id为2007的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall8"为1
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2047(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2048(context, evt)
	-- 检测config_id为2008的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall8"为0
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2048(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2049(context, evt)
	-- 检测config_id为2009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2049(context, evt)
	-- 调用提示id为 201110501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2050(context, evt)
	if evt.param1 ~= 2050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall7"为0
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 0 then
			return false
	end
	
	-- 判断变量"wall8"为0
	if ScriptLib.GetGroupVariableValue(context, "wall8") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2050(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {13}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2009, 1, {9}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall7", 1, 240044002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "wall9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall9", 0, 240044002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2051(context, evt)
	if evt.param1 ~= 2051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"wall7"为1
	if ScriptLib.GetGroupVariableValue(context, "wall7") ~= 1 then
			return false
	end
	
	-- 判断变量"wall9"为0
	if ScriptLib.GetGroupVariableValue(context, "wall9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2051(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2007, 1, {7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 2008, 1, {8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall7" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall7", 0, 240044002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "wall8" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "wall8", 0, 240044002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end