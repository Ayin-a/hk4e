-- 基础信息
local base_info = {
	group_id = 220111001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1011, monster_id = 25050301, pos = { x = 4.301, y = 25.983, z = 146.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360282, pos = { x = 4.333, y = 1.777, z = 150.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 8, start_route = false, persistent = true },
	{ config_id = 1006, gadget_id = 70290141, pos = { x = 4.430, y = 0.015, z = 105.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360001, pos = { x = 4.460, y = 0.015, z = 105.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 40.000 }, pos = { x = 4.330, y = 3.223, z = 123.802 } },
	{ config_id = 1010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 4.564, y = 4.087, z = 149.465 } },
	{ config_id = 1012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 56.956, y = 25.611, z = 76.274 } },
	{ config_id = 1013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 4.564, y = 4.087, z = 149.465 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "TIMER_EVENT_1002", event = EventType.EVENT_TIMER_EVENT, source = "timer2", condition = "", action = "action_EVENT_TIMER_EVENT_1002", trigger_count = 0 },
	{ config_id = 1001003, name = "PLATFORM_REACH_POINT_1003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1003", action = "action_EVENT_PLATFORM_REACH_POINT_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "PLATFORM_REACH_POINT_1004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_1004", action = "action_EVENT_PLATFORM_REACH_POINT_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "GADGET_STATE_CHANGE_1005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1005", action = "action_EVENT_GADGET_STATE_CHANGE_1005", trigger_count = 0 },
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	{ config_id = 1001008, name = "SELECT_OPTION_1008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1008", action = "action_EVENT_SELECT_OPTION_1008" },
	{ config_id = 1001010, name = "ENTER_REGION_1010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1010", action = "action_EVENT_ENTER_REGION_1010" },
	{ config_id = 1001012, name = "ENTER_REGION_1012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1012", action = "action_EVENT_ENTER_REGION_1012" },
	{ config_id = 1001013, name = "ENTER_REGION_1013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1013", action = "action_EVENT_ENTER_REGION_1013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "point", value = 0, no_refresh = false },
	{ config_id = 2, name = "point3", value = 0, no_refresh = false }
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
		monsters = { 1011 },
		gadgets = { 1001, 1006, 1009 },
		regions = { 1007, 1010, 1012, 1013 },
		triggers = { "TIMER_EVENT_1002", "PLATFORM_REACH_POINT_1003", "PLATFORM_REACH_POINT_1004", "GADGET_STATE_CHANGE_1005", "ENTER_REGION_1007", "SELECT_OPTION_1008", "ENTER_REGION_1010", "ENTER_REGION_1012", "ENTER_REGION_1013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_1002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1001, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_1003(context, evt)
	-- 判断是gadgetid 为 1001的移动平台，是否到达了8 的路线中的 1 点
	
	if 1001 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_1003(context, evt)
	-- 延迟2秒后,向groupId为：220111001的对象,请求一次调用,并将string参数："timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220111001, "timer2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_1004(context, evt)
	-- 判断是gadgetid 为 1001的移动平台，是否到达了10 的路线中的 1 点
	
	if 1001 ~= evt.param1 then
	  return false
	end
	
	if 10 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_1004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 1001, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 改变指定group组220111001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1005(context, evt)
	-- 检测config_id为1001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 1001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111001, 1009, {73}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1008(context, evt)
	-- 判断是gadgetid 1009 option_id 73
	if 1009 ~= evt.param1 then
		return false	
	end
	
	if 73 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1008(context, evt)
	-- 改变指定group组220111001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111001, 1006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220111001 ；指定config：1009；物件身上指定option：73；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111001, 1009, 73) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 13)
	
	-- 将本组内变量名为 "point3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "collect" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "collect", 1, 220111013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1010(context, evt)
	if evt.param1 ~= 1010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"point"为1
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1010(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1012(context, evt)
	if evt.param1 ~= 1012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1012(context, evt)
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1013(context, evt)
	if evt.param1 ~= 1013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"point"为1
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 1 then
			return false
	end
	
	-- 判断变量"point3"为0
	if ScriptLib.GetGroupVariableValue(context, "point3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1013(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 13)
	
	return 0
end