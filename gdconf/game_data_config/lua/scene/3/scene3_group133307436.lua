-- 基础信息
local base_info = {
	group_id = 133307436
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 133307436,
	gadget_1 = 436001,
	gadget_2 = 436002,
	gadget_3 = 436003,
	gadget_4 = 436005,
	gadget_chest = 436004
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
	{ config_id = 436001, gadget_id = 70900007, pos = { x = -1357.674, y = 45.783, z = 5246.750 }, rot = { x = 6.213, y = 0.481, z = 8.845 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 32 },
	{ config_id = 436002, gadget_id = 70900007, pos = { x = -1351.161, y = 47.512, z = 5265.658 }, rot = { x = 6.758, y = 0.243, z = 4.120 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 32 },
	{ config_id = 436003, gadget_id = 70900007, pos = { x = -1344.707, y = 44.273, z = 5279.089 }, rot = { x = 1.851, y = 359.901, z = 353.855 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 32 },
	{ config_id = 436004, gadget_id = 70211101, pos = { x = -1351.117, y = 45.532, z = 5280.121 }, rot = { x = 344.863, y = 164.307, z = 6.386 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 436005, gadget_id = 70900007, pos = { x = -1341.016, y = 45.648, z = 5317.771 }, rot = { x = 359.103, y = 359.971, z = 3.719 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1436006, name = "VARIABLE_CHANGE_436006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_436006", action = "action_EVENT_VARIABLE_CHANGE_436006", trigger_count = 0 },
	{ config_id = 1436007, name = "GADGET_STATE_CHANGE_436007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436007", action = "action_EVENT_GADGET_STATE_CHANGE_436007", trigger_count = 0 },
	{ config_id = 1436008, name = "TIME_AXIS_PASS_436008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_436008", action = "action_EVENT_TIME_AXIS_PASS_436008", trigger_count = 0 },
	{ config_id = 1436009, name = "VARIABLE_CHANGE_436009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_436009", action = "action_EVENT_VARIABLE_CHANGE_436009", trigger_count = 0 },
	{ config_id = 1436010, name = "GADGET_CREATE_436010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_436010", action = "action_EVENT_GADGET_CREATE_436010", trigger_count = 0 },
	-- 保底
	{ config_id = 1436011, name = "GROUP_LOAD_436011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_436011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = true }
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
		gadgets = { 436001, 436002, 436003, 436005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_436006", "GADGET_STATE_CHANGE_436007", "TIME_AXIS_PASS_436008", "VARIABLE_CHANGE_436009", "GROUP_LOAD_436011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 436001, 436002, 436003, 436004, 436005 },
		regions = { },
		triggers = { "GADGET_CREATE_436010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_436006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_436006(context, evt)
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_1))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_2))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_3))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_4))
	
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
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_436007(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436007(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	
	if evt.param1 == GadgetState.Action01 and evt.param3 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	-- 创建标识为"tostring(evt.param2)"，时间节点为{defs.timer}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, tostring(evt.param2), {defs.timer}, false)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_436008(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_436008(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_436009(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_436009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307436, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_436010(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 and defs.gadget_4 ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_436010(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_436011(context, evt)
	local _active = 0
	
	if defs.gadget_1 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_2 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_3 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_4 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.Action01)
		_active=_active + 1
		end
	end
	
	
	ScriptLib.SetGroupVariableValue(context, "active_count", _active)
	
	return 0
end