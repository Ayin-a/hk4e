-- 基础信息
local base_info = {
	group_id = 133210002
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {2001,2002,2003,2004},
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
	{ config_id = 2001, gadget_id = 70900008, pos = { x = -3784.374, y = 202.389, z = -1318.720 }, rot = { x = 356.307, y = 130.889, z = 1.532 }, level = 30, state = GadgetState.GearStop, persistent = true, mark_flag = 1, area_id = 17 },
	{ config_id = 2002, gadget_id = 70900008, pos = { x = -3791.639, y = 202.075, z = -1327.154 }, rot = { x = 9.802, y = 203.726, z = 357.543 }, level = 30, state = GadgetState.GearStop, persistent = true, mark_flag = 2, area_id = 17 },
	{ config_id = 2003, gadget_id = 70900008, pos = { x = -3788.010, y = 201.463, z = -1334.385 }, rot = { x = 3.764, y = 128.608, z = 353.881 }, level = 30, state = GadgetState.GearStop, persistent = true, mark_flag = 3, area_id = 17 },
	{ config_id = 2004, gadget_id = 70900008, pos = { x = -3772.550, y = 201.857, z = -1326.231 }, rot = { x = 356.369, y = 89.114, z = 356.486 }, level = 30, state = GadgetState.GearStop, persistent = true, mark_flag = 4, area_id = 17 },
	{ config_id = 2005, gadget_id = 70330076, pos = { x = -3785.032, y = 202.115, z = -1326.639 }, rot = { x = 0.000, y = 142.041, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 2015, gadget_id = 70211121, pos = { x = -3777.816, y = 202.560, z = -1326.179 }, rot = { x = 1.144, y = 233.148, z = 357.314 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 2017, gadget_id = 70900008, pos = { x = -3784.374, y = 202.389, z = -1318.720 }, rot = { x = 356.307, y = 130.889, z = 1.532 }, level = 30, state = GadgetState.GearStart, persistent = true, mark_flag = 1, area_id = 17 },
	{ config_id = 2018, gadget_id = 70900008, pos = { x = -3791.639, y = 202.075, z = -1327.154 }, rot = { x = 9.802, y = 203.726, z = 357.543 }, level = 30, state = GadgetState.GearStart, persistent = true, mark_flag = 2, area_id = 17 },
	{ config_id = 2019, gadget_id = 70900008, pos = { x = -3788.010, y = 201.463, z = -1334.385 }, rot = { x = 3.764, y = 128.608, z = 353.881 }, level = 30, state = GadgetState.GearStart, persistent = true, mark_flag = 3, area_id = 17 },
	{ config_id = 2020, gadget_id = 70900008, pos = { x = -3772.550, y = 201.857, z = -1326.231 }, rot = { x = 356.369, y = 89.114, z = 356.486 }, level = 30, state = GadgetState.GearStart, persistent = true, mark_flag = 4, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 12, pos = { x = -3782.267, y = 201.301, z = -1327.848 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "GADGET_STATE_CHANGE_2007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2007", action = "action_EVENT_GADGET_STATE_CHANGE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "VARIABLE_CHANGE_2008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "VARIABLE_CHANGE_2009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_2009", action = "", trigger_count = 0 },
	{ config_id = 1002010, name = "VARIABLE_CHANGE_2010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_2010", action = "action_EVENT_VARIABLE_CHANGE_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "GROUP_LOAD_2011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2011", action = "action_EVENT_GROUP_LOAD_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "VARIABLE_CHANGE_2013", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_2013", action = "action_EVENT_VARIABLE_CHANGE_2013", trigger_count = 0 },
	{ config_id = 1002014, name = "GROUP_LOAD_2014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2014", action = "action_EVENT_GROUP_LOAD_2014", trigger_count = 0 },
	{ config_id = 1002016, name = "GROUP_LOAD_2016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2016", action = "action_EVENT_GROUP_LOAD_2016", trigger_count = 0 },
	-- 按顺序解锁方碑
	{ config_id = 1002021, name = "TIME_AXIS_PASS_2021", event = EventType.EVENT_TIME_AXIS_PASS, source = "Thunder", condition = "condition_EVENT_TIME_AXIS_PASS_2021", action = "action_EVENT_TIME_AXIS_PASS_2021", trigger_count = 0 },
	-- 按顺序解锁方碑
	{ config_id = 1002022, name = "TIME_AXIS_PASS_2022", event = EventType.EVENT_TIME_AXIS_PASS, source = "Thunder", condition = "condition_EVENT_TIME_AXIS_PASS_2022", action = "action_EVENT_TIME_AXIS_PASS_2022", trigger_count = 0 },
	-- 按顺序解锁方碑
	{ config_id = 1002023, name = "TIME_AXIS_PASS_2023", event = EventType.EVENT_TIME_AXIS_PASS, source = "Thunder", condition = "condition_EVENT_TIME_AXIS_PASS_2023", action = "action_EVENT_TIME_AXIS_PASS_2023", trigger_count = 0 },
	-- 按顺序解锁方碑
	{ config_id = 1002024, name = "TIME_AXIS_PASS_2024", event = EventType.EVENT_TIME_AXIS_PASS, source = "Thunder", condition = "condition_EVENT_TIME_AXIS_PASS_2024", action = "action_EVENT_TIME_AXIS_PASS_2024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true },
	{ config_id = 5, name = "GadgetState", value = 0, no_refresh = true },
	{ config_id = 6, name = "Success", value = 0, no_refresh = true }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005 },
		regions = { 2006 },
		triggers = { "ENTER_REGION_2006", "GADGET_STATE_CHANGE_2007", "VARIABLE_CHANGE_2008", "VARIABLE_CHANGE_2009", "VARIABLE_CHANGE_2010", "VARIABLE_CHANGE_2012", "VARIABLE_CHANGE_2013", "GROUP_LOAD_2014", "GROUP_LOAD_2016", "TIME_AXIS_PASS_2021", "TIME_AXIS_PASS_2022", "TIME_AXIS_PASS_2023", "TIME_AXIS_PASS_2024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2005, 2015, 2017, 2018, 2019, 2020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7006, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_2008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_2009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6055, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 创建id为2015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210427, 2)
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2011(context, evt)
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2011(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2012(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"Thunder"，时间节点为{3,5,7,9}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Thunder", {3,5,7,9}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2013(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"Thunder"的时间轴
	ScriptLib.EndTimeAxis(context, "Thunder")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2014(context, evt)
	-- 判断变量"Success"为0
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2014(context, evt)
	-- 将configid为 2005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "GadgetState" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GadgetState", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2016(context, evt)
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133210002, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2021(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2021(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2022(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2022(context, evt)
	-- 将configid为 2002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2023(context, evt)
	if evt.param1 ~= 3 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2023(context, evt)
	-- 将configid为 2003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2024(context, evt)
	if evt.param1 ~= 4 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2024(context, evt)
	-- 将configid为 2004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end