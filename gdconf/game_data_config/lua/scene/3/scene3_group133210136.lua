-- 基础信息
local base_info = {
	group_id = 133210136
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 133210136,
	gadget_1 = 136001,
	gadget_2 = 136002,
	gadget_3 = 136003,
	gadget_4 = 136005,
	gadget_chest = 136004
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
	{ config_id = 136001, gadget_id = 70900008, pos = { x = -3970.711, y = 137.262, z = -768.133 }, rot = { x = 345.871, y = 326.220, z = 15.088 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 136002, gadget_id = 70900008, pos = { x = -3968.311, y = 140.447, z = -778.974 }, rot = { x = 18.358, y = 329.701, z = 354.462 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 136003, gadget_id = 70900049, pos = { x = -3972.042, y = 129.589, z = -773.090 }, rot = { x = 1.997, y = 59.808, z = 359.873 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 },
	{ config_id = 136004, gadget_id = 70211101, pos = { x = -3964.184, y = 132.856, z = -773.266 }, rot = { x = 5.730, y = 77.151, z = 354.443 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 136005, gadget_id = 70900008, pos = { x = -3976.253, y = 139.139, z = -767.841 }, rot = { x = 356.461, y = 0.247, z = 356.100 }, level = 32, state = GadgetState.Action01, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1136006, name = "GADGET_STATE_CHANGE_136006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136006", action = "action_EVENT_GADGET_STATE_CHANGE_136006", trigger_count = 0 },
	{ config_id = 1136007, name = "TIMER_EVENT_136007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_136007", action = "action_EVENT_TIMER_EVENT_136007", trigger_count = 0 },
	{ config_id = 1136008, name = "VARIABLE_CHANGE_136008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_136008", action = "action_EVENT_VARIABLE_CHANGE_136008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 136009, gadget_id = 70330100, pos = { x = -3966.696, y = 131.580, z = -784.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 136001, 136002, 136003, 136005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_136006", "TIMER_EVENT_136007", "VARIABLE_CHANGE_136008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136006(context, evt)
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
function condition_EVENT_TIMER_EVENT_136007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_136007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_136008(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_136008(context, evt)
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