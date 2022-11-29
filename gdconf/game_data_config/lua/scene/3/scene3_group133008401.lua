-- 基础信息
local base_info = {
	group_id = 133008401
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
	{ config_id = 401001, gadget_id = 70310011, pos = { x = 907.461, y = 199.068, z = -1160.719 }, rot = { x = 342.118, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 401002, gadget_id = 70900009, pos = { x = 894.391, y = 198.615, z = -1165.367 }, rot = { x = 0.032, y = 81.753, z = 359.690 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 401003, gadget_id = 70310011, pos = { x = 887.315, y = 200.533, z = -1154.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 401004, gadget_id = 70310011, pos = { x = 878.926, y = 200.091, z = -1178.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 401006, gadget_id = 70220043, pos = { x = 920.127, y = 200.658, z = -1140.155 }, rot = { x = 357.725, y = 67.562, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 401007, gadget_id = 70720214, pos = { x = 894.882, y = 199.417, z = -1167.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800154, area_id = 10 },
	{ config_id = 401008, gadget_id = 70310017, pos = { x = 882.603, y = 199.867, z = -1165.666 }, rot = { x = 12.136, y = 312.660, z = 347.763 }, level = 30, state = GadgetState.GearStop, area_id = 10 },
	{ config_id = 401009, gadget_id = 70310017, pos = { x = 888.040, y = 198.575, z = -1173.055 }, rot = { x = 0.000, y = 0.000, z = 335.991 }, level = 30, state = GadgetState.GearStop, area_id = 10 },
	{ config_id = 401010, gadget_id = 70310017, pos = { x = 897.870, y = 198.112, z = -1173.096 }, rot = { x = 345.558, y = 203.813, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 10 },
	{ config_id = 401013, gadget_id = 70220043, pos = { x = 921.851, y = 200.626, z = -1143.161 }, rot = { x = 359.167, y = 359.030, z = 326.215 }, level = 30, area_id = 10 },
	{ config_id = 401014, gadget_id = 70310011, pos = { x = 902.278, y = 199.347, z = -1178.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 401035, gadget_id = 70360102, pos = { x = 907.372, y = 199.392, z = -1160.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401005, name = "GADGET_STATE_CHANGE_401005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401005", action = "action_EVENT_GADGET_STATE_CHANGE_401005", trigger_count = 0 },
	{ config_id = 1401011, name = "GADGET_STATE_CHANGE_401011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401011", action = "action_EVENT_GADGET_STATE_CHANGE_401011" },
	{ config_id = 1401012, name = "GADGET_STATE_CHANGE_401012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401012", action = "action_EVENT_GADGET_STATE_CHANGE_401012" },
	{ config_id = 1401015, name = "GADGET_STATE_CHANGE_401015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401015", action = "action_EVENT_GADGET_STATE_CHANGE_401015" },
	{ config_id = 1401016, name = "GADGET_STATE_CHANGE_401016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401016", action = "action_EVENT_GADGET_STATE_CHANGE_401016" },
	{ config_id = 1401017, name = "GADGET_STATE_CHANGE_401017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401017", action = "action_EVENT_GADGET_STATE_CHANGE_401017", trigger_count = 0 },
	{ config_id = 1401018, name = "GADGET_STATE_CHANGE_401018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401018", action = "action_EVENT_GADGET_STATE_CHANGE_401018", trigger_count = 0 },
	{ config_id = 1401019, name = "GADGET_STATE_CHANGE_401019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401019", action = "action_EVENT_GADGET_STATE_CHANGE_401019", trigger_count = 0 },
	{ config_id = 1401020, name = "VARIABLE_CHANGE_401020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401020", action = "action_EVENT_VARIABLE_CHANGE_401020", trigger_count = 0 },
	{ config_id = 1401021, name = "VARIABLE_CHANGE_401021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401021", action = "action_EVENT_VARIABLE_CHANGE_401021", trigger_count = 0 },
	{ config_id = 1401022, name = "VARIABLE_CHANGE_401022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401022", action = "action_EVENT_VARIABLE_CHANGE_401022", trigger_count = 0 },
	{ config_id = 1401023, name = "VARIABLE_CHANGE_401023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401023", action = "action_EVENT_VARIABLE_CHANGE_401023", trigger_count = 0 },
	{ config_id = 1401024, name = "VARIABLE_CHANGE_401024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401024", action = "action_EVENT_VARIABLE_CHANGE_401024", trigger_count = 0 },
	{ config_id = 1401025, name = "VARIABLE_CHANGE_401025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401025", action = "action_EVENT_VARIABLE_CHANGE_401025", trigger_count = 0 },
	{ config_id = 1401026, name = "PLATFORM_REACH_POINT_401026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401026", action = "action_EVENT_PLATFORM_REACH_POINT_401026" },
	{ config_id = 1401027, name = "PLATFORM_REACH_POINT_401027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401027", action = "action_EVENT_PLATFORM_REACH_POINT_401027" },
	{ config_id = 1401028, name = "PLATFORM_REACH_POINT_401028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401028", action = "action_EVENT_PLATFORM_REACH_POINT_401028" },
	{ config_id = 1401029, name = "PLATFORM_REACH_POINT_401029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401029", action = "action_EVENT_PLATFORM_REACH_POINT_401029" },
	{ config_id = 1401030, name = "PLATFORM_REACH_POINT_401030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401030", action = "action_EVENT_PLATFORM_REACH_POINT_401030" },
	{ config_id = 1401031, name = "PLATFORM_REACH_POINT_401031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_401031", action = "action_EVENT_PLATFORM_REACH_POINT_401031" },
	{ config_id = 1401032, name = "VARIABLE_CHANGE_401032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401032", action = "action_EVENT_VARIABLE_CHANGE_401032" },
	{ config_id = 1401033, name = "GADGET_STATE_CHANGE_401033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401033", action = "action_EVENT_GADGET_STATE_CHANGE_401033" },
	{ config_id = 1401034, name = "GADGET_STATE_CHANGE_401034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401034", action = "action_EVENT_GADGET_STATE_CHANGE_401034" },
	{ config_id = 1401036, name = "VARIABLE_CHANGE_401036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401036", action = "action_EVENT_VARIABLE_CHANGE_401036", trigger_count = 0 },
	{ config_id = 1401037, name = "VARIABLE_CHANGE_401037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401037", action = "action_EVENT_VARIABLE_CHANGE_401037", trigger_count = 0 },
	{ config_id = 1401038, name = "VARIABLE_CHANGE_401038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401038", action = "action_EVENT_VARIABLE_CHANGE_401038", trigger_count = 0 },
	{ config_id = 1401039, name = "VARIABLE_CHANGE_401039", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401039", action = "action_EVENT_VARIABLE_CHANGE_401039", trigger_count = 0 },
	{ config_id = 1401040, name = "VARIABLE_CHANGE_401040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401040", action = "action_EVENT_VARIABLE_CHANGE_401040", trigger_count = 0 },
	{ config_id = 1401041, name = "VARIABLE_CHANGE_401041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_401041", action = "action_EVENT_VARIABLE_CHANGE_401041", trigger_count = 0 },
	{ config_id = 1401042, name = "GADGET_STATE_CHANGE_401042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401042", action = "action_EVENT_GADGET_STATE_CHANGE_401042" },
	{ config_id = 1401043, name = "GADGET_STATE_CHANGE_401043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401043", action = "action_EVENT_GADGET_STATE_CHANGE_401043" },
	{ config_id = 1401044, name = "GADGET_STATE_CHANGE_401044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401044", action = "action_EVENT_GADGET_STATE_CHANGE_401044", trigger_count = 0 },
	{ config_id = 1401045, name = "GADGET_STATE_CHANGE_401045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401045", action = "action_EVENT_GADGET_STATE_CHANGE_401045", trigger_count = 0 },
	{ config_id = 1401046, name = "GADGET_STATE_CHANGE_401046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401046", action = "action_EVENT_GADGET_STATE_CHANGE_401046", trigger_count = 0 },
	{ config_id = 1401047, name = "GADGET_STATE_CHANGE_401047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401047", action = "action_EVENT_GADGET_STATE_CHANGE_401047", trigger_count = 0 },
	{ config_id = 1401048, name = "GADGET_CREATE_401048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_401048", action = "action_EVENT_GADGET_CREATE_401048", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = false },
	{ config_id = 2, name = "A", value = 0, no_refresh = false },
	{ config_id = 3, name = "B", value = 0, no_refresh = false },
	{ config_id = 4, name = "C", value = 0, no_refresh = false },
	{ config_id = 5, name = "D", value = 0, no_refresh = false },
	{ config_id = 6, name = "Aout", value = 0, no_refresh = false },
	{ config_id = 7, name = "Bout", value = 0, no_refresh = false },
	{ config_id = 8, name = "Cout", value = 0, no_refresh = false },
	{ config_id = 9, name = "Dout", value = 0, no_refresh = false },
	{ config_id = 10, name = "First", value = 0, no_refresh = false },
	{ config_id = 11, name = "X", value = 0, no_refresh = false },
	{ config_id = 12, name = "Y", value = 0, no_refresh = false },
	{ config_id = 13, name = "Z", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 401001, 401002, 401003, 401004, 401006, 401007, 401008, 401009, 401010, 401013, 401014, 401035 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_401005", "GADGET_STATE_CHANGE_401011", "GADGET_STATE_CHANGE_401012", "GADGET_STATE_CHANGE_401015", "GADGET_STATE_CHANGE_401016", "GADGET_STATE_CHANGE_401017", "GADGET_STATE_CHANGE_401018", "GADGET_STATE_CHANGE_401019", "VARIABLE_CHANGE_401020", "VARIABLE_CHANGE_401021", "VARIABLE_CHANGE_401022", "VARIABLE_CHANGE_401023", "VARIABLE_CHANGE_401024", "VARIABLE_CHANGE_401025", "PLATFORM_REACH_POINT_401026", "PLATFORM_REACH_POINT_401027", "PLATFORM_REACH_POINT_401028", "PLATFORM_REACH_POINT_401029", "PLATFORM_REACH_POINT_401030", "PLATFORM_REACH_POINT_401031", "VARIABLE_CHANGE_401032", "GADGET_STATE_CHANGE_401033", "GADGET_STATE_CHANGE_401034", "VARIABLE_CHANGE_401036", "VARIABLE_CHANGE_401037", "VARIABLE_CHANGE_401038", "VARIABLE_CHANGE_401039", "VARIABLE_CHANGE_401040", "VARIABLE_CHANGE_401041", "GADGET_STATE_CHANGE_401042", "GADGET_STATE_CHANGE_401043", "GADGET_STATE_CHANGE_401044", "GADGET_STATE_CHANGE_401045", "GADGET_STATE_CHANGE_401046", "GADGET_STATE_CHANGE_401047" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 401001, 401002, 401003, 401004, 401008, 401009, 401010, 401014 },
		regions = { },
		triggers = { "GADGET_CREATE_401048" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_GADGET_STATE_CHANGE_401005(context, evt)
	-- 检测config_id为401003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 401003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401005(context, evt)
	-- 将本组内变量名为 "Aout" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Aout", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401011(context, evt)
	if 401004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为0
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401011(context, evt)
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "B" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800155) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "First" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "First", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401012(context, evt)
	if 401003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为0
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401012(context, evt)
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800156) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "First" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "First", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401015(context, evt)
	if 401001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为0
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401015(context, evt)
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800158) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "First" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "First", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401016(context, evt)
	if 401014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为0
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401016(context, evt)
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "D" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "First" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "First", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401017(context, evt)
	-- 检测config_id为401004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 401004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401017(context, evt)
	-- 将本组内变量名为 "Bout" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Bout", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401018(context, evt)
	-- 检测config_id为401014的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 401014 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401018(context, evt)
	-- 将本组内变量名为 "Dout" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dout", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401019(context, evt)
	-- 检测config_id为401001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 401001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401019(context, evt)
	-- 将本组内变量名为 "Cout" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Cout", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"Bout"为1
	if ScriptLib.GetGroupVariableValue(context, "Bout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401020(context, evt)
	-- 将本组内变量名为 "Bout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Bout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"Cout"为1
	if ScriptLib.GetGroupVariableValue(context, "Cout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401021(context, evt)
	-- 将本组内变量名为 "Cout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Cout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"A"为1
	if ScriptLib.GetGroupVariableValue(context, "A") ~= 1 then
			return false
	end
	
	-- 判断变量"Dout"为1
	if ScriptLib.GetGroupVariableValue(context, "Dout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401022(context, evt)
	-- 将本组内变量名为 "Dout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"C"为1
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 1 then
			return false
	end
	
	-- 判断变量"Aout"为1
	if ScriptLib.GetGroupVariableValue(context, "Aout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401023(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800181) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Aout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Aout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"C"为1
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 1 then
			return false
	end
	
	-- 判断变量"Bout"为1
	if ScriptLib.GetGroupVariableValue(context, "Bout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401024(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800185) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Bout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Bout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"C"为1
	if ScriptLib.GetGroupVariableValue(context, "C") ~= 1 then
			return false
	end
	
	-- 判断变量"Dout"为1
	if ScriptLib.GetGroupVariableValue(context, "Dout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401025(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Dout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401026(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800185 的路线中的 2 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800185 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Y"为0
	if ScriptLib.GetGroupVariableValue(context, "Y") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401026(context, evt)
	-- 将configid为 401009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Y" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Y", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401027(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800182 的路线中的 6 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800182 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Y"为0
	if ScriptLib.GetGroupVariableValue(context, "Y") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401027(context, evt)
	-- 将configid为 401009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Y" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Y", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401028(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800174 的路线中的 4 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800174 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"X"为0
	if ScriptLib.GetGroupVariableValue(context, "X") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401028(context, evt)
	-- 将configid为 401008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "X" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "X", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401029(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800175 的路线中的 4 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800175 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"X"为0
	if ScriptLib.GetGroupVariableValue(context, "X") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401029(context, evt)
	-- 将configid为 401008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "X" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "X", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401030(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800183 的路线中的 6 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800183 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Z"为0
	if ScriptLib.GetGroupVariableValue(context, "Z") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401030(context, evt)
	-- 将configid为 401010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Z" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Z", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_401031(context, evt)
	-- 判断是gadgetid 为 401007的移动平台，是否到达了300800184 的路线中的 2 点
	
	if 401007 ~= evt.param1 then
	  return false
	end
	
	if 300800184 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"Z"为0
	if ScriptLib.GetGroupVariableValue(context, "Z") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_401031(context, evt)
	-- 将configid为 401010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "Z" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Z", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为3
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401032(context, evt)
	-- 将configid为 401002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（894，198，-1165），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=894, y=198, z=-1165}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 401007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401033(context, evt)
	if 401002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008565, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008401, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401034(context, evt)
	if 401008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401034(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	-- 判断变量"Aout"为1
	if ScriptLib.GetGroupVariableValue(context, "Aout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401036(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Aout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Aout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	-- 判断变量"Cout"为1
	if ScriptLib.GetGroupVariableValue(context, "Cout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401037(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Cout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Cout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"B"为1
	if ScriptLib.GetGroupVariableValue(context, "B") ~= 1 then
			return false
	end
	
	-- 判断变量"Dout"为1
	if ScriptLib.GetGroupVariableValue(context, "Dout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401038(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Dout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Dout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	-- 判断变量"Aout"为1
	if ScriptLib.GetGroupVariableValue(context, "Aout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401039(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Aout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Aout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	-- 判断变量"Bout"为1
	if ScriptLib.GetGroupVariableValue(context, "Bout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401040(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800176) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Bout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Bout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_401041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"D"为1
	if ScriptLib.GetGroupVariableValue(context, "D") ~= 1 then
			return false
	end
	
	-- 判断变量"Cout"为1
	if ScriptLib.GetGroupVariableValue(context, "Cout") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_401041(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 401007, 300800179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "Cout" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Cout", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401042(context, evt)
	if 401009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401042(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401043(context, evt)
	if 401010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401043(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401044(context, evt)
	if 401003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为1
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401044(context, evt)
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "A" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401045(context, evt)
	if 401001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为1
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401045(context, evt)
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401046(context, evt)
	if 401004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为1
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401046(context, evt)
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "B" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "D" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401047(context, evt)
	if 401014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"First"为1
	if ScriptLib.GetGroupVariableValue(context, "First") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401047(context, evt)
	-- 将configid为 401001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "D" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "D", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "B" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "B", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "C" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "C", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "A" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "A", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_401048(context, evt)
	if 401002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_401048(context, evt)
	-- 将configid为 401002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 401010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 401010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end