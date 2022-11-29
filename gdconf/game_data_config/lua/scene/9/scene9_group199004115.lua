-- 基础信息
local base_info = {
	group_id = 199004115
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {115001,115002,115003,115004,115005},
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
	{ config_id = 115001, gadget_id = 70900056, pos = { x = -313.560, y = 157.021, z = -687.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 115002, gadget_id = 70900056, pos = { x = -320.961, y = 158.336, z = -682.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 115003, gadget_id = 70900056, pos = { x = -318.421, y = 156.407, z = -692.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 115004, gadget_id = 70900056, pos = { x = -306.550, y = 156.771, z = -682.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 115005, gadget_id = 70900056, pos = { x = -304.216, y = 153.459, z = -692.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 115006, gadget_id = 70211111, pos = { x = -314.054, y = 157.863, z = -683.144 }, rot = { x = 359.640, y = 181.819, z = 4.806 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 115011, shape = RegionShape.SPHERE, radius = 12, pos = { x = -310.971, y = 156.453, z = -684.759 }, area_id = 400 },
	{ config_id = 115012, shape = RegionShape.SPHERE, radius = 12, pos = { x = -310.971, y = 156.453, z = -684.759 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1115007, name = "GADGET_STATE_CHANGE_115007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115007", action = "action_EVENT_GADGET_STATE_CHANGE_115007", trigger_count = 0 },
	{ config_id = 1115008, name = "VARIABLE_CHANGE_115008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_115008", trigger_count = 0 },
	{ config_id = 1115009, name = "VARIABLE_CHANGE_115009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_115009", action = "", trigger_count = 0 },
	{ config_id = 1115010, name = "VARIABLE_CHANGE_115010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_115010", action = "action_EVENT_VARIABLE_CHANGE_115010", trigger_count = 0 },
	{ config_id = 1115011, name = "ENTER_REGION_115011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115011", action = "action_EVENT_ENTER_REGION_115011", trigger_count = 0 },
	{ config_id = 1115012, name = "ENTER_REGION_115012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115012", action = "action_EVENT_ENTER_REGION_115012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true }
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
		gadgets = { 115001, 115002, 115003, 115004, 115005 },
		regions = { 115011, 115012 },
		triggers = { "GADGET_STATE_CHANGE_115007", "VARIABLE_CHANGE_115008", "VARIABLE_CHANGE_115009", "VARIABLE_CHANGE_115010", "ENTER_REGION_115011", "ENTER_REGION_115012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_115008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_115009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115010(context, evt)
	-- 将本组内变量名为 "dq" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dq", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为115006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 115006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115011(context, evt)
	if evt.param1 ~= 115011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"talkdq"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "talkdq", 199004116) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115011(context, evt)
	-- 将本组内变量名为 "talkmd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkmd", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "talkly" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkly", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "talkdq" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkdq", 0, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 1111362 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111362) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115012(context, evt)
	if evt.param1 ~= 115012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"talkdq"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "talkdq", 199004116) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115012(context, evt)
	-- 将本组内变量名为 "talkmd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkmd", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "talkly" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkly", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end