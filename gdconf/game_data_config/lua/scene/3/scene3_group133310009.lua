-- 基础信息
local base_info = {
	group_id = 133310009
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
	{ config_id = 9005, gadget_id = 70330417, pos = { x = -2351.026, y = 121.183, z = 5024.365 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 9007, gadget_id = 70330416, pos = { x = -2350.979, y = 122.208, z = 5104.063 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7105324对话表现时机开门9005
	{ config_id = 1009008, name = "QUEST_FINISH_9008", event = EventType.EVENT_QUEST_FINISH, source = "7305324", condition = "", action = "action_EVENT_QUEST_FINISH_9008", trigger_count = 0 },
	-- 7105311开始时重置门9005
	{ config_id = 1009009, name = "QUEST_START_9009", event = EventType.EVENT_QUEST_START, source = "7305311", condition = "", action = "action_EVENT_QUEST_START_9009", trigger_count = 0 },
	-- 7105328对话表现时机开门9007
	{ config_id = 1009010, name = "QUEST_FINISH_9010", event = EventType.EVENT_QUEST_FINISH, source = "7305328", condition = "", action = "action_EVENT_QUEST_FINISH_9010", trigger_count = 0 },
	-- 7105325开始时重置门9007
	{ config_id = 1009011, name = "QUEST_START_9011", event = EventType.EVENT_QUEST_START, source = "7305325", condition = "", action = "action_EVENT_QUEST_START_9011", trigger_count = 0 },
	-- 9007开门保底
	{ config_id = 1009012, name = "QUEST_START_9012", event = EventType.EVENT_QUEST_START, source = "7305318", condition = "", action = "action_EVENT_QUEST_START_9012", trigger_count = 0 },
	-- 两个火种集齐开9007
	{ config_id = 1009017, name = "VARIABLE_CHANGE_9017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9017", action = "action_EVENT_VARIABLE_CHANGE_9017" },
	-- 保底开9007
	{ config_id = 1009018, name = "GROUP_LOAD_9018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9018", action = "action_EVENT_GROUP_LOAD_9018", trigger_count = 0 },
	-- 9005开门保底
	{ config_id = 1009019, name = "QUEST_START_9019", event = EventType.EVENT_QUEST_START, source = "7305312", condition = "", action = "action_EVENT_QUEST_START_9019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "torch", value = 0, no_refresh = true }
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
		gadgets = { 9005, 9007 },
		regions = { },
		triggers = { "QUEST_FINISH_9008", "QUEST_START_9009", "QUEST_FINISH_9010", "QUEST_START_9011", "QUEST_START_9012", "VARIABLE_CHANGE_9017", "GROUP_LOAD_9018", "QUEST_START_9019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_9008(context, evt)
	-- 将configid为 9005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9009(context, evt)
	-- 将configid为 9005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9010(context, evt)
	-- 将configid为 9007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9011(context, evt)
	-- 将configid为 9007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9012(context, evt)
	-- 将configid为 9007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"torch"为2
	if ScriptLib.GetGroupVariableValue(context, "torch") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310082, 82002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133310093, 93002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305312") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9019(context, evt)
	-- 将configid为 9005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"