-- 基础信息
local base_info = {
	group_id = 220133006
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
	{ config_id = 6001, gadget_id = 70310242, pos = { x = 4353.612, y = 533.850, z = 240.350 }, rot = { x = 8.695, y = 312.790, z = 350.241 }, level = 1, interact_id = 64 },
	{ config_id = 6002, gadget_id = 70310242, pos = { x = 4324.817, y = 537.676, z = 271.043 }, rot = { x = 355.736, y = 261.914, z = 5.687 }, level = 1, interact_id = 64 },
	-- 浮石B
	{ config_id = 6003, gadget_id = 70380320, pos = { x = 4332.400, y = 536.540, z = 248.270 }, rot = { x = 358.900, y = 333.589, z = 355.168 }, level = 1, route_id = 22, start_route = false },
	-- 浮石A
	{ config_id = 6004, gadget_id = 70380320, pos = { x = 4356.940, y = 535.130, z = 260.040 }, rot = { x = 355.352, y = 359.420, z = 356.935 }, level = 1, route_id = 16, start_route = false },
	-- 浮石C
	{ config_id = 6008, gadget_id = 70380320, pos = { x = 4342.980, y = 531.940, z = 269.840 }, rot = { x = 358.900, y = 90.710, z = 355.168 }, level = 1, route_id = 23, start_route = false },
	-- 浮石D
	{ config_id = 6022, gadget_id = 70380320, pos = { x = 4324.590, y = 532.190, z = 258.880 }, rot = { x = 0.086, y = 35.367, z = 352.973 }, level = 1, route_id = 24, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006016, name = "GROUP_LOAD_6016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6016", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1006017, name = "GADGET_STATE_CHANGE_6017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6017", action = "action_EVENT_GADGET_STATE_CHANGE_6017", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1006018, name = "GADGET_STATE_CHANGE_6018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6018", action = "action_EVENT_GADGET_STATE_CHANGE_6018", trigger_count = 0 },
	-- A X-2
	{ config_id = 1006019, name = "PLATFORM_ARRIVAL_6019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6019", action = "action_EVENT_PLATFORM_ARRIVAL_6019", trigger_count = 0 },
	-- B X-2
	{ config_id = 1006020, name = "PLATFORM_ARRIVAL_6020", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6020", action = "action_EVENT_PLATFORM_ARRIVAL_6020", trigger_count = 0 },
	-- C X-2
	{ config_id = 1006024, name = "PLATFORM_ARRIVAL_6024", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6024", action = "action_EVENT_PLATFORM_ARRIVAL_6024", trigger_count = 0 },
	-- D X-2
	{ config_id = 1006025, name = "PLATFORM_ARRIVAL_6025", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6025", action = "action_EVENT_PLATFORM_ARRIVAL_6025", trigger_count = 0 },
	-- 201+变量为0 启动平台+变量设1(Final)
	{ config_id = 1006027, name = "GADGET_STATE_CHANGE_6027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_6027", trigger_count = 0 },
	-- A y-0
	{ config_id = 1006028, name = "PLATFORM_ARRIVAL_6028", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6028", action = "action_EVENT_PLATFORM_ARRIVAL_6028", trigger_count = 0 },
	-- A y-0
	{ config_id = 1006029, name = "PLATFORM_ARRIVAL_6029", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6029", action = "action_EVENT_PLATFORM_ARRIVAL_6029", trigger_count = 0 },
	-- A y-0
	{ config_id = 1006030, name = "PLATFORM_ARRIVAL_6030", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6030", action = "action_EVENT_PLATFORM_ARRIVAL_6030", trigger_count = 0 },
	-- A y-0
	{ config_id = 1006031, name = "PLATFORM_ARRIVAL_6031", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_6031", action = "action_EVENT_PLATFORM_ARRIVAL_6031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "StoneReadyA", value = 0, no_refresh = false },
	{ config_id = 2, name = "StoneReadyB", value = 0, no_refresh = false },
	{ config_id = 3, name = "StoneReadyC", value = 0, no_refresh = false },
	{ config_id = 4, name = "StoneReadyD", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6005, gadget_id = 70380320, pos = { x = 4348.770, y = 532.220, z = 248.340 }, rot = { x = 355.352, y = 359.420, z = 356.935 }, level = 1, route_id = 7, start_route = false },
		{ config_id = 6006, gadget_id = 70380320, pos = { x = 4341.210, y = 533.320, z = 253.960 }, rot = { x = 351.033, y = 277.877, z = 7.188 }, level = 1, route_id = 15, start_route = false },
		{ config_id = 6021, gadget_id = 70380320, pos = { x = 4337.210, y = 535.020, z = 260.980 }, rot = { x = 359.392, y = 317.978, z = 353.407 }, level = 1, route_id = 7, start_route = false },
		{ config_id = 6023, gadget_id = 70380320, pos = { x = 4329.600, y = 536.679, z = 266.420 }, rot = { x = 1.442, y = 278.324, z = 11.184 }, level = 1, route_id = 7, start_route = false }
	},
	triggers = {
		{ config_id = 1006007, name = "GADGET_STATE_CHANGE_6007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_6007", trigger_count = 0 },
		{ config_id = 1006009, name = "GADGET_STATE_CHANGE_6009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6009", action = "action_EVENT_GADGET_STATE_CHANGE_6009", trigger_count = 0 },
		{ config_id = 1006010, name = "GADGET_STATE_CHANGE_6010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6010", action = "action_EVENT_GADGET_STATE_CHANGE_6010", trigger_count = 0 },
		{ config_id = 1006011, name = "GADGET_STATE_CHANGE_6011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6011", action = "action_EVENT_GADGET_STATE_CHANGE_6011", trigger_count = 0 },
		{ config_id = 1006012, name = "PLATFORM_REACH_POINT_6012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6012", action = "action_EVENT_PLATFORM_REACH_POINT_6012", trigger_count = 0 },
		{ config_id = 1006013, name = "PLATFORM_REACH_POINT_6013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_6013", action = "action_EVENT_PLATFORM_REACH_POINT_6013", trigger_count = 0 },
		{ config_id = 1006014, name = "GADGET_STATE_CHANGE_6014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6014", action = "action_EVENT_GADGET_STATE_CHANGE_6014", trigger_count = 0 },
		{ config_id = 1006015, name = "GADGET_STATE_CHANGE_6015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6015", action = "action_EVENT_GADGET_STATE_CHANGE_6015", trigger_count = 0 },
		{ config_id = 1006026, name = "GADGET_STATE_CHANGE_6026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_6026", trigger_count = 0 }
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
		gadgets = { 6001, 6002, 6003, 6004, 6008, 6022 },
		regions = { },
		triggers = { "GROUP_LOAD_6016", "GADGET_STATE_CHANGE_6017", "GADGET_STATE_CHANGE_6018", "PLATFORM_ARRIVAL_6019", "PLATFORM_ARRIVAL_6020", "PLATFORM_ARRIVAL_6024", "PLATFORM_ARRIVAL_6025", "GADGET_STATE_CHANGE_6027", "PLATFORM_ARRIVAL_6028", "PLATFORM_ARRIVAL_6029", "PLATFORM_ARRIVAL_6030", "PLATFORM_ARRIVAL_6031" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_6016(context, evt)
	-- 将本组内变量名为 "StoneReadyA" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyA", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneReadyB" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyB", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneReadyC" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyC", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneReadyD" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyD", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133006, 6001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6017(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2801, 2, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133006, 6002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6018(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2801, 2, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6019(context, evt)
	-- 判断是gadgetid 为 6004的移动平台，是否到达了16 的路线中的 0 点
	
	if 6004 ~= evt.param1 then
	  return false
	end
	
	if 16 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6019(context, evt)
	-- 将本组内变量名为 "StoneReadyA" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyA", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6020(context, evt)
	-- 判断是gadgetid 为 6003的移动平台，是否到达了22 的路线中的 0 点
	
	if 6003 ~= evt.param1 then
	  return false
	end
	
	if 22 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6020(context, evt)
	-- 将本组内变量名为 "StoneReadyB" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyB", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6024(context, evt)
	-- 判断是gadgetid 为 6008的移动平台，是否到达了23 的路线中的 0 点
	
	if 6008 ~= evt.param1 then
	  return false
	end
	
	if 23 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6024(context, evt)
	-- 将本组内变量名为 "StoneReadyC" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyC", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6025(context, evt)
	-- 判断是gadgetid 为 6022的移动平台，是否到达了24 的路线中的 0 点
	
	if 6022 ~= evt.param1 then
	  return false
	end
	
	if 24 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6025(context, evt)
	-- 将本组内变量名为 "StoneReadyD" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyD", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6027(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 220133006, 6001) == 201 or ScriptLib.GetGadgetStateByConfigId(context, 220133006, 6002) == 201 then
		if ScriptLib.GetGroupVariableValue(context, "StoneReadyA") == 0 and ScriptLib.GetGroupVariableValue(context, "StoneReadyB") == 0 and ScriptLib.GetGroupVariableValue(context, "StoneReadyC") == 0 and ScriptLib.GetGroupVariableValue(context, "StoneReadyD") == 0 then
			ScriptLib.SetGroupVariableValue(context, "StoneReadyA", 1)
			
			ScriptLib.SetGroupVariableValue(context, "StoneReadyB", 1)
			
			ScriptLib.SetGroupVariableValue(context, "StoneReadyC", 1)
			
			ScriptLib.SetGroupVariableValue(context, "StoneReadyD", 1)
			
			ScriptLib.SetPlatformRouteId(context, 6004, 16)
			
			ScriptLib.SetPlatformRouteId(context, 6003, 22)
			
			ScriptLib.SetPlatformRouteId(context, 6008, 23)
			
			ScriptLib.SetPlatformRouteId(context, 6022, 24)
			
			ScriptLib.StartPlatform(context, 6004)
			
			ScriptLib.StartPlatform(context, 6003)
			
			ScriptLib.StartPlatform(context, 6008)
			
			ScriptLib.StartPlatform(context, 6022)
		else
			if ScriptLib.GetGroupVariableValue(context, "StoneReadyA") == 2 and ScriptLib.GetGroupVariableValue(context, "StoneReadyB") == 2 and ScriptLib.GetGroupVariableValue(context, "StoneReadyC") == 2 and ScriptLib.GetGroupVariableValue(context, "StoneReadyD") == 2 then
				ScriptLib.SetGroupVariableValue(context, "StoneReadyA", 1)
				
				ScriptLib.SetGroupVariableValue(context, "StoneReadyB", 1)
				
				ScriptLib.SetGroupVariableValue(context, "StoneReadyC", 1)
				
				ScriptLib.SetGroupVariableValue(context, "StoneReadyD", 1)
				
				ScriptLib.SetPlatformRouteId(context, 6004, 21)
				
				ScriptLib.SetPlatformRouteId(context, 6003, 25)
				
				ScriptLib.SetPlatformRouteId(context, 6008, 26)
				
				ScriptLib.SetPlatformRouteId(context, 6022, 27)
				
				ScriptLib.StartPlatform(context, 6004)
				
				ScriptLib.StartPlatform(context, 6003)
				
				ScriptLib.StartPlatform(context, 6008)
				
				ScriptLib.StartPlatform(context, 6022)
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6028(context, evt)
	-- 判断是gadgetid 为 6004的移动平台，是否到达了21 的路线中的 0 点
	
	if 6004 ~= evt.param1 then
	  return false
	end
	
	if 21 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6028(context, evt)
	-- 将本组内变量名为 "StoneReadyA" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyA", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6029(context, evt)
	-- 判断是gadgetid 为 6003的移动平台，是否到达了25 的路线中的 0 点
	
	if 6003 ~= evt.param1 then
	  return false
	end
	
	if 25 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6029(context, evt)
	-- 将本组内变量名为 "StoneReadyB" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyB", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6030(context, evt)
	-- 判断是gadgetid 为 6008的移动平台，是否到达了26 的路线中的 0 点
	
	if 6008 ~= evt.param1 then
	  return false
	end
	
	if 26 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6030(context, evt)
	-- 将本组内变量名为 "StoneReadyC" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyC", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_6031(context, evt)
	-- 判断是gadgetid 为 6022的移动平台，是否到达了27 的路线中的 0 点
	
	if 6022 ~= evt.param1 then
	  return false
	end
	
	if 27 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_6031(context, evt)
	-- 将本组内变量名为 "StoneReadyD" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "StoneReadyD", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end