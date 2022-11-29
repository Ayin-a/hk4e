-- 基础信息
local base_info = {
	group_id = 133008515
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
	{ config_id = 515001, gadget_id = 70900039, pos = { x = 1093.648, y = 538.823, z = -807.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.Action01, persistent = true, area_id = 10 },
	{ config_id = 515002, gadget_id = 70690001, pos = { x = 1084.204, y = 572.590, z = -815.424 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515003, gadget_id = 70690001, pos = { x = 1091.243, y = 550.148, z = -810.409 }, rot = { x = 270.000, y = 234.308, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 515004, gadget_id = 70690001, pos = { x = 1091.243, y = 558.469, z = -810.409 }, rot = { x = 270.000, y = 234.308, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 515006, gadget_id = 70690001, pos = { x = 1075.158, y = 572.590, z = -822.001 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515012, gadget_id = 70690017, pos = { x = 1091.243, y = 538.361, z = -810.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 515020, gadget_id = 70690001, pos = { x = 1064.084, y = 572.590, z = -830.052 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515021, gadget_id = 70690001, pos = { x = 1033.104, y = 572.590, z = -852.574 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515023, gadget_id = 70690001, pos = { x = 1026.303, y = 572.590, z = -857.519 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515024, gadget_id = 70690001, pos = { x = 1053.157, y = 572.590, z = -837.997 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 },
	{ config_id = 515026, gadget_id = 70690001, pos = { x = 1043.196, y = 572.590, z = -845.238 }, rot = { x = 0.000, y = 233.984, z = 359.842 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1515005, name = "TIMER_EVENT_515005", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_515005", trigger_count = 0 },
	{ config_id = 1515011, name = "GADGET_STATE_CHANGE_515011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_515011", action = "action_EVENT_GADGET_STATE_CHANGE_515011", trigger_count = 0 },
	{ config_id = 1515031, name = "GROUP_LOAD_515031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_515031", action = "action_EVENT_GROUP_LOAD_515031", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 515001 },
		regions = { },
		triggers = { "TIMER_EVENT_515005", "GADGET_STATE_CHANGE_515011", "GROUP_LOAD_515031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 515002, 515003, 515004, 515006, 515012, 515020, 515021, 515023, 515024, 515026 },
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

-- 触发操作
function action_EVENT_TIMER_EVENT_515005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008515, 2)
	
	-- 将configid为 515001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_515011(context, evt)
	-- 检测config_id为515001的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 515001 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_515011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008515, 2)
	
	-- 延迟60秒后,向groupId为：133008515的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008515, "delay", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_515031(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008515, 515002) then
	
	return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_515031(context, evt)
	-- 将configid为 515001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008515, "delay") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end