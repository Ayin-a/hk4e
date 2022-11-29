-- 基础信息
local base_info = {
	group_id = 155006172
}

-- DEFS_MISCS
function GadgetStateSwitcher(context,group_id,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, group_id, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, group_id, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, gadget_id, state[1])
	end 

end

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
	{ config_id = 172001, gadget_id = 70290281, pos = { x = 536.853, y = 137.316, z = -469.904 }, rot = { x = 0.000, y = 91.004, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 172002, gadget_id = 70360170, pos = { x = 540.503, y = 134.591, z = -474.346 }, rot = { x = 88.335, y = 180.000, z = 180.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1172003, name = "GROUP_LOAD_172003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172003", action = "action_EVENT_GROUP_LOAD_172003", trigger_count = 0 },
	{ config_id = 1172004, name = "SELECT_OPTION_172004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_172004", action = "action_EVENT_SELECT_OPTION_172004", trigger_count = 0 },
	{ config_id = 1172005, name = "TIME_AXIS_PASS_172005", event = EventType.EVENT_TIME_AXIS_PASS, source = "reset", condition = "", action = "action_EVENT_TIME_AXIS_PASS_172005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true }
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
		gadgets = { 172001, 172002 },
		regions = { },
		triggers = { "GROUP_LOAD_172003", "SELECT_OPTION_172004", "TIME_AXIS_PASS_172005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_172003(context, evt)
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155006172, 172002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_172004(context, evt)
	-- 判断是gadgetid 172002 option_id 7
	if 172002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_172004(context, evt)
			GadgetStateSwitcher(context,155006172,172001,{0,201})
			GadgetStateSwitcher(context,155006172,172002,{0,201})
			ScriptLib.DelWorktopOptionByGroupId(context, 155006172, 172002, 7)
			ScriptLib.InitTimeAxis(context, "reset", {2}, false)
			return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_172005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 0, 172002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end