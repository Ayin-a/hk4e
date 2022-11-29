-- 基础信息
local base_info = {
	group_id = 133308683
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 12,
	group_id = 133308683,
	gadget_1 = 683001,
	gadget_2 = 683002,
	gadget_3 = 683003,
	gadget_4 = 683005,
	gadget_chest = 683004
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
	{ config_id = 683001, gadget_id = 70900007, pos = { x = -1750.126, y = 214.245, z = 4623.894 }, rot = { x = 5.697, y = 2.329, z = 13.358 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 683002, gadget_id = 70900007, pos = { x = -1764.084, y = 229.631, z = 4593.947 }, rot = { x = 12.160, y = 358.735, z = 356.829 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 683003, gadget_id = 70900007, pos = { x = -1788.379, y = 215.846, z = 4625.714 }, rot = { x = 1.261, y = 7.423, z = 352.847 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 683004, gadget_id = 70211101, pos = { x = -1763.924, y = 213.735, z = 4626.389 }, rot = { x = 347.647, y = 179.822, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 683005, gadget_id = 70900007, pos = { x = -1757.151, y = 207.346, z = 4665.120 }, rot = { x = 5.098, y = 359.917, z = 358.142 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1683006, name = "VARIABLE_CHANGE_683006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_683006", action = "action_EVENT_VARIABLE_CHANGE_683006", trigger_count = 0 },
	{ config_id = 1683007, name = "GADGET_STATE_CHANGE_683007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_683007", action = "action_EVENT_GADGET_STATE_CHANGE_683007", trigger_count = 0 },
	{ config_id = 1683008, name = "TIME_AXIS_PASS_683008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_683008", action = "action_EVENT_TIME_AXIS_PASS_683008", trigger_count = 0 },
	{ config_id = 1683009, name = "VARIABLE_CHANGE_683009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_683009", action = "action_EVENT_VARIABLE_CHANGE_683009", trigger_count = 0 },
	{ config_id = 1683010, name = "GADGET_CREATE_683010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_683010", action = "action_EVENT_GADGET_CREATE_683010", trigger_count = 0 },
	-- 保底
	{ config_id = 1683011, name = "GROUP_LOAD_683011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_683011", trigger_count = 0 }
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
		gadgets = { 683001, 683002, 683003, 683005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_683006", "GADGET_STATE_CHANGE_683007", "TIME_AXIS_PASS_683008", "VARIABLE_CHANGE_683009", "GROUP_LOAD_683011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 683001, 683002, 683003, 683004, 683005 },
		regions = { },
		triggers = { "GADGET_CREATE_683010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_683006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_683006(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_683007(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_683007(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_683008(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_683008(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_683009(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_683009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308683, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_683010(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 and defs.gadget_4 ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_683010(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_683011(context, evt)
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