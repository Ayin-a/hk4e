-- 基础信息
local base_info = {
	group_id = 133223189
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 20,
	group_id = 133223189,
	gadget_1 = 189001,
	gadget_2 = 189002,
	gadget_3 = 189003,
	gadget_4 = 189005,
	gadget_chest = 189004
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
	{ config_id = 189001, gadget_id = 70310090, pos = { x = -6181.464, y = 202.058, z = -2365.225 }, rot = { x = 352.587, y = 115.367, z = 358.179 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 189002, gadget_id = 70310090, pos = { x = -6179.904, y = 222.429, z = -2432.892 }, rot = { x = 0.000, y = 124.273, z = 0.000 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 189003, gadget_id = 70310090, pos = { x = -6174.451, y = 200.637, z = -2365.353 }, rot = { x = 348.553, y = 208.621, z = 9.252 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 189004, gadget_id = 70211101, pos = { x = -6175.191, y = 200.799, z = -2373.029 }, rot = { x = 358.606, y = 68.230, z = 352.043 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 189005, gadget_id = 70310090, pos = { x = -6177.421, y = 201.226, z = -2370.238 }, rot = { x = 342.126, y = 118.846, z = 3.598 }, level = 32, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1189006, name = "GADGET_STATE_CHANGE_189006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_189006", action = "action_EVENT_GADGET_STATE_CHANGE_189006", trigger_count = 0 },
	{ config_id = 1189007, name = "TIMER_EVENT_189007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_189007", action = "action_EVENT_TIMER_EVENT_189007", trigger_count = 0 },
	{ config_id = 1189008, name = "VARIABLE_CHANGE_189008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_189008", action = "action_EVENT_VARIABLE_CHANGE_189008", trigger_count = 0 }
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
		gadgets = { 189001, 189002, 189003, 189005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_189006", "TIMER_EVENT_189007", "VARIABLE_CHANGE_189008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_189006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_189006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Default  then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_189007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_189007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_189008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_189008(context, evt)
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