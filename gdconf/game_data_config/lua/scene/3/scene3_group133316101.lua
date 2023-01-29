-- 基础信息
local base_info = {
	group_id = 133316101
}

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
	{ config_id = 101001, gadget_id = 70310001, pos = { x = 471.059, y = 146.796, z = 6302.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 101002, gadget_id = 70310001, pos = { x = 441.318, y = 147.160, z = 6342.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 101003, gadget_id = 70310001, pos = { x = 493.349, y = 146.736, z = 6339.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 101008, gadget_id = 70330401, pos = { x = 473.553, y = 123.183, z = 6330.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 101009, gadget_id = 70330401, pos = { x = 459.412, y = 123.342, z = 6332.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 101010, gadget_id = 70330401, pos = { x = 465.793, y = 123.342, z = 6324.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101004, name = "GADGET_STATE_CHANGE_101004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101004", action = "action_EVENT_GADGET_STATE_CHANGE_101004" },
	{ config_id = 1101005, name = "GADGET_STATE_CHANGE_101005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101005", action = "action_EVENT_GADGET_STATE_CHANGE_101005" },
	{ config_id = 1101006, name = "GADGET_STATE_CHANGE_101006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101006", action = "action_EVENT_GADGET_STATE_CHANGE_101006" },
	{ config_id = 1101007, name = "VARIABLE_CHANGE_101007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101007", action = "action_EVENT_VARIABLE_CHANGE_101007", trigger_count = 3 },
	{ config_id = 1101011, name = "GADGET_STATE_CHANGE_101011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101011", action = "action_EVENT_GADGET_STATE_CHANGE_101011" },
	{ config_id = 1101012, name = "GADGET_STATE_CHANGE_101012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101012", action = "action_EVENT_GADGET_STATE_CHANGE_101012" },
	{ config_id = 1101013, name = "GADGET_STATE_CHANGE_101013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101013", action = "action_EVENT_GADGET_STATE_CHANGE_101013" },
	{ config_id = 1101014, name = "VARIABLE_CHANGE_101014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_101014", action = "action_EVENT_VARIABLE_CHANGE_101014", trigger_count = 3 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "count2", value = 0, no_refresh = true }
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
		gadgets = { 101001, 101002, 101003, 101008, 101009, 101010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101004", "GADGET_STATE_CHANGE_101005", "GADGET_STATE_CHANGE_101006", "VARIABLE_CHANGE_101007", "GADGET_STATE_CHANGE_101011", "GADGET_STATE_CHANGE_101012", "GADGET_STATE_CHANGE_101013", "VARIABLE_CHANGE_101014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101004(context, evt)
	if 101001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101004(context, evt)
	-- 针对当前group内变量名为 "count1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	if 101002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	-- 针对当前group内变量名为 "count1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	if 101003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101006(context, evt)
	-- 针对当前group内变量名为 "count1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count1"为3
	if ScriptLib.GetGroupVariableValue(context, "count1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325127") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 101008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 101009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 101010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101011(context, evt)
	if 101008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101011(context, evt)
	-- 针对当前group内变量名为 "count2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101012(context, evt)
	if 101009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101012(context, evt)
	-- 针对当前group内变量名为 "count2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_101013(context, evt)
	if 101010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101013(context, evt)
	-- 针对当前group内变量名为 "count2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_101014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count2"为3
	if ScriptLib.GetGroupVariableValue(context, "count2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_101014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325130") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end