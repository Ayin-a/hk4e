-- 基础信息
local base_info = {
	group_id = 240018002
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
	{ config_id = 2001, gadget_id = 70360005, pos = { x = -80.446, y = 117.514, z = 111.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70360005, pos = { x = -90.747, y = 117.515, z = 102.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70360005, pos = { x = -104.193, y = 111.722, z = 43.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70690008, pos = { x = -27.237, y = 95.339, z = 86.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70690008, pos = { x = -66.173, y = 95.339, z = 111.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70690008, pos = { x = -93.274, y = 95.339, z = 93.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70360005, pos = { x = -91.958, y = 111.732, z = 31.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70360005, pos = { x = -22.582, y = 111.600, z = 60.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70360005, pos = { x = -22.185, y = 111.593, z = 74.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70690008, pos = { x = -101.895, y = 95.339, z = 56.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70690008, pos = { x = -78.252, y = 95.339, z = 33.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70690008, pos = { x = -31.556, y = 95.339, z = 52.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70690001, pos = { x = -99.224, y = 119.000, z = 83.088 }, rot = { x = 0.000, y = 7.257, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70690001, pos = { x = -102.675, y = 119.000, z = 68.737 }, rot = { x = 0.000, y = 7.686, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70690001, pos = { x = -63.366, y = 119.000, z = 35.017 }, rot = { x = 0.000, y = 257.663, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70690001, pos = { x = -45.074, y = 119.000, z = 42.989 }, rot = { x = 0.000, y = 236.857, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70690001, pos = { x = -38.239, y = 119.000, z = 100.780 }, rot = { x = 0.000, y = 131.161, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70690001, pos = { x = -51.278, y = 119.000, z = 109.104 }, rot = { x = 0.000, y = 283.295, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "GADGET_STATE_CHANGE_2007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2007", action = "action_EVENT_GADGET_STATE_CHANGE_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "GADGET_STATE_CHANGE_2009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2009", action = "action_EVENT_GADGET_STATE_CHANGE_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "GADGET_STATE_CHANGE_2010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2010", action = "action_EVENT_GADGET_STATE_CHANGE_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "GADGET_STATE_CHANGE_2011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2011", action = "action_EVENT_GADGET_STATE_CHANGE_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "GADGET_STATE_CHANGE_2012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2012", action = "action_EVENT_GADGET_STATE_CHANGE_2012", trigger_count = 0 },
	{ config_id = 1002025, name = "TIMER_EVENT_2025", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_2025", trigger_count = 0 },
	{ config_id = 1002026, name = "TIMER_EVENT_2026", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_2026", trigger_count = 0 },
	{ config_id = 1002027, name = "TIMER_EVENT_2027", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_2027", trigger_count = 0 },
	{ config_id = 1002028, name = "GADGET_STATE_CHANGE_2028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2028", action = "action_EVENT_GADGET_STATE_CHANGE_2028", trigger_count = 0 },
	{ config_id = 1002029, name = "GADGET_STATE_CHANGE_2029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2029", action = "action_EVENT_GADGET_STATE_CHANGE_2029", trigger_count = 0 },
	{ config_id = 1002030, name = "GADGET_STATE_CHANGE_2030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2030", action = "action_EVENT_GADGET_STATE_CHANGE_2030", trigger_count = 0 },
	{ config_id = 1002031, name = "GADGET_STATE_CHANGE_2031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2031", action = "action_EVENT_GADGET_STATE_CHANGE_2031", trigger_count = 0 },
	{ config_id = 1002032, name = "GADGET_STATE_CHANGE_2032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2032", action = "action_EVENT_GADGET_STATE_CHANGE_2032", trigger_count = 0 },
	{ config_id = 1002033, name = "GADGET_STATE_CHANGE_2033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2033", action = "action_EVENT_GADGET_STATE_CHANGE_2033", trigger_count = 0 }
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
		gadgets = { 2001, 2002, 2003, 2013, 2014, 2015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_2007", "GADGET_STATE_CHANGE_2008", "GADGET_STATE_CHANGE_2009", "GADGET_STATE_CHANGE_2010", "GADGET_STATE_CHANGE_2011", "GADGET_STATE_CHANGE_2012", "TIMER_EVENT_2025", "TIMER_EVENT_2026", "TIMER_EVENT_2027", "GADGET_STATE_CHANGE_2028", "GADGET_STATE_CHANGE_2029", "GADGET_STATE_CHANGE_2030", "GADGET_STATE_CHANGE_2031", "GADGET_STATE_CHANGE_2032", "GADGET_STATE_CHANGE_2033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2004, 2005, 2006, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024 },
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
function condition_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	if 2001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	-- 创建id为2004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	if 2015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 创建id为2004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	if 2014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2009(context, evt)
	-- 创建id为2017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	if 2013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2010(context, evt)
	-- 创建id为2017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	if 2002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2011(context, evt)
	-- 创建id为2006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2012(context, evt)
	-- 创建id为2006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2025(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2024 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2026(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2027(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240018002, EntityType.GADGET, 2022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2028(context, evt)
	if 2001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2028(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time1", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	if 2015 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2029(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time1", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
	if 2014 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2030(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time3", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2031(context, evt)
	if 2013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2031(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time3", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	if 2002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2032(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time2", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2033(context, evt)
	if 2003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2033(context, evt)
	-- 延迟8秒后,向groupId为：240018002的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240018002, "time2", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end