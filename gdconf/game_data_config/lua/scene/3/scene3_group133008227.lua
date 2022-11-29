-- 基础信息
local base_info = {
	group_id = 133008227
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
	{ config_id = 227001, gadget_id = 70360124, pos = { x = 831.247, y = 329.814, z = -647.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 227002, gadget_id = 70211111, pos = { x = 836.370, y = 328.917, z = -661.510 }, rot = { x = 0.000, y = 331.628, z = 0.000 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 227003, gadget_id = 70211111, pos = { x = 819.924, y = 325.542, z = -637.510 }, rot = { x = 0.000, y = 156.870, z = 0.000 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 227005, gadget_id = 70310017, pos = { x = 823.207, y = 325.057, z = -657.629 }, rot = { x = 1.773, y = 359.876, z = 351.995 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227006, gadget_id = 70310017, pos = { x = 818.918, y = 325.296, z = -650.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227007, gadget_id = 70310017, pos = { x = 822.793, y = 325.301, z = -642.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227008, gadget_id = 70310017, pos = { x = 831.191, y = 325.353, z = -642.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227009, gadget_id = 70310017, pos = { x = 835.723, y = 325.381, z = -650.043 }, rot = { x = 359.106, y = 359.979, z = 2.684 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227010, gadget_id = 70310017, pos = { x = 831.609, y = 324.854, z = -657.820 }, rot = { x = 359.105, y = 359.986, z = 1.790 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 227011, gadget_id = 70720214, pos = { x = 827.362, y = 325.694, z = -658.885 }, rot = { x = 0.000, y = 269.004, z = 0.000 }, level = 30, route_id = 300800058, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 227012, gadget_id = 70720214, pos = { x = 819.668, y = 325.308, z = -654.616 }, rot = { x = 0.000, y = 329.335, z = 0.000 }, level = 30, route_id = 300800059, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 227013, gadget_id = 70720214, pos = { x = 819.788, y = 325.319, z = -645.999 }, rot = { x = 0.000, y = 33.338, z = 0.000 }, level = 30, route_id = 300800060, start_route = false, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 227014, shape = RegionShape.SPHERE, radius = 2, pos = { x = 827.512, y = 325.927, z = -659.159 }, area_id = 10 },
	{ config_id = 227015, shape = RegionShape.SPHERE, radius = 2, pos = { x = 819.771, y = 325.871, z = -654.646 }, area_id = 10 },
	{ config_id = 227016, shape = RegionShape.SPHERE, radius = 2, pos = { x = 819.901, y = 325.871, z = -645.673 }, area_id = 10 },
	{ config_id = 227049, shape = RegionShape.SPHERE, radius = 15, pos = { x = 826.460, y = 324.678, z = -649.696 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1227004, name = "ANY_GADGET_DIE_227004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_227004", action = "action_EVENT_ANY_GADGET_DIE_227004" },
	{ config_id = 1227014, name = "ENTER_REGION_227014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227014", action = "action_EVENT_ENTER_REGION_227014", trigger_count = 0 },
	{ config_id = 1227015, name = "ENTER_REGION_227015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227015", action = "action_EVENT_ENTER_REGION_227015", trigger_count = 0 },
	{ config_id = 1227016, name = "ENTER_REGION_227016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227016", action = "action_EVENT_ENTER_REGION_227016", trigger_count = 0 },
	{ config_id = 1227017, name = "PLATFORM_REACH_POINT_227017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227017", action = "action_EVENT_PLATFORM_REACH_POINT_227017", trigger_count = 0 },
	{ config_id = 1227018, name = "PLATFORM_REACH_POINT_227018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227018", action = "action_EVENT_PLATFORM_REACH_POINT_227018", trigger_count = 0 },
	{ config_id = 1227019, name = "PLATFORM_REACH_POINT_227019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227019", action = "action_EVENT_PLATFORM_REACH_POINT_227019", trigger_count = 0 },
	{ config_id = 1227020, name = "PLATFORM_REACH_POINT_227020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227020", action = "action_EVENT_PLATFORM_REACH_POINT_227020", trigger_count = 0 },
	{ config_id = 1227021, name = "PLATFORM_REACH_POINT_227021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227021", action = "action_EVENT_PLATFORM_REACH_POINT_227021", trigger_count = 0 },
	{ config_id = 1227022, name = "PLATFORM_REACH_POINT_227022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227022", action = "action_EVENT_PLATFORM_REACH_POINT_227022", trigger_count = 0 },
	{ config_id = 1227023, name = "PLATFORM_REACH_POINT_227023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227023", action = "action_EVENT_PLATFORM_REACH_POINT_227023", trigger_count = 0 },
	{ config_id = 1227024, name = "PLATFORM_REACH_POINT_227024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227024", action = "action_EVENT_PLATFORM_REACH_POINT_227024", trigger_count = 0 },
	{ config_id = 1227025, name = "PLATFORM_REACH_POINT_227025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227025", action = "action_EVENT_PLATFORM_REACH_POINT_227025", trigger_count = 0 },
	{ config_id = 1227026, name = "PLATFORM_REACH_POINT_227026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227026", action = "action_EVENT_PLATFORM_REACH_POINT_227026", trigger_count = 0 },
	{ config_id = 1227027, name = "PLATFORM_REACH_POINT_227027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227027", action = "action_EVENT_PLATFORM_REACH_POINT_227027", trigger_count = 0 },
	{ config_id = 1227028, name = "PLATFORM_REACH_POINT_227028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227028", action = "action_EVENT_PLATFORM_REACH_POINT_227028", trigger_count = 0 },
	{ config_id = 1227029, name = "PLATFORM_REACH_POINT_227029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227029", action = "action_EVENT_PLATFORM_REACH_POINT_227029", trigger_count = 0 },
	{ config_id = 1227030, name = "PLATFORM_REACH_POINT_227030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227030", action = "action_EVENT_PLATFORM_REACH_POINT_227030", trigger_count = 0 },
	{ config_id = 1227031, name = "PLATFORM_REACH_POINT_227031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227031", action = "action_EVENT_PLATFORM_REACH_POINT_227031", trigger_count = 0 },
	{ config_id = 1227032, name = "PLATFORM_REACH_POINT_227032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227032", action = "action_EVENT_PLATFORM_REACH_POINT_227032", trigger_count = 0 },
	{ config_id = 1227033, name = "PLATFORM_REACH_POINT_227033", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227033", action = "action_EVENT_PLATFORM_REACH_POINT_227033", trigger_count = 0 },
	{ config_id = 1227034, name = "PLATFORM_REACH_POINT_227034", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_227034", action = "action_EVENT_PLATFORM_REACH_POINT_227034", trigger_count = 0 },
	{ config_id = 1227035, name = "TIMER_EVENT_227035", event = EventType.EVENT_TIMER_EVENT, source = "gadget5", condition = "", action = "action_EVENT_TIMER_EVENT_227035", trigger_count = 0 },
	{ config_id = 1227036, name = "TIMER_EVENT_227036", event = EventType.EVENT_TIMER_EVENT, source = "gadget6", condition = "", action = "action_EVENT_TIMER_EVENT_227036", trigger_count = 0 },
	{ config_id = 1227037, name = "TIMER_EVENT_227037", event = EventType.EVENT_TIMER_EVENT, source = "gadget7", condition = "", action = "action_EVENT_TIMER_EVENT_227037", trigger_count = 0 },
	{ config_id = 1227038, name = "TIMER_EVENT_227038", event = EventType.EVENT_TIMER_EVENT, source = "gadget8", condition = "", action = "action_EVENT_TIMER_EVENT_227038", trigger_count = 0 },
	{ config_id = 1227039, name = "TIMER_EVENT_227039", event = EventType.EVENT_TIMER_EVENT, source = "gadget9", condition = "", action = "action_EVENT_TIMER_EVENT_227039", trigger_count = 0 },
	{ config_id = 1227040, name = "TIMER_EVENT_227040", event = EventType.EVENT_TIMER_EVENT, source = "gadget10", condition = "", action = "action_EVENT_TIMER_EVENT_227040", trigger_count = 0 },
	{ config_id = 1227041, name = "GADGET_STATE_CHANGE_227041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_227041", action = "action_EVENT_GADGET_STATE_CHANGE_227041" },
	{ config_id = 1227042, name = "GADGET_CREATE_227042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_227042", action = "action_EVENT_GADGET_CREATE_227042", trigger_count = 0 },
	{ config_id = 1227043, name = "VARIABLE_CHANGE_227043", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227043", action = "action_EVENT_VARIABLE_CHANGE_227043" },
	{ config_id = 1227044, name = "VARIABLE_CHANGE_227044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227044", action = "action_EVENT_VARIABLE_CHANGE_227044" },
	{ config_id = 1227045, name = "VARIABLE_CHANGE_227045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227045", action = "action_EVENT_VARIABLE_CHANGE_227045" },
	{ config_id = 1227046, name = "GROUP_LOAD_227046", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_227046", action = "action_EVENT_GROUP_LOAD_227046", trigger_count = 0 },
	{ config_id = 1227047, name = "VARIABLE_CHANGE_227047", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227047", action = "action_EVENT_VARIABLE_CHANGE_227047" },
	{ config_id = 1227048, name = "VARIABLE_CHANGE_227048", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_227048", action = "action_EVENT_VARIABLE_CHANGE_227048" },
	{ config_id = 1227049, name = "ENTER_REGION_227049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227049", action = "action_EVENT_ENTER_REGION_227049" }
}

-- 变量
variables = {
	{ config_id = 1, name = "tryTimes", value = 0, no_refresh = true },
	{ config_id = 2, name = "iceBreak", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		-- description = ,
		monsters = { },
		gadgets = { 227001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_227004", "GROUP_LOAD_227046" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 227005, 227006, 227007, 227008, 227009, 227010, 227011, 227012, 227013 },
		regions = { 227014, 227015, 227016 },
		triggers = { "ENTER_REGION_227014", "ENTER_REGION_227015", "ENTER_REGION_227016", "PLATFORM_REACH_POINT_227017", "PLATFORM_REACH_POINT_227018", "PLATFORM_REACH_POINT_227019", "PLATFORM_REACH_POINT_227020", "PLATFORM_REACH_POINT_227021", "PLATFORM_REACH_POINT_227022", "PLATFORM_REACH_POINT_227023", "PLATFORM_REACH_POINT_227024", "PLATFORM_REACH_POINT_227025", "PLATFORM_REACH_POINT_227026", "PLATFORM_REACH_POINT_227027", "PLATFORM_REACH_POINT_227028", "PLATFORM_REACH_POINT_227029", "PLATFORM_REACH_POINT_227030", "PLATFORM_REACH_POINT_227031", "PLATFORM_REACH_POINT_227032", "PLATFORM_REACH_POINT_227033", "PLATFORM_REACH_POINT_227034", "TIMER_EVENT_227035", "TIMER_EVENT_227036", "TIMER_EVENT_227037", "TIMER_EVENT_227038", "TIMER_EVENT_227039", "TIMER_EVENT_227040", "GADGET_STATE_CHANGE_227041", "VARIABLE_CHANGE_227043", "VARIABLE_CHANGE_227044", "VARIABLE_CHANGE_227045", "VARIABLE_CHANGE_227047", "VARIABLE_CHANGE_227048" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 227005, 227006, 227007, 227008, 227009, 227010 },
		regions = { },
		triggers = { "GADGET_CREATE_227042" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_227004(context, evt)
	if 227001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_227004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008227, 2)
	
	-- 将本组内变量名为 "iceBreak" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "iceBreak", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227014(context, evt)
	if evt.param1 ~= 227014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227014(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 227011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227015(context, evt)
	if evt.param1 ~= 227015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227015(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 227012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227016(context, evt)
	if evt.param1 ~= 227016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 227013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227017(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 2 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227017(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget5", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227018(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 4 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227018(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget6") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget6", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227019(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 6 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227019(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget7") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget7", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227020(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 8 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227020(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget8") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget8", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227021(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 10 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227021(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget9") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget9" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget9", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227022(context, evt)
	-- 判断是gadgetid 为 227011的移动平台，是否到达了300800058 的路线中的 12 点
	
	if 227011 ~= evt.param1 then
	  return false
	end
	
	if 300800058 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227022(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget10") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget10", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227023(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 12 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227023(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget5", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227024(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 2 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227024(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget6") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget6", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227025(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 4 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227025(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget7") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget7", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227026(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 6 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227026(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget8") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget8", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227027(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 8 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227027(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget9") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget9" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget9", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227028(context, evt)
	-- 判断是gadgetid 为 227012的移动平台，是否到达了300800059 的路线中的 10 点
	
	if 227012 ~= evt.param1 then
	  return false
	end
	
	if 300800059 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227028(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget10") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget10", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227029(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 10 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227029(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget5", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227030(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 12 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227030(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget6") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget6", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227031(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 2 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227031(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget7") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget7", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227032(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 4 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227032(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget8") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget8", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227033(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 6 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227033(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget9") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget9" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget9", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_227034(context, evt)
	-- 判断是gadgetid 为 227013的移动平台，是否到达了300800060 的路线中的 8 点
	
	if 227013 ~= evt.param1 then
	  return false
	end
	
	if 300800060 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_227034(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget10") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 227010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟2.8秒后,向groupId为：133008227的对象,请求一次调用,并将string参数："gadget10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008227, "gadget10", 2.8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227035(context, evt)
	-- 将configid为 227005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227036(context, evt)
	-- 将configid为 227006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227037(context, evt)
	-- 将configid为 227007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227038(context, evt)
	-- 将configid为 227008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227039(context, evt)
	-- 将configid为 227009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_227040(context, evt)
	-- 将configid为 227010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "tryTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tryTimes", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_227041(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227005) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227006) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227007) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227008) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227009) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008227, 227010) ~= GadgetState.GearStart then
	        return false
	end 
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_227041(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008227, monsters = {}, gadgets = {227011,227012,227013} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget6") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget7") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget8") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget9") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008227, "gadget10") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008324, monsters = {}, gadgets = {324003} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 调用提示id为 300822630 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822630) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008227, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_227042(context, evt)
	if 227005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_227042(context, evt)
	-- 将configid为 227005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 227010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_227043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_227043(context, evt)
	-- 调用提示id为 300822605 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822605) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_227044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为6
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_227044(context, evt)
	-- 调用提示id为 300822607 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822607) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_227045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为12
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_227045(context, evt)
	-- 调用提示id为 300822609 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822609) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_227046(context, evt)
	-- 判断变量"iceBreak"为1
	if ScriptLib.GetGroupVariableValue(context, "iceBreak") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_227046(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008227, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_227047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为18
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 18 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_227047(context, evt)
	-- 调用提示id为 300822609 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822609) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_227048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为24
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 24 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_227048(context, evt)
	-- 调用提示id为 300822609 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822609) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_227049(context, evt)
	if evt.param1 ~= 227049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227049(context, evt)
	-- 调用提示id为 300822622 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822622) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end