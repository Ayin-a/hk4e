-- 基础信息
local base_info = {
	group_id = 133222147
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
	{ config_id = 147001, gadget_id = 70330064, pos = { x = -4783.353, y = 201.345, z = -4799.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 35, area_id = 14 },
	{ config_id = 147002, gadget_id = 70900380, pos = { x = -4786.907, y = 207.190, z = -4800.570 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 147003, gadget_id = 70900380, pos = { x = -4792.962, y = 215.938, z = -4801.508 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 147004, gadget_id = 70900380, pos = { x = -4798.964, y = 224.960, z = -4802.436 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147005, name = "GADGET_STATE_CHANGE_147005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147005", action = "action_EVENT_GADGET_STATE_CHANGE_147005", trigger_count = 0 },
	{ config_id = 1147006, name = "GADGET_STATE_CHANGE_147006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147006", action = "action_EVENT_GADGET_STATE_CHANGE_147006", trigger_count = 0 },
	{ config_id = 1147007, name = "GADGET_CREATE_147007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147007", action = "action_EVENT_GADGET_CREATE_147007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1147008, name = "VARIABLE_CHANGE_147008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147008", action = "action_EVENT_VARIABLE_CHANGE_147008" }
	}
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
		gadgets = { 147001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147005", "GADGET_STATE_CHANGE_147006", "GADGET_CREATE_147007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 147002, 147003, 147004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_147005(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147006(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222147, 2)
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147007(context, evt)
	if 147001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147007(context, evt)
	-- 将configid为 147001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"