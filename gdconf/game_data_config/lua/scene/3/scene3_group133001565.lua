-- 基础信息
local base_info = {
	group_id = 133001565
}

-- Trigger变量
local defs = {
	duration = 15,
	group_id = 133001565,
	gadget_sum = 6
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
	{ config_id = 565001, gadget_id = 70220005, pos = { x = 2020.111, y = 227.095, z = -1560.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 565002, gadget_id = 70350083, pos = { x = 2009.480, y = 221.245, z = -1563.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 565003, gadget_id = 70220005, pos = { x = 2020.648, y = 229.314, z = -1548.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 565004, gadget_id = 70220005, pos = { x = 2024.487, y = 229.031, z = -1579.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 565005, gadget_id = 70360001, pos = { x = 2009.489, y = 222.210, z = -1563.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 1 },
	{ config_id = 565012, gadget_id = 70220005, pos = { x = 1998.707, y = 226.409, z = -1579.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 565013, gadget_id = 70220005, pos = { x = 2027.998, y = 233.999, z = -1577.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 565014, gadget_id = 70220005, pos = { x = 2031.408, y = 231.088, z = -1550.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 565017, gadget_id = 70220042, pos = { x = 2009.480, y = 221.352, z = -1559.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1565006, name = "CHALLENGE_SUCCESS_565006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "874", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_565006" },
	{ config_id = 1565007, name = "CHALLENGE_FAIL_565007", event = EventType.EVENT_CHALLENGE_FAIL, source = "874", condition = "", action = "action_EVENT_CHALLENGE_FAIL_565007", trigger_count = 0 },
	{ config_id = 1565008, name = "GADGET_STATE_CHANGE_565008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_565008", action = "action_EVENT_GADGET_STATE_CHANGE_565008", trigger_count = 0 },
	{ config_id = 1565009, name = "ANY_GADGET_DIE_565009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "874" },
	{ config_id = 1565010, name = "GADGET_CREATE_565010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_565010", action = "action_EVENT_GADGET_CREATE_565010", trigger_count = 0 },
	{ config_id = 1565011, name = "SELECT_OPTION_565011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_565011", action = "action_EVENT_SELECT_OPTION_565011", trigger_count = 0 },
	{ config_id = 1565015, name = "GADGET_STATE_CHANGE_565015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_565015", action = "action_EVENT_GADGET_STATE_CHANGE_565015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 565002, 565005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_565006", "CHALLENGE_FAIL_565007", "GADGET_STATE_CHANGE_565008", "ANY_GADGET_DIE_565009", "GADGET_CREATE_565010", "SELECT_OPTION_565011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 565001, 565003, 565004, 565012, 565013, 565014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 565002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_565015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_565006(context, evt)
	-- 将configid为 565002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133001565, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_565007(context, evt)
	-- 将configid为 565002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001565, 2)
	
	-- 创建id为565005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 565005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_565008(context, evt)
	if 565002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_565008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 874, 201, defs.duration, 2, 874, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_565010(context, evt)
	if 565005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_565010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133001565, 565005, {40}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_565011(context, evt)
	-- 判断是gadgetid 565005 option_id 40
	if 565005 ~= evt.param1 then
		return false	
	end
	
	if 40 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_565011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 565002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_565015(context, evt)
	if 565017 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_565015(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001565, 1)
	
	return 0
end

require "TreasureMapEvent"