-- 基础信息
local base_info = {
	group_id = 240044003
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
	{ config_id = 3001, gadget_id = 70290140, pos = { x = -109.654, y = 1.373, z = -66.153 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70290145, pos = { x = -109.178, y = 7.473, z = -66.114 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70290142, pos = { x = -109.395, y = 3.384, z = -66.154 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70290144, pos = { x = -109.325, y = 2.902, z = -65.590 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70290144, pos = { x = -109.346, y = 4.121, z = -66.145 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70290143, pos = { x = -109.332, y = 2.887, z = -66.726 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70360001, pos = { x = -109.459, y = 2.488, z = -66.193 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003008, name = "TIMER_EVENT_3008", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_3008" },
	{ config_id = 1003009, name = "GADGET_STATE_CHANGE_3009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3009", action = "action_EVENT_GADGET_STATE_CHANGE_3009" },
	{ config_id = 1003010, name = "GADGET_STATE_CHANGE_3010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3010", action = "action_EVENT_GADGET_STATE_CHANGE_3010" },
	{ config_id = 1003011, name = "GADGET_STATE_CHANGE_3011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3011", action = "action_EVENT_GADGET_STATE_CHANGE_3011" },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012" }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3007 },
		regions = { },
		triggers = { "TIMER_EVENT_3008", "GADGET_STATE_CHANGE_3009", "GADGET_STATE_CHANGE_3010", "GADGET_STATE_CHANGE_3011", "SELECT_OPTION_3012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_3008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240044003, 3007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240044003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 3001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3009(context, evt)
	-- 改变指定group组240044003中， configid为3004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 3001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3010(context, evt)
	-- 改变指定group组240044003中， configid为3005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3011(context, evt)
	-- 检测config_id为3001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 3001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3011(context, evt)
	-- 改变指定group组240044003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1.5秒后,向groupId为：240044003的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240044003, "time1", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	-- 判断是gadgetid 3007 option_id 1
	if 3007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	-- 改变指定group组240044003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240044003中， configid为3003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240044004, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240044004, 3)
	
	-- 改变指定group组240044003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3006, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240044003中， configid为3004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240044003中， configid为3005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240044003, 3005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240044003 ；指定config：3007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240044003, 3007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end