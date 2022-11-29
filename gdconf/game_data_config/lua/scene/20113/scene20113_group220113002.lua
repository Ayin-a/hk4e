-- 基础信息
local base_info = {
	group_id = 220113002
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
	{ config_id = 2001, gadget_id = 70290140, pos = { x = -21.196, y = 0.628, z = 52.153 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70290145, pos = { x = -21.810, y = 6.754, z = 52.174 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70290142, pos = { x = -21.417, y = 2.456, z = 52.157 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70290144, pos = { x = -21.452, y = 2.062, z = 51.535 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70290144, pos = { x = -21.452, y = 3.229, z = 52.163 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70290143, pos = { x = -21.452, y = 2.062, z = 52.746 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70360001, pos = { x = -21.408, y = 1.422, z = 52.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002008, name = "TIMER_EVENT_2008", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_2008" },
	{ config_id = 1002009, name = "GADGET_STATE_CHANGE_2009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2009", action = "action_EVENT_GADGET_STATE_CHANGE_2009" },
	{ config_id = 1002010, name = "GADGET_STATE_CHANGE_2010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2010", action = "action_EVENT_GADGET_STATE_CHANGE_2010" },
	{ config_id = 1002011, name = "GADGET_STATE_CHANGE_2011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2011", action = "action_EVENT_GADGET_STATE_CHANGE_2011" },
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012" }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007 },
		regions = { },
		triggers = { "TIMER_EVENT_2008", "GADGET_STATE_CHANGE_2009", "GADGET_STATE_CHANGE_2010", "GADGET_STATE_CHANGE_2011", "SELECT_OPTION_2012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_2008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220113002, 2007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组220113002中， configid为2003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	-- 改变指定group组220113002中， configid为2004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 2001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 改变指定group组220113002中， configid为2005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 检测config_id为2001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 2001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 改变指定group组220113002中， configid为2006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1.5秒后,向groupId为：220113002的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113002, "time3", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2007 option_id 1
	if 2007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2012(context, evt)
	-- 改变指定group组220113002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113002中， configid为2003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113002中， configid为2006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2006, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113002中， configid为2004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113002中， configid为2005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113002, 2005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220113002 ；指定config：2007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220113002, 2007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end