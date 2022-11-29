-- 基础信息
local base_info = {
	group_id = 111101059
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {59001,59002,59003,59004,59005},
	reset_gear_list = {}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

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
	{ config_id = 59001, gadget_id = 70900056, pos = { x = 2791.482, y = 262.211, z = -1687.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59002, gadget_id = 70900056, pos = { x = 2797.614, y = 262.366, z = -1688.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59003, gadget_id = 70900056, pos = { x = 2803.183, y = 262.646, z = -1691.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59004, gadget_id = 70900056, pos = { x = 2808.545, y = 263.093, z = -1696.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 59005, gadget_id = 70900056, pos = { x = 2810.821, y = 263.716, z = -1702.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059006, name = "GADGET_STATE_CHANGE_59006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59006", action = "action_EVENT_GADGET_STATE_CHANGE_59006", trigger_count = 0 },
	{ config_id = 1059007, name = "VARIABLE_CHANGE_59007", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_59007", trigger_count = 0 },
	{ config_id = 1059008, name = "VARIABLE_CHANGE_59008", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_59008", action = "action_EVENT_VARIABLE_CHANGE_59008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
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
		gadgets = { 59001, 59002, 59003, 59004, 59005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59006", "VARIABLE_CHANGE_59007", "VARIABLE_CHANGE_59008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59006(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59006(context, evt)
	if max_bit > 9 or max_bit <= 1 then
		return -1
	end
	if evt.param1 == defs.active_step then
		--操作顺序入栈
		for i = 1,max_bit do
			if defs.gadget_array[i] == evt.param2 then
				v = ScriptLib.GetGroupVariableValue(context, "sort")
				v = 10*v + i
				ScriptLib.SetGroupVariableValue(context, "sort", v)
				break 
			end
			if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
				ScriptLib.SetGroupVariableValue(context, "v_error", 1)
				v = 10*v
			end
		end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
		v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
		--v_error有问题时直接清空栈并重置
		if 0 == v_error then
			for i=max_bit,1,-1 do
				if v%10 ~= i then
					v_error = 1
					break
				end
				v = math.floor(v/10)
			end
		end
		v = 0
		if v_error ~= 1 then
			v_error = -1
		end
		ScriptLib.SetGroupVariableValue(context, "sort", v) 
		ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
		ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then
		return -1
	end
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
			defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	else
		--外接标记
		ScriptLib.ChangeGroupVariableValue(context, "trigger_output", 1)
	end
	--还原标记
	ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_59008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 and evt.param1 ~= evt.param2 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59008(context, evt)
	ScriptLib.PrintLog("## trigger_output="..evt.param1)
	ScriptLib.SetGroupDead(context, 0)
	return 0
end