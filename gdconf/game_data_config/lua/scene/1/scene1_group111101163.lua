-- 基础信息
local base_info = {
	group_id = 111101163
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 111101163,
	gadget_1 = 163001,
	gadget_2 = 163002,
	gadget_3 = 163003,
	gadget_4 = 163005,
	gadget_chest = 163004
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
	{ config_id = 163001, gadget_id = 70900008, pos = { x = 2734.087, y = 274.822, z = -1167.013 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 163002, gadget_id = 70900008, pos = { x = 2731.655, y = 274.822, z = -1172.368 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 163003, gadget_id = 70900008, pos = { x = 2735.194, y = 280.787, z = -1167.305 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 163004, gadget_id = 70211111, pos = { x = 2733.915, y = 270.986, z = -1168.935 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 163005, gadget_id = 70900008, pos = { x = 2732.235, y = 280.787, z = -1170.615 }, rot = { x = 0.000, y = 27.870, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 163009, gadget_id = 70360006, pos = { x = 2723.952, y = 270.397, z = -1162.985 }, rot = { x = 0.340, y = 359.420, z = 2.589 }, level = 1 },
	{ config_id = 163010, gadget_id = 70350241, pos = { x = 2727.774, y = 270.654, z = -1165.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 163011, gadget_id = 70950077, pos = { x = 2727.774, y = 274.163, z = -1165.570 }, rot = { x = 0.000, y = 309.200, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163006, name = "GADGET_STATE_CHANGE_163006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163006", action = "action_EVENT_GADGET_STATE_CHANGE_163006", trigger_count = 0 },
	{ config_id = 1163007, name = "TIMER_EVENT_163007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_163007", action = "action_EVENT_TIMER_EVENT_163007", trigger_count = 0 },
	{ config_id = 1163008, name = "VARIABLE_CHANGE_163008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_163008", action = "action_EVENT_VARIABLE_CHANGE_163008", trigger_count = 0 },
	-- 踩踏重力压板后1)改变底座状态;2)启动台座
	{ config_id = 1163012, name = "GADGET_STATE_CHANGE_163012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163012", action = "action_EVENT_GADGET_STATE_CHANGE_163012", trigger_count = 0 },
	-- 离开重力压板后1)重置底座状态;2)重置台座位置
	{ config_id = 1163013, name = "GADGET_STATE_CHANGE_163013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163013", action = "action_EVENT_GADGET_STATE_CHANGE_163013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 163001, 163002, 163003, 163005, 163009, 163010, 163011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_163006", "TIMER_EVENT_163007", "VARIABLE_CHANGE_163008", "GADGET_STATE_CHANGE_163012", "GADGET_STATE_CHANGE_163013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Action01  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_163007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_163007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_163008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if defs.gadget_4 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStart)
	end
	
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
		return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163012(context, evt)
	if 163009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163012(context, evt)
	-- 将configid为 163010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 163011, 110100031, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163013(context, evt)
	if 163009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163013(context, evt)
	-- 将configid为 163010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 163011, 110100031, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end