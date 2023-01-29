-- 基础信息
local base_info = {
	group_id = 199004114
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {114001,114002,114003,114004,114005},
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
	{ config_id = 114001, gadget_id = 70900039, pos = { x = -372.126, y = 225.513, z = -618.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 400 },
	{ config_id = 114002, gadget_id = 70900039, pos = { x = -358.428, y = 227.158, z = -627.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 400 },
	{ config_id = 114003, gadget_id = 70900039, pos = { x = -377.332, y = 225.839, z = -630.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 400 },
	{ config_id = 114004, gadget_id = 70900039, pos = { x = -357.863, y = 226.413, z = -621.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 400 },
	{ config_id = 114005, gadget_id = 70900039, pos = { x = -366.061, y = 227.165, z = -634.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 400 },
	{ config_id = 114006, gadget_id = 70211111, pos = { x = -368.010, y = 226.819, z = -627.454 }, rot = { x = 0.000, y = 14.563, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 114013, shape = RegionShape.SPHERE, radius = 12, pos = { x = -367.362, y = 225.910, z = -623.183 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1114007, name = "GADGET_STATE_CHANGE_114007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114007", action = "action_EVENT_GADGET_STATE_CHANGE_114007", trigger_count = 0 },
	{ config_id = 1114008, name = "VARIABLE_CHANGE_114008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_114008", trigger_count = 0 },
	{ config_id = 1114009, name = "VARIABLE_CHANGE_114009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_114009", action = "", trigger_count = 0 },
	{ config_id = 1114010, name = "VARIABLE_CHANGE_114010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_114010", action = "action_EVENT_VARIABLE_CHANGE_114010", trigger_count = 0 },
	{ config_id = 1114011, name = "GROUP_LOAD_114011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_114011", trigger_count = 0 },
	{ config_id = 1114012, name = "VARIABLE_CHANGE_114012", event = EventType.EVENT_VARIABLE_CHANGE, source = "lock", condition = "", action = "action_EVENT_VARIABLE_CHANGE_114012", trigger_count = 0 },
	{ config_id = 1114013, name = "ENTER_REGION_114013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_114013", action = "action_EVENT_ENTER_REGION_114013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true },
	{ config_id = 6, name = "lock", value = 0, no_refresh = true }
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
		gadgets = { 114001, 114002, 114003, 114004, 114005 },
		regions = { 114013 },
		triggers = { "GADGET_STATE_CHANGE_114007", "VARIABLE_CHANGE_114008", "VARIABLE_CHANGE_114009", "VARIABLE_CHANGE_114010", "GROUP_LOAD_114011", "VARIABLE_CHANGE_114012", "ENTER_REGION_114013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_114008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_114009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_114010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_114010(context, evt)
	-- 创建id为114006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 114006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "md" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "md", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_114011(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "dq", 199004116) == 1 and ScriptLib.GetGroupVariableValueByGroup(context, "md", 199004116) == 0 then
		ScriptLib.SetGadgetStateByConfigId(context,114001, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114004, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114005, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_114012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "lock") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,114001, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114002, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114003, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114004, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,114005, GadgetState.Default)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_114013(context, evt)
	if evt.param1 ~= 114013 then return false end
	
	-- 判断变量"talkmd"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "talkmd", 199004116) ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_114013(context, evt)
	-- 将本组内变量名为 "talkmd" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkmd", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "talkdq" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkdq", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "talkly" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "talkly", 1, 199004116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 调用提示id为 1111361 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end