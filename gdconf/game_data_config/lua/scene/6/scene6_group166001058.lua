-- 基础信息
local base_info = {
	group_id = 166001058
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
	{ config_id = 58001, gadget_id = 70290291, pos = { x = 362.240, y = 186.292, z = 912.485 }, rot = { x = 359.821, y = 186.026, z = 356.738 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 58002, gadget_id = 70360326, pos = { x = 358.803, y = 187.468, z = 910.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 73, area_id = 300 },
	{ config_id = 58004, gadget_id = 70360002, pos = { x = 358.685, y = 186.291, z = 910.569 }, rot = { x = 3.010, y = 161.413, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 58005, gadget_id = 70290291, pos = { x = 361.706, y = 194.948, z = 914.492 }, rot = { x = 359.821, y = 186.026, z = 176.612 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 58006, gadget_id = 70290291, pos = { x = 362.304, y = 186.066, z = 915.939 }, rot = { x = 0.003, y = 186.029, z = 357.467 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "GADGET_STATE_CHANGE_58003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_58003", action = "action_EVENT_GADGET_STATE_CHANGE_58003" },
	{ config_id = 1058007, name = "TIME_AXIS_PASS_58007", event = EventType.EVENT_TIME_AXIS_PASS, source = "door", condition = "condition_EVENT_TIME_AXIS_PASS_58007", action = "action_EVENT_TIME_AXIS_PASS_58007" },
	{ config_id = 1058008, name = "TIME_AXIS_PASS_58008", event = EventType.EVENT_TIME_AXIS_PASS, source = "door", condition = "condition_EVENT_TIME_AXIS_PASS_58008", action = "action_EVENT_TIME_AXIS_PASS_58008" },
	{ config_id = 1058009, name = "GROUP_LOAD_58009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_58009", action = "action_EVENT_GROUP_LOAD_58009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "OPEN", value = 0, no_refresh = true }
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
		gadgets = { 58001, 58002, 58004, 58005, 58006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_58003", "TIME_AXIS_PASS_58007", "TIME_AXIS_PASS_58008", "GROUP_LOAD_58009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_58003(context, evt)
	if 58002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_58003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001058") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "OPEN" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "OPEN", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"door"，时间节点为{1,2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "door", {1,2}, false)
	
	
	-- 将configid为 58004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_58007(context, evt)
	if "door" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_58007(context, evt)
	-- 将configid为 58005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_58008(context, evt)
	if "door" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_58008(context, evt)
	-- 将configid为 58006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_58009(context, evt)
	-- 判断变量"OPEN"为1
	if ScriptLib.GetGroupVariableValue(context, "OPEN") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_58009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001058") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 58001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 58005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 58006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 58002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end