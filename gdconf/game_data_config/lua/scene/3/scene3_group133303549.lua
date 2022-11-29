-- 基础信息
local base_info = {
	group_id = 133303549
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {549002,549003,549004,549015},
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
	{ config_id = 549001, gadget_id = 70310200, pos = { x = -1899.148, y = 329.140, z = 3741.279 }, rot = { x = 0.000, y = 247.188, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549002, gadget_id = 70310200, pos = { x = -1893.743, y = 320.016, z = 3726.512 }, rot = { x = 0.000, y = 248.416, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549003, gadget_id = 70310200, pos = { x = -1905.754, y = 325.207, z = 3724.315 }, rot = { x = 0.000, y = 77.194, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549004, gadget_id = 70310200, pos = { x = -1908.594, y = 320.220, z = 3761.127 }, rot = { x = 0.000, y = 272.344, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549005, gadget_id = 70211101, pos = { x = -1869.802, y = 323.388, z = 3739.304 }, rot = { x = 350.223, y = 196.689, z = 344.948 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 549006, gadget_id = 70310198, pos = { x = -1871.692, y = 322.903, z = 3739.703 }, rot = { x = 359.448, y = 217.245, z = 344.780 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549007, gadget_id = 70330255, pos = { x = -1898.304, y = 328.311, z = 3737.620 }, rot = { x = 33.828, y = 164.034, z = 347.972 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549008, gadget_id = 70330255, pos = { x = -1896.137, y = 321.348, z = 3725.852 }, rot = { x = 334.926, y = 258.151, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549009, gadget_id = 70330255, pos = { x = -1907.446, y = 326.091, z = 3728.458 }, rot = { x = 11.599, y = 345.374, z = 351.271 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549015, gadget_id = 70310200, pos = { x = -1889.311, y = 331.408, z = 3763.956 }, rot = { x = 0.000, y = 304.551, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549016, gadget_id = 70330255, pos = { x = -1906.892, y = 322.864, z = 3748.383 }, rot = { x = 10.361, y = 345.867, z = 329.337 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 549017, gadget_id = 70330255, pos = { x = -1903.715, y = 323.822, z = 3762.949 }, rot = { x = 324.855, y = 82.202, z = 353.969 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1549010, name = "GADGET_STATE_CHANGE_549010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_549010", action = "action_EVENT_GADGET_STATE_CHANGE_549010", trigger_count = 0 },
	{ config_id = 1549011, name = "GADGET_STATE_CHANGE_549011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_549011", action = "action_EVENT_GADGET_STATE_CHANGE_549011", trigger_count = 0 },
	{ config_id = 1549012, name = "VARIABLE_CHANGE_549012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_549012", trigger_count = 0 },
	{ config_id = 1549013, name = "VARIABLE_CHANGE_549013", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_549013", action = "action_EVENT_VARIABLE_CHANGE_549013", trigger_count = 0 },
	{ config_id = 1549014, name = "VARIABLE_CHANGE_549014", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_549014", action = "action_EVENT_VARIABLE_CHANGE_549014", trigger_count = 0 }
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
			{ config_id = 549001, state = 0 },
			{ config_id = 549006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_549010" },
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
			{ config_id = 549002, state = 0 },
			{ config_id = 549003, state = 0 },
			{ config_id = 549004, state = 0 },
			{ config_id = 549007, state = 0 },
			{ config_id = 549008, state = 0 },
			{ config_id = 549009, state = 0 },
			{ config_id = 549015, state = 0 },
			{ config_id = 549016, state = 0 },
			{ config_id = 549017, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_549011", "VARIABLE_CHANGE_549012", "VARIABLE_CHANGE_549013", "VARIABLE_CHANGE_549014" },
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
			{ config_id = 549001, state = 201 },
			{ config_id = 549005, state = 0 },
			{ config_id = 549006, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_549010(context, evt)
	if 549001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_549010(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303549, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_549011(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_549011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_549012(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_549013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_549013(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133303549, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133303549, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 将本组内变量名为 "trigger_output" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "trigger_output", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_549014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_549014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133303549, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end