-- 基础信息
local base_info = {
	group_id = 133308088
}

-- Trigger变量
local defs = {
	group_id = 133308088,
	gadget_riddle_hint = 88001,
	gadget_riddle_1 = 88002,
	gadget_riddle_2 = 88003,
	gadget_riddle_3 = 88004,
	gadget_riddle_4 = 88005,
	gadget_chest = 88006
}

-- DEFS_MISCS
local markList = {88003,88005}

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
	{ config_id = 88001, gadget_id = 70330336, pos = { x = -2376.621, y = 44.224, z = 4242.047 }, rot = { x = 0.000, y = 225.212, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 88002, gadget_id = 70330335, pos = { x = -2362.925, y = 47.672, z = 4227.985 }, rot = { x = 0.000, y = 258.379, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 88003, gadget_id = 70330411, pos = { x = -2384.105, y = 45.805, z = 4234.090 }, rot = { x = 18.785, y = 317.500, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 88004, gadget_id = 70330335, pos = { x = -2381.349, y = 44.587, z = 4246.585 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 88005, gadget_id = 70330335, pos = { x = -2367.731, y = 46.576, z = 4249.735 }, rot = { x = 341.863, y = 14.839, z = 5.457 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 88006, gadget_id = 70211112, pos = { x = -2376.693, y = 44.673, z = 4242.059 }, rot = { x = 0.000, y = 134.720, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1088007, name = "GADGET_STATE_CHANGE_88007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88007", action = "action_EVENT_GADGET_STATE_CHANGE_88007", trigger_count = 0 },
	{ config_id = 1088008, name = "VARIABLE_CHANGE_88008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_88008", action = "action_EVENT_VARIABLE_CHANGE_88008", trigger_count = 0 },
	{ config_id = 1088009, name = "GROUP_LOAD_88009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_88009", trigger_count = 0 },
	-- 成功注目
	{ config_id = 1088010, name = "GADGET_STATE_CHANGE_88010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_88010", action = "action_EVENT_GADGET_STATE_CHANGE_88010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		gadgets = { 88001, 88002, 88003, 88004, 88005, 88006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_88007", "VARIABLE_CHANGE_88008", "GROUP_LOAD_88009", "GADGET_STATE_CHANGE_88010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_88008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_88009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_88010(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308088, 88006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_88010(context, evt)
	-- 改变指定group组133308258中， configid为258001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308258, 258001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-2360.184, y=48.62147, z=4246.94}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2360.184, y=48.62147, z=4246.94}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_1/Transparent_Mark"