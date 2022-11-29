-- 基础信息
local base_info = {
	group_id = 133301126
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {126002,126003,126004},
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
	{ config_id = 126001, gadget_id = 70310200, pos = { x = -406.644, y = 253.227, z = 3396.258 }, rot = { x = 0.000, y = 157.726, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126002, gadget_id = 70310200, pos = { x = -389.056, y = 253.871, z = 3405.864 }, rot = { x = 0.000, y = 96.625, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126003, gadget_id = 70310200, pos = { x = -375.690, y = 259.146, z = 3416.675 }, rot = { x = 0.000, y = 57.076, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126004, gadget_id = 70310200, pos = { x = -359.494, y = 263.155, z = 3407.131 }, rot = { x = 0.000, y = 180.722, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126005, gadget_id = 70211101, pos = { x = -356.699, y = 260.633, z = 3409.339 }, rot = { x = 4.553, y = 28.644, z = 17.202 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 126006, gadget_id = 70310198, pos = { x = -410.377, y = 248.323, z = 3396.292 }, rot = { x = 8.336, y = 358.550, z = 12.861 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126007, gadget_id = 70330255, pos = { x = -404.748, y = 253.419, z = 3397.476 }, rot = { x = 358.351, y = 63.567, z = 359.824 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126009, gadget_id = 70330255, pos = { x = -374.740, y = 259.605, z = 3416.026 }, rot = { x = 348.682, y = 119.468, z = 359.606 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 126015, gadget_id = 70310198, pos = { x = -369.432, y = 256.536, z = 3422.773 }, rot = { x = 10.571, y = 221.033, z = 358.648 }, level = 27, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126010, name = "GADGET_STATE_CHANGE_126010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126010", action = "action_EVENT_GADGET_STATE_CHANGE_126010", trigger_count = 0 },
	{ config_id = 1126011, name = "GADGET_STATE_CHANGE_126011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126011", action = "action_EVENT_GADGET_STATE_CHANGE_126011", trigger_count = 0 },
	{ config_id = 1126012, name = "VARIABLE_CHANGE_126012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_126012", trigger_count = 0 },
	{ config_id = 1126013, name = "VARIABLE_CHANGE_126013", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_126013", action = "action_EVENT_VARIABLE_CHANGE_126013", trigger_count = 0 },
	{ config_id = 1126014, name = "VARIABLE_CHANGE_126014", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_126014", action = "action_EVENT_VARIABLE_CHANGE_126014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 126008, gadget_id = 70330255, pos = { x = -387.486, y = 255.114, z = 3406.876 }, rot = { x = 344.100, y = 51.191, z = 358.638 }, level = 27, persistent = true, area_id = 22 }
	}
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
			{ config_id = 126001, state = 0 },
			{ config_id = 126006, state = 0 },
			{ config_id = 126015, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_126010" },
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
			{ config_id = 126002, state = 0 },
			{ config_id = 126003, state = 0 },
			{ config_id = 126004, state = 0 },
			{ config_id = 126007, state = 0 },
			{ config_id = 126009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_126011", "VARIABLE_CHANGE_126012", "VARIABLE_CHANGE_126013", "VARIABLE_CHANGE_126014" },
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
			{ config_id = 126001, state = 201 },
			{ config_id = 126005, state = 0 },
			{ config_id = 126006, state = 0 },
			{ config_id = 126015, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_126010(context, evt)
	if 126001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126010(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301126, 2, FlowSuiteOperatePolicy.COMPLETE)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126011(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126011(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_126012(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_126013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126013(context, evt)
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133301126, 1, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133301126, 2, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 将本组内变量名为 "trigger_output" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "trigger_output", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301126, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end