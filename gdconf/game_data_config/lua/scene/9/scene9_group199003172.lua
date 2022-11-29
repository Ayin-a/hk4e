-- 基础信息
local base_info = {
	group_id = 199003172
}

-- Trigger变量
local defs = {
	point_sum = 15,
	route_2 = 900300045,
	gadget_seelie = 172002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 172002, gadget_id = 70310244, pos = { x = -719.997, y = 252.733, z = -8.591 }, rot = { x = 0.000, y = 203.480, z = 0.000 }, level = 20, start_route = false, area_id = 403 },
	{ config_id = 172009, gadget_id = 70310447, pos = { x = -743.179, y = 309.302, z = -65.468 }, rot = { x = 28.456, y = 11.173, z = 4.999 }, level = 1, area_id = 403 },
	{ config_id = 172010, gadget_id = 70310447, pos = { x = -745.743, y = 316.473, z = -78.449 }, rot = { x = 28.457, y = 11.173, z = 4.999 }, level = 1, area_id = 403 },
	{ config_id = 172011, gadget_id = 70310447, pos = { x = -748.215, y = 323.389, z = -90.968 }, rot = { x = 28.457, y = 11.173, z = 4.999 }, level = 1, area_id = 403 },
	{ config_id = 172012, gadget_id = 70310447, pos = { x = -750.689, y = 330.310, z = -103.495 }, rot = { x = 28.457, y = 11.173, z = 4.999 }, level = 1, area_id = 403 },
	{ config_id = 172016, gadget_id = 70360001, pos = { x = -718.083, y = 252.610, z = -8.584 }, rot = { x = 0.000, y = 205.961, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 172017, gadget_id = 70310244, pos = { x = -751.908, y = 334.326, z = -107.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, start_route = false, area_id = 403 },
	{ config_id = 172020, gadget_id = 70360001, pos = { x = -751.496, y = 334.347, z = -107.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 172003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -741.784, y = 305.457, z = -57.666 }, area_id = 403 },
	-- 启动星星
	{ config_id = 172007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -719.743, y = 252.638, z = -10.087 }, area_id = 403 },
	-- 加星空桥
	{ config_id = 172013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -743.356, y = 310.983, z = -67.912 }, area_id = 403 },
	-- 加星空桥
	{ config_id = 172014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -746.154, y = 317.880, z = -79.394 }, area_id = 403 },
	-- finish0只加星空桥
	{ config_id = 172015, shape = RegionShape.SPHERE, radius = 5, pos = { x = -748.596, y = 323.043, z = -90.909 }, area_id = 403 },
	-- 加星空桥和星星
	{ config_id = 172021, shape = RegionShape.SPHERE, radius = 5, pos = { x = -748.596, y = 323.043, z = -90.909 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1172001, name = "VARIABLE_CHANGE_172001", event = EventType.EVENT_VARIABLE_CHANGE, source = "start", condition = "condition_EVENT_VARIABLE_CHANGE_172001", action = "action_EVENT_VARIABLE_CHANGE_172001", trigger_count = 0 },
	{ config_id = 1172003, name = "ENTER_REGION_172003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172003", action = "action_EVENT_ENTER_REGION_172003", trigger_count = 0 },
	-- 到终点后给option
	{ config_id = 1172004, name = "PLATFORM_REACH_POINT_172004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_172004", action = "action_EVENT_PLATFORM_REACH_POINT_172004", trigger_count = 0 },
	{ config_id = 1172005, name = "GROUP_LOAD_172005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172005", action = "action_EVENT_GROUP_LOAD_172005", trigger_count = 0 },
	{ config_id = 1172006, name = "AVATAR_NEAR_PLATFORM_172006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_172006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_172006", trigger_count = 0 },
	-- 启动星星
	{ config_id = 1172007, name = "ENTER_REGION_172007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172007", action = "action_EVENT_ENTER_REGION_172007", trigger_count = 0 },
	{ config_id = 1172008, name = "GROUP_LOAD_172008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172008", action = "action_EVENT_GROUP_LOAD_172008", trigger_count = 0 },
	-- 加星空桥
	{ config_id = 1172013, name = "ENTER_REGION_172013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172013", action = "action_EVENT_ENTER_REGION_172013", trigger_count = 0 },
	-- 加星空桥
	{ config_id = 1172014, name = "ENTER_REGION_172014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172014", action = "action_EVENT_ENTER_REGION_172014", trigger_count = 0 },
	-- finish0只加星空桥
	{ config_id = 1172015, name = "ENTER_REGION_172015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172015", action = "action_EVENT_ENTER_REGION_172015", trigger_count = 0 },
	-- 触碰传送
	{ config_id = 1172019, name = "SELECT_OPTION_172019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_172019", action = "action_EVENT_SELECT_OPTION_172019", trigger_count = 0 },
	-- 加星空桥和星星
	{ config_id = 1172021, name = "ENTER_REGION_172021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172021", action = "action_EVENT_ENTER_REGION_172021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1172018, name = "GADGET_CREATE_172018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_172018", action = "action_EVENT_GADGET_CREATE_172018", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 172002, 172016, 172020 },
		regions = { 172003, 172007, 172013, 172014, 172015, 172021 },
		triggers = { "VARIABLE_CHANGE_172001", "ENTER_REGION_172003", "PLATFORM_REACH_POINT_172004", "GROUP_LOAD_172005", "AVATAR_NEAR_PLATFORM_172006", "ENTER_REGION_172007", "GROUP_LOAD_172008", "ENTER_REGION_172013", "ENTER_REGION_172014", "ENTER_REGION_172015", "SELECT_OPTION_172019", "ENTER_REGION_172021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 172016 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_172001", "GROUP_LOAD_172005", "GROUP_LOAD_172008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_172001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_172001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003172, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172003(context, evt)
	if evt.param1 ~= 172003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172003(context, evt)
	ScriptLib.CreateGadget(context, { config_id = 172009 })
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_172004(context, evt)
	-- 判断是gadgetid 为 172002的移动平台，是否到达了900300045 的路线中的 14 点
	
	if 172002 ~= evt.param1 then
	  return false
	end
	
	if 900300045 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_172004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199003172, 172020, {411}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为172017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 172017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003172, EntityType.GADGET, 172002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_172005(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003172, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_172006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_172006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 172002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172007(context, evt)
	if evt.param1 ~= 172007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 172002, 900300045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 172002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_172008(context, evt)
	-- 判断变量"finish"为2
	
		  if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003044) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172008(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003172, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172013(context, evt)
	if evt.param1 ~= 172013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172013(context, evt)
	-- 创建id为172010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 172010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172014(context, evt)
	if evt.param1 ~= 172014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172014(context, evt)
	-- 创建id为172011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 172011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172015(context, evt)
	if evt.param1 ~= 172015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172015(context, evt)
	-- 创建id为172012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 172012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_172019(context, evt)
	-- 判断是gadgetid 172020 option_id 411
	if 172020 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_172019(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = { x=-890, y=389, z=-115.76}, radius = 2, rot = {x=0, y=0, z=1}, is_skip_ui=false, scene_id =9} )
	 ScriptLib.DelWorktopOptionByGroupId(context, 199003172, 172020, 411) 
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 4, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9006, 1)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	ScriptLib.SetWeatherAreaState(context, 9005, 0)
	ScriptLib.RemoveEntityByConfigId(context, 199003172, EntityType.GADGET, 172017 )
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172021(context, evt)
	if evt.param1 ~= 172021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172021(context, evt)
	 ScriptLib.SetWorktopOptionsByGroupId(context, 199003172, 172020, {411})
	
	 ScriptLib.CreateGadget(context, { config_id = 172017 })
	
	ScriptLib.CreateGadget(context, { config_id = 172012 }) 
	
	return 0
end