-- 基础信息
local base_info = {
	group_id = 133307211
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 15,
	group_id = 133307211,
	gadget_1 = 211001,
	gadget_2 = 211002,
	gadget_3 = 211003,
	gadget_4 = 211005,
	gadget_chest = 211004
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
	{ config_id = 211001, gadget_id = 70330332, pos = { x = -2398.782, y = 242.294, z = 4474.625 }, rot = { x = 4.266, y = 359.914, z = 357.152 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 211002, gadget_id = 70330332, pos = { x = -2393.113, y = 243.217, z = 4453.369 }, rot = { x = 4.043, y = 52.804, z = 0.232 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 211003, gadget_id = 70330332, pos = { x = -2388.160, y = 241.474, z = 4477.746 }, rot = { x = 5.571, y = 14.838, z = 355.845 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 211004, gadget_id = 70211111, pos = { x = -2389.143, y = 241.645, z = 4469.862 }, rot = { x = 357.156, y = 223.485, z = 353.768 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 211005, gadget_id = 70330332, pos = { x = -2380.624, y = 240.703, z = 4464.444 }, rot = { x = 351.649, y = 329.572, z = 353.605 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 26 },
	{ config_id = 211012, gadget_id = 70330396, pos = { x = -2392.981, y = 241.808, z = 4467.675 }, rot = { x = 357.996, y = 0.154, z = 354.197 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 211013, gadget_id = 70330392, pos = { x = -2388.780, y = 245.844, z = 4473.133 }, rot = { x = 90.000, y = 195.001, z = 0.000 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1211006, name = "VARIABLE_CHANGE_211006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_211006", action = "action_EVENT_VARIABLE_CHANGE_211006", trigger_count = 0 },
	{ config_id = 1211007, name = "GADGET_STATE_CHANGE_211007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_211007", action = "action_EVENT_GADGET_STATE_CHANGE_211007", trigger_count = 0 },
	{ config_id = 1211008, name = "TIME_AXIS_PASS_211008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_211008", action = "action_EVENT_TIME_AXIS_PASS_211008", trigger_count = 0 },
	{ config_id = 1211009, name = "VARIABLE_CHANGE_211009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_211009", action = "action_EVENT_VARIABLE_CHANGE_211009", trigger_count = 0 },
	{ config_id = 1211010, name = "GADGET_CREATE_211010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_211010", action = "action_EVENT_GADGET_CREATE_211010", trigger_count = 0 },
	-- 保底
	{ config_id = 1211011, name = "GROUP_LOAD_211011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_211011", trigger_count = 0 }
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
		gadgets = { 211001, 211002, 211003, 211005, 211012, 211013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_211006", "GADGET_STATE_CHANGE_211007", "TIME_AXIS_PASS_211008", "VARIABLE_CHANGE_211009", "GROUP_LOAD_211011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 211001, 211002, 211003, 211004, 211005, 211012, 211013 },
		regions = { },
		triggers = { "GADGET_CREATE_211010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_211006(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_211007(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_211007(context, evt)
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
function condition_EVENT_TIME_AXIS_PASS_211008(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_211008(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211009(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_211009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307211, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_211010(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 and defs.gadget_4 ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_211010(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_211011(context, evt)
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