-- 基础信息
local base_info = {
	group_id = 133316040
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
	{ config_id = 40001, gadget_id = 70330401, pos = { x = 455.917, y = 267.076, z = 6314.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 40003, gadget_id = 70330401, pos = { x = 526.594, y = 257.248, z = 6350.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 30 },
	{ config_id = 40006, gadget_id = 70310001, pos = { x = 452.639, y = 277.930, z = 6317.439 }, rot = { x = 1.367, y = 0.597, z = 47.145 }, level = 32, area_id = 30 },
	{ config_id = 40008, gadget_id = 70310001, pos = { x = 510.897, y = 263.930, z = 6355.341 }, rot = { x = 25.456, y = 15.388, z = 61.769 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040002, name = "GADGET_STATE_CHANGE_40002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40002", action = "action_EVENT_GADGET_STATE_CHANGE_40002", trigger_count = 0 },
	{ config_id = 1040004, name = "GADGET_STATE_CHANGE_40004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40004", action = "action_EVENT_GADGET_STATE_CHANGE_40004" },
	{ config_id = 1040005, name = "VARIABLE_CHANGE_40005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_40005", action = "action_EVENT_VARIABLE_CHANGE_40005", trigger_count = 2 },
	{ config_id = 1040007, name = "GADGET_STATE_CHANGE_40007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40007", action = "action_EVENT_GADGET_STATE_CHANGE_40007" },
	{ config_id = 1040009, name = "GADGET_STATE_CHANGE_40009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40009", action = "action_EVENT_GADGET_STATE_CHANGE_40009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 40001, 40003, 40006, 40008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_40002", "GADGET_STATE_CHANGE_40004", "VARIABLE_CHANGE_40005", "GADGET_STATE_CHANGE_40007", "GADGET_STATE_CHANGE_40009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40002(context, evt)
	if 40001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40002(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为7323213 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 7323213, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40004(context, evt)
	if 40003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为7323213 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 7323213, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 133316040) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40005(context, evt)
	ScriptLib.SetGroupVariableValueByGroup(context, "Launch", 1, 133316089)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40007(context, evt)
	if 40006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40007(context, evt)
	-- 将configid为 40001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40009(context, evt)
	if 40008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40009(context, evt)
	-- 将configid为 40003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end