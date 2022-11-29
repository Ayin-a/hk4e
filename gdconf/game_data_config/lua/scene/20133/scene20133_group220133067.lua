-- 基础信息
local base_info = {
	group_id = 220133067
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {67001,67004,67003,67002},
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
	{ config_id = 67001, gadget_id = 70900007, pos = { x = 5092.206, y = 548.364, z = -1766.356 }, rot = { x = 26.719, y = 358.148, z = 21.666 }, level = 1, persistent = true },
	{ config_id = 67002, gadget_id = 70900007, pos = { x = 5085.801, y = 547.747, z = -1771.844 }, rot = { x = 20.168, y = -0.001, z = 22.987 }, level = 1, persistent = true },
	{ config_id = 67003, gadget_id = 70900007, pos = { x = 5093.983, y = 551.720, z = -1773.450 }, rot = { x = 13.575, y = 3.161, z = 18.157 }, level = 1, persistent = true },
	{ config_id = 67004, gadget_id = 70900007, pos = { x = 5087.074, y = 549.926, z = -1776.622 }, rot = { x = 16.100, y = 359.188, z = 18.643 }, level = 1, persistent = true },
	{ config_id = 67006, gadget_id = 70211111, pos = { x = 5090.319, y = 549.386, z = -1770.986 }, rot = { x = 2.043, y = 24.947, z = 27.368 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 67012, gadget_id = 70690029, pos = { x = 5073.315, y = 537.064, z = -1794.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 67005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 5100.805, y = 550.982, z = -1787.451 } }
}

-- 触发器
triggers = {
	{ config_id = 1067005, name = "ENTER_REGION_67005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_67005" },
	{ config_id = 1067007, name = "GADGET_STATE_CHANGE_67007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67007", action = "action_EVENT_GADGET_STATE_CHANGE_67007", trigger_count = 0 },
	{ config_id = 1067008, name = "VARIABLE_CHANGE_67008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_67008", trigger_count = 0 },
	{ config_id = 1067009, name = "VARIABLE_CHANGE_67009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_67009", action = "", trigger_count = 0 },
	-- 成功执行以及 通信AB
	{ config_id = 1067010, name = "VARIABLE_CHANGE_67010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_67010", action = "action_EVENT_VARIABLE_CHANGE_67010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1067011, name = "GADGET_CREATE_67011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_67011", action = "action_EVENT_GADGET_CREATE_67011", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 67001, 67002, 67003, 67004, 67012 },
		regions = { 67005 },
		triggers = { "ENTER_REGION_67005", "GADGET_STATE_CHANGE_67007", "VARIABLE_CHANGE_67008", "VARIABLE_CHANGE_67009", "VARIABLE_CHANGE_67010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_67005(context, evt)
	-- 将本组内变量名为 "next_index" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "next_index", 3, 220133066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_67008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "trigger_output", -1)
	       	elseif -1 == evt.param1 then
		--外接标记
	 		ScriptLib.SetGroupVariableValue(context, "trigger_output", 1)
	        	end
	        --还原标记
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_67010(context, evt)
	-- 创建id为67006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 67006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133027, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220133066, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end