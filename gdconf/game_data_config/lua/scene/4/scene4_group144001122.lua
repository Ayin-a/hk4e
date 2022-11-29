-- 基础信息
local base_info = {
	group_id = 144001122
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
	{ config_id = 122001, gadget_id = 70290056, pos = { x = -764.420, y = 120.000, z = 369.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122007, gadget_id = 70950081, pos = { x = -749.137, y = 120.000, z = 365.814 }, rot = { x = 0.000, y = 10.395, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122012, gadget_id = 70950081, pos = { x = -753.031, y = 120.000, z = 366.676 }, rot = { x = 0.000, y = 10.395, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122013, gadget_id = 70950081, pos = { x = -756.807, y = 120.000, z = 367.590 }, rot = { x = 0.000, y = 10.395, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122014, gadget_id = 70950081, pos = { x = -765.957, y = 120.000, z = 355.101 }, rot = { x = 0.000, y = 349.426, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122016, gadget_id = 70950081, pos = { x = -765.594, y = 120.000, z = 358.722 }, rot = { x = 0.000, y = 349.426, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122017, gadget_id = 70950081, pos = { x = -765.271, y = 119.996, z = 362.480 }, rot = { x = 0.000, y = 343.576, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122021, gadget_id = 70950081, pos = { x = -777.540, y = 120.000, z = 370.926 }, rot = { x = 0.000, y = 175.133, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122022, gadget_id = 70950081, pos = { x = -774.286, y = 120.000, z = 370.185 }, rot = { x = 0.000, y = 175.133, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122023, gadget_id = 70950081, pos = { x = -771.175, y = 120.000, z = 369.465 }, rot = { x = 0.000, y = 175.133, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 122027, gadget_id = 70950081, pos = { x = -761.603, y = 119.840, z = 383.138 }, rot = { x = 0.273, y = 277.890, z = 358.502 }, level = 1, area_id = 103 },
	{ config_id = 122028, gadget_id = 70950081, pos = { x = -762.292, y = 119.915, z = 379.555 }, rot = { x = 0.273, y = 277.890, z = 358.502 }, level = 1, area_id = 103 },
	{ config_id = 122029, gadget_id = 70950081, pos = { x = -763.034, y = 120.013, z = 375.858 }, rot = { x = 0.273, y = 277.890, z = 358.502 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 122002, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -764.320, y = 120.000, z = 368.964 }, area_id = 103 },
	{ config_id = 122004, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -764.320, y = 120.000, z = 368.964 }, area_id = 103 },
	{ config_id = 122006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -733.661, y = 93.942, z = 417.902 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1122002, name = "ENTER_REGION_122002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_122002", action = "action_EVENT_ENTER_REGION_122002", trigger_count = 0 },
	{ config_id = 1122003, name = "VARIABLE_CHANGE_122003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122003", action = "action_EVENT_VARIABLE_CHANGE_122003" },
	{ config_id = 1122004, name = "ENTER_REGION_122004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_122004", action = "action_EVENT_ENTER_REGION_122004", trigger_count = 0 },
	{ config_id = 1122006, name = "ENTER_REGION_122006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_122006", action = "action_EVENT_ENTER_REGION_122006", trigger_count = 0 },
	{ config_id = 1122008, name = "GROUP_LOAD_122008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_122008", action = "action_EVENT_GROUP_LOAD_122008", trigger_count = 0 },
	{ config_id = 1122009, name = "TIMER_EVENT_122009", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_122009", trigger_count = 0 },
	{ config_id = 1122010, name = "TIMER_EVENT_122010", event = EventType.EVENT_TIMER_EVENT, source = "2", condition = "", action = "action_EVENT_TIMER_EVENT_122010", trigger_count = 0 },
	{ config_id = 1122011, name = "TIMER_EVENT_122011", event = EventType.EVENT_TIMER_EVENT, source = "3", condition = "", action = "action_EVENT_TIMER_EVENT_122011", trigger_count = 0 },
	-- 第一次删除所有泡泡实体并且启动每组泡泡的第一个timeevent
	{ config_id = 1122015, name = "TIMER_EVENT_122015", event = EventType.EVENT_TIMER_EVENT, source = "start", condition = "", action = "action_EVENT_TIMER_EVENT_122015", trigger_count = 0 },
	{ config_id = 1122018, name = "TIMER_EVENT_122018", event = EventType.EVENT_TIMER_EVENT, source = "4", condition = "", action = "action_EVENT_TIMER_EVENT_122018", trigger_count = 0 },
	{ config_id = 1122019, name = "TIMER_EVENT_122019", event = EventType.EVENT_TIMER_EVENT, source = "5", condition = "", action = "action_EVENT_TIMER_EVENT_122019", trigger_count = 0 },
	{ config_id = 1122020, name = "TIMER_EVENT_122020", event = EventType.EVENT_TIMER_EVENT, source = "6", condition = "", action = "action_EVENT_TIMER_EVENT_122020", trigger_count = 0 },
	{ config_id = 1122024, name = "TIMER_EVENT_122024", event = EventType.EVENT_TIMER_EVENT, source = "7", condition = "", action = "action_EVENT_TIMER_EVENT_122024", trigger_count = 0 },
	{ config_id = 1122025, name = "TIMER_EVENT_122025", event = EventType.EVENT_TIMER_EVENT, source = "8", condition = "", action = "action_EVENT_TIMER_EVENT_122025", trigger_count = 0 },
	{ config_id = 1122026, name = "TIMER_EVENT_122026", event = EventType.EVENT_TIMER_EVENT, source = "9", condition = "", action = "action_EVENT_TIMER_EVENT_122026", trigger_count = 0 },
	{ config_id = 1122030, name = "TIMER_EVENT_122030", event = EventType.EVENT_TIMER_EVENT, source = "10", condition = "", action = "action_EVENT_TIMER_EVENT_122030", trigger_count = 0 },
	{ config_id = 1122031, name = "TIMER_EVENT_122031", event = EventType.EVENT_TIMER_EVENT, source = "11", condition = "", action = "action_EVENT_TIMER_EVENT_122031", trigger_count = 0 },
	{ config_id = 1122032, name = "TIMER_EVENT_122032", event = EventType.EVENT_TIMER_EVENT, source = "12", condition = "", action = "action_EVENT_TIMER_EVENT_122032", trigger_count = 0 },
	-- 第一次删除所有泡泡实体并且启动每组泡泡的第一个timeevent
	{ config_id = 1122033, name = "TIMER_EVENT_122033", event = EventType.EVENT_TIMER_EVENT, source = "start1", condition = "", action = "action_EVENT_TIMER_EVENT_122033", trigger_count = 0 },
	-- 第一次删除所有泡泡实体并且启动每组泡泡的第一个timeevent
	{ config_id = 1122034, name = "TIMER_EVENT_122034", event = EventType.EVENT_TIMER_EVENT, source = "start2", condition = "", action = "action_EVENT_TIMER_EVENT_122034", trigger_count = 0 },
	-- 第一次删除所有泡泡实体并且启动每组泡泡的第一个timeevent
	{ config_id = 1122035, name = "TIMER_EVENT_122035", event = EventType.EVENT_TIMER_EVENT, source = "start3", condition = "", action = "action_EVENT_TIMER_EVENT_122035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finishyishi", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1122005, name = "GROUP_LOAD_122005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_122005", action = "action_EVENT_GROUP_LOAD_122005", trigger_count = 0 }
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
		gadgets = { 122001 },
		regions = { 122002, 122004, 122006 },
		triggers = { "ENTER_REGION_122002", "VARIABLE_CHANGE_122003", "ENTER_REGION_122004", "ENTER_REGION_122006", "GROUP_LOAD_122008", "TIMER_EVENT_122015", "TIMER_EVENT_122033", "TIMER_EVENT_122034", "TIMER_EVENT_122035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 122007, 122012, 122013, 122014, 122016, 122017, 122021, 122022, 122023, 122027, 122028, 122029 },
		regions = { },
		triggers = { "TIMER_EVENT_122009", "TIMER_EVENT_122010", "TIMER_EVENT_122011", "TIMER_EVENT_122018", "TIMER_EVENT_122019", "TIMER_EVENT_122020", "TIMER_EVENT_122024", "TIMER_EVENT_122025", "TIMER_EVENT_122026", "TIMER_EVENT_122030", "TIMER_EVENT_122031", "TIMER_EVENT_122032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_122002(context, evt)
	if evt.param1 ~= 122002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishyishi"为0
	if ScriptLib.GetGroupVariableValue(context, "finishyishi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_122002(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=-726.158, y= 90.28499, z=406.1588}, radius = 2, rot = {x=0, y=0, z=1}}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finishyishi"为1
	if ScriptLib.GetGroupVariableValue(context, "finishyishi") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 122001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001122, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_122004(context, evt)
	if evt.param1 ~= 122004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishyishi"为0
	if ScriptLib.GetGroupVariableValue(context, "finishyishi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_122004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001123, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_122006(context, evt)
	if evt.param1 ~= 122006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishyishi"为0
	if ScriptLib.GetGroupVariableValue(context, "finishyishi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_122006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001123, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_122008(context, evt)
	-- 判断变量"finishyishi"为0
	if ScriptLib.GetGroupVariableValue(context, "finishyishi") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_122008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001122, 2)
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："start1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "start1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："start2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "start2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："start3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "start3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122009(context, evt)
	-- 创建id为122007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122010(context, evt)
	-- 创建id为122012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122011(context, evt)
	-- 创建id为122013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122018(context, evt)
	-- 创建id为122014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "5", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122019(context, evt)
	-- 创建id为122016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "6", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122020(context, evt)
	-- 创建id为122017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122024(context, evt)
	-- 创建id为122021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "8", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122025(context, evt)
	-- 创建id为122022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："9" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "9", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122026(context, evt)
	-- 创建id为122023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "7", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122030(context, evt)
	-- 创建id为122027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："11" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "11", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122029 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122031(context, evt)
	-- 创建id为122028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："12" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "12", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122032(context, evt)
	-- 创建id为122029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 122029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "10", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122033(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122034(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122021 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122023 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "7", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_122035(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122027 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122028 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001122, EntityType.GADGET, 122029 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 延迟1秒后,向groupId为：144001122的对象,请求一次调用,并将string参数："10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001122, "10", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end