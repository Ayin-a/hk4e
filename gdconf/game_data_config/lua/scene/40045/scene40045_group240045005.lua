-- 基础信息
local base_info = {
	group_id = 240045005
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
	{ config_id = 5001, gadget_id = 70290140, pos = { x = 25.572, y = 77.038, z = -81.017 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70290145, pos = { x = 25.045, y = 83.199, z = -81.022 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70290142, pos = { x = 25.315, y = 79.034, z = -81.019 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70290144, pos = { x = 25.284, y = 78.567, z = -81.593 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70290144, pos = { x = 25.284, y = 79.752, z = -81.022 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70290143, pos = { x = 25.269, y = 78.570, z = -80.492 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70360001, pos = { x = 25.608, y = 77.985, z = -81.225 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, gadget_id = 70360288, pos = { x = 13.308, y = 76.994, z = -69.461 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, gadget_id = 70360170, pos = { x = 6.384, y = 78.595, z = -78.948 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5016, shape = RegionShape.SPHERE, radius = 10, pos = { x = 10.018, y = 77.706, z = -71.806 } }
}

-- 触发器
triggers = {
	{ config_id = 1005008, name = "TIMER_EVENT_5008", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_5008" },
	{ config_id = 1005009, name = "GADGET_STATE_CHANGE_5009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5009", action = "action_EVENT_GADGET_STATE_CHANGE_5009" },
	{ config_id = 1005010, name = "GADGET_STATE_CHANGE_5010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5010", action = "action_EVENT_GADGET_STATE_CHANGE_5010" },
	{ config_id = 1005011, name = "GADGET_STATE_CHANGE_5011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5011", action = "action_EVENT_GADGET_STATE_CHANGE_5011" },
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012" },
	{ config_id = 1005013, name = "VARIABLE_CHANGE_5013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5013", action = "action_EVENT_VARIABLE_CHANGE_5013" },
	{ config_id = 1005016, name = "ENTER_REGION_5016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5016", action = "action_EVENT_ENTER_REGION_5016" },
	{ config_id = 1005017, name = "SELECT_OPTION_5017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5017", action = "action_EVENT_SELECT_OPTION_5017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "point", value = 0, no_refresh = false }
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
		gadgets = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5014, 5015 },
		regions = { 5016 },
		triggers = { "TIMER_EVENT_5008", "GADGET_STATE_CHANGE_5009", "GADGET_STATE_CHANGE_5010", "GADGET_STATE_CHANGE_5011", "SELECT_OPTION_5012", "VARIABLE_CHANGE_5013", "ENTER_REGION_5016", "SELECT_OPTION_5017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_5008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045005, 5007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240045005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5009(context, evt)
	-- 检测config_id为5001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 5001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5009(context, evt)
	-- 改变指定group组240045005中， configid为5004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5010(context, evt)
	-- 检测config_id为5001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 5001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5010(context, evt)
	-- 改变指定group组240045005中， configid为5006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5011(context, evt)
	-- 检测config_id为5001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 5001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5011(context, evt)
	-- 改变指定group组240045005中， configid为5005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1.5秒后,向groupId为：240045005的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240045005, "time1", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5012(context, evt)
	-- 判断是gadgetid 5007 option_id 1
	if 5007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5012(context, evt)
	-- 改变指定group组240045005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240045005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 7)
	
	-- 改变指定group组240045005中， configid为5006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5006, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240045005中， configid为5005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240045005中， configid为5004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240045005 ；指定config：5007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240045005, 5007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"point"为3
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5013(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045006, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5016(context, evt)
	if evt.param1 ~= 5016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240045005, 5015, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5017(context, evt)
	-- 判断是gadgetid 5015 option_id 24
	if 5015 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5017(context, evt)
	-- 改变指定group组240045005中， configid为5014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 240045005 ；指定config：5015；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240045005, 5015, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240045005中， configid为5015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045005, 5015, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end