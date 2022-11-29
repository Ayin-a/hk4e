-- 基础信息
local base_info = {
	group_id = 133213495
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
	{ config_id = 495001, gadget_id = 70330064, pos = { x = -3373.794, y = 223.376, z = -3710.373 }, rot = { x = 351.982, y = 0.224, z = 356.800 }, level = 27, state = GadgetState.GearStop, interact_id = 35, area_id = 12 },
	{ config_id = 495002, gadget_id = 70900380, pos = { x = -3372.791, y = 230.382, z = -3706.952 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 495003, gadget_id = 70900380, pos = { x = -3372.883, y = 239.035, z = -3704.566 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 495004, gadget_id = 70900380, pos = { x = -3373.806, y = 242.561, z = -3696.039 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1495005, name = "GADGET_STATE_CHANGE_495005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495005", action = "action_EVENT_GADGET_STATE_CHANGE_495005", trigger_count = 0 },
	{ config_id = 1495006, name = "GADGET_STATE_CHANGE_495006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_495006", action = "action_EVENT_GADGET_STATE_CHANGE_495006", trigger_count = 0 },
	{ config_id = 1495007, name = "GADGET_CREATE_495007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_495007", action = "action_EVENT_GADGET_CREATE_495007" },
	{ config_id = 1495008, name = "VARIABLE_CHANGE_495008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_495008", action = "action_EVENT_VARIABLE_CHANGE_495008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 495001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_495005", "GADGET_STATE_CHANGE_495006", "GADGET_CREATE_495007", "VARIABLE_CHANGE_495008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 495002, 495003, 495004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_495005(context, evt)
	if 495001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213495, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
	if 495001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_495006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213495, 2)
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_495007(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	if 495001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_495007(context, evt)
	-- 将configid为 495001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 495001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_495008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_495008(context, evt)
	-- 将configid为 495001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 495001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"