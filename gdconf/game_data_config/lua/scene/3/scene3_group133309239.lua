-- 基础信息
local base_info = {
	group_id = 133309239
}

-- Trigger变量
local defs = {
	group_id = 133309239,
	gadget_riddle_hint = 239001,
	gadget_riddle_1 = 239002,
	gadget_riddle_2 = 239003,
	gadget_riddle_3 = 239004,
	gadget_riddle_4 = 239005,
	gadget_chest = 239006
}

-- DEFS_MISCS
local markList = {239002,239003,239004,239005}

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
	{ config_id = 239001, gadget_id = 70330336, pos = { x = -2840.866, y = 177.621, z = 5803.008 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 239002, gadget_id = 70330411, pos = { x = -2829.854, y = 177.578, z = 5810.151 }, rot = { x = 349.592, y = 50.329, z = 350.373 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 239003, gadget_id = 70330411, pos = { x = -2837.355, y = 178.962, z = 5794.749 }, rot = { x = 12.654, y = 271.155, z = 351.183 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 239004, gadget_id = 70330411, pos = { x = -2850.375, y = 178.890, z = 5813.737 }, rot = { x = 351.010, y = 257.036, z = 8.354 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 239005, gadget_id = 70330411, pos = { x = -2851.077, y = 179.774, z = 5791.472 }, rot = { x = 342.733, y = 234.315, z = 355.381 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 239006, gadget_id = 70211151, pos = { x = -2840.865, y = 178.070, z = 5803.001 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 26, chest_drop_id = 21910085, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 239010, gadget_id = 70330315, pos = { x = -2846.273, y = 177.964, z = 5803.034 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 239011, gadget_id = 70330225, pos = { x = -2840.532, y = 203.201, z = 5793.142 }, rot = { x = 0.000, y = 326.106, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 239012, gadget_id = 70220103, pos = { x = -2840.639, y = 204.854, z = 5798.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239007, name = "GADGET_STATE_CHANGE_239007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239007", action = "action_EVENT_GADGET_STATE_CHANGE_239007", trigger_count = 0 },
	{ config_id = 1239008, name = "VARIABLE_CHANGE_239008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_239008", action = "action_EVENT_VARIABLE_CHANGE_239008", trigger_count = 0 },
	{ config_id = 1239009, name = "GROUP_LOAD_239009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_239009", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1239013, name = "GADGET_STATE_CHANGE_239013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239013", action = "action_EVENT_GADGET_STATE_CHANGE_239013" }
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
		gadgets = { 239001, 239002, 239003, 239004, 239005, 239006, 239010, 239011, 239012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_239007", "VARIABLE_CHANGE_239008", "GROUP_LOAD_239009", "GADGET_STATE_CHANGE_239013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_239007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_239008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_239008(context, evt)
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
function action_EVENT_GROUP_LOAD_239009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_239013(context, evt)
	-- 检测config_id为239010的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 239010 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"
require "V3_1/Transparent_Mark"