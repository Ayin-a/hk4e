-- 基础信息
local base_info = {
	group_id = 133302527
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {527002,527003},
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
	{ config_id = 527001, gadget_id = 70310200, pos = { x = -215.475, y = 237.322, z = 2293.834 }, rot = { x = 0.000, y = 330.030, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 527002, gadget_id = 70310200, pos = { x = -224.749, y = 236.883, z = 2299.561 }, rot = { x = 0.000, y = 305.100, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 527003, gadget_id = 70310200, pos = { x = -203.768, y = 233.177, z = 2313.503 }, rot = { x = 0.000, y = 7.513, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 527005, gadget_id = 70211101, pos = { x = -195.921, y = 231.112, z = 2307.639 }, rot = { x = 0.000, y = 223.157, z = 350.382 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 527006, gadget_id = 70310198, pos = { x = -207.386, y = 234.441, z = 2298.477 }, rot = { x = 2.419, y = 331.255, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 527007, gadget_id = 70330255, pos = { x = -217.219, y = 237.018, z = 2294.254 }, rot = { x = 351.197, y = 312.629, z = 2.386 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 527008, gadget_id = 70330255, pos = { x = -218.968, y = 235.117, z = 2304.156 }, rot = { x = 359.791, y = 52.189, z = 344.936 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1527010, name = "GADGET_STATE_CHANGE_527010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_527010", action = "action_EVENT_GADGET_STATE_CHANGE_527010", trigger_count = 0 },
	{ config_id = 1527011, name = "GADGET_STATE_CHANGE_527011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_527011", action = "action_EVENT_GADGET_STATE_CHANGE_527011", trigger_count = 0 },
	{ config_id = 1527012, name = "VARIABLE_CHANGE_527012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_527012", trigger_count = 0 },
	{ config_id = 1527013, name = "VARIABLE_CHANGE_527013", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_527013", action = "action_EVENT_VARIABLE_CHANGE_527013", trigger_count = 0 },
	{ config_id = 1527014, name = "VARIABLE_CHANGE_527014", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_527014", action = "action_EVENT_VARIABLE_CHANGE_527014", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 3,
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
			{ config_id = 527001, state = 0 },
			{ config_id = 527006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_527010" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 527002, state = 0 },
			{ config_id = 527003, state = 0 },
			{ config_id = 527007, state = 0 },
			{ config_id = 527008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_527011", "VARIABLE_CHANGE_527012", "VARIABLE_CHANGE_527013", "VARIABLE_CHANGE_527014" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 527001, state = 201 },
			{ config_id = 527005, state = 0 },
			{ config_id = 527006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "sort", value = 0, no_refresh = false },
			{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
			{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
			{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_527010(context, evt)
	if 527001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_527010(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302527, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_527011(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_527011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_527012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = defs.gadget_array
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
function condition_EVENT_VARIABLE_CHANGE_527013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_527013(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133302527, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133302527, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 将本组内变量名为 "trigger_output" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "trigger_output", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_527014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_527014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133302527, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end