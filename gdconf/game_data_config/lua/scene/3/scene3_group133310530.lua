-- 基础信息
local base_info = {
	group_id = 133310530
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 15,
	group_id = 133310530,
	gadget_1 = 530001,
	gadget_2 = 530002,
	gadget_3 = 530003,
	gadget_4 = 530005,
	gadget_chest = 530004
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
	{ config_id = 530001, gadget_id = 70330332, pos = { x = -2295.467, y = 359.620, z = 4287.244 }, rot = { x = 359.974, y = 351.104, z = 1.338 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 530002, gadget_id = 70330332, pos = { x = -2232.670, y = 353.708, z = 4284.712 }, rot = { x = 358.223, y = 328.983, z = 1.122 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 530003, gadget_id = 70330332, pos = { x = -2280.821, y = 359.806, z = 4326.549 }, rot = { x = 0.000, y = 71.796, z = 0.000 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 530004, gadget_id = 70211111, pos = { x = -2281.886, y = 357.476, z = 4309.372 }, rot = { x = 0.000, y = 134.780, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 530005, gadget_id = 70330332, pos = { x = -2254.175, y = 359.415, z = 4308.828 }, rot = { x = 0.015, y = 0.909, z = 357.302 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1530006, name = "VARIABLE_CHANGE_530006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_530006", action = "action_EVENT_VARIABLE_CHANGE_530006", trigger_count = 0 },
	-- 保底
	{ config_id = 1530007, name = "GROUP_LOAD_530007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_530007", trigger_count = 0 },
	{ config_id = 1530008, name = "VARIABLE_CHANGE_530008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_530008", action = "action_EVENT_VARIABLE_CHANGE_530008", trigger_count = 0 },
	{ config_id = 1530009, name = "GADGET_STATE_CHANGE_530009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_530009", action = "action_EVENT_GADGET_STATE_CHANGE_530009", trigger_count = 0 },
	{ config_id = 1530010, name = "TIME_AXIS_PASS_530010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_530010", action = "action_EVENT_TIME_AXIS_PASS_530010", trigger_count = 0 },
	{ config_id = 1530011, name = "GADGET_CREATE_530011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_530011", action = "action_EVENT_GADGET_CREATE_530011", trigger_count = 0 }
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
		gadgets = { 530001, 530002, 530003, 530005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_530006", "GROUP_LOAD_530007", "VARIABLE_CHANGE_530008", "GADGET_STATE_CHANGE_530009", "TIME_AXIS_PASS_530010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 530001, 530002, 530003, 530004, 530005 },
		regions = { },
		triggers = { "GADGET_CREATE_530011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_530006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_530006(context, evt)
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

-- 触发操作
function action_EVENT_GROUP_LOAD_530007(context, evt)
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_530008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_530008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310530, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_530009(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_530009(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_530010(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_530010(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_530011(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 and defs.gadget_4 ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_530011(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end