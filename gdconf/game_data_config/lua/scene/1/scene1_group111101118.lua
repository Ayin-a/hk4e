-- 基础信息
local base_info = {
	group_id = 111101118
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 111101118,
	gadget_1 = 118001,
	gadget_2 = 118002,
	gadget_3 = 118003,
	gadget_4 = 118005,
	gadget_chest = 118004
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
	{ config_id = 118001, gadget_id = 70900008, pos = { x = 2613.126, y = 252.559, z = -1246.144 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 118002, gadget_id = 70900008, pos = { x = 2623.426, y = 252.559, z = -1241.344 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 118003, gadget_id = 70900008, pos = { x = 2616.226, y = 252.559, z = -1239.144 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 118004, gadget_id = 70211111, pos = { x = 2618.426, y = 252.559, z = -1243.444 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 118005, gadget_id = 70900008, pos = { x = 2620.226, y = 252.559, z = -1248.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118006, name = "GADGET_STATE_CHANGE_118006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118006", action = "action_EVENT_GADGET_STATE_CHANGE_118006", trigger_count = 0 },
	{ config_id = 1118007, name = "TIMER_EVENT_118007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_118007", action = "action_EVENT_TIMER_EVENT_118007", trigger_count = 0 },
	{ config_id = 1118008, name = "VARIABLE_CHANGE_118008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_118008", action = "action_EVENT_VARIABLE_CHANGE_118008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = false },
			{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 118001, state = 901 },
			{ config_id = 118002, state = 901 },
			{ config_id = 118003, state = 901 },
			{ config_id = 118005, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118006", "TIMER_EVENT_118007", "VARIABLE_CHANGE_118008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 0, no_refresh = false },
			{ config_id = 2, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 118001, state = 201 },
			{ config_id = 118002, state = 201 },
			{ config_id = 118003, state = 201 },
			{ config_id = 118004, state = 0 },
			{ config_id = 118005, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "active_count", value = 4, no_refresh = false },
			{ config_id = 2, name = "isFinish", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118006(context, evt)
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
function condition_EVENT_TIMER_EVENT_118007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_118007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_118008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_118008(context, evt)
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
	
	
	
	ScriptLib.GoToFlowSuite(context, 111101118, 3)
	ScriptLib.SetGroupGadgetStateByConfigId(context, 111101114, 114004, GadgetState.Default)
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end