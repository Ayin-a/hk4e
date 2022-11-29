-- 基础信息
local base_info = {
	group_id = 177005150
}

-- Trigger变量
local defs = {
	pointarray_1 = 700500027,
	gadget_1 = 150002,
	gadget_controller_1 = 150006,
	gadget_pointarray_1 = 1,
	group_id = 177005150
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
	{ config_id = 150001, gadget_id = 70330134, pos = { x = 562.233, y = 219.146, z = 860.404 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 150002, gadget_id = 70330135, pos = { x = 546.496, y = 218.807, z = 860.369 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 150003, gadget_id = 70330135, pos = { x = 546.510, y = 218.807, z = 869.097 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 150004, gadget_id = 70330141, pos = { x = 553.579, y = 218.905, z = 853.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底��?
	{ config_id = 150005, gadget_id = 70330157, pos = { x = 562.233, y = 217.768, z = 860.404 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作��?1
	{ config_id = 150006, gadget_id = 70330158, pos = { x = 546.496, y = 217.486, z = 860.369 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 150007, gadget_id = 70330135, pos = { x = 553.686, y = 218.807, z = 869.097 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面操作��?2
	{ config_id = 150008, gadget_id = 70330158, pos = { x = 546.510, y = 217.601, z = 869.097 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作��?3
	{ config_id = 150009, gadget_id = 70330158, pos = { x = 553.686, y = 217.482, z = 869.097 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 150010, gadget_id = 70211162, pos = { x = 549.184, y = 217.345, z = 853.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	-- 接收器底��?
	{ config_id = 150014, gadget_id = 70330157, pos = { x = 553.579, y = 217.435, z = 853.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 150011, shape = RegionShape.SPHERE, radius = 12, pos = { x = 554.119, y = 215.561, z = 862.174 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1150011, name = "ENTER_REGION_150011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_150011", action = "action_EVENT_ENTER_REGION_150011" },
	-- 操作��?1
	{ config_id = 1150016, name = "GADGET_CREATE_150016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150016", action = "action_EVENT_GADGET_CREATE_150016", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1150021, name = "SELECT_OPTION_150021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150021", action = "action_EVENT_SELECT_OPTION_150021", trigger_count = 0 },
	{ config_id = 1150022, name = "TIMER_EVENT_150022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_150022", trigger_count = 0 },
	{ config_id = 1150031, name = "GADGET_STATE_CHANGE_150031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150031", action = "action_EVENT_GADGET_STATE_CHANGE_150031" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1150017, name = "GADGET_CREATE_150017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150017", action = "action_EVENT_GADGET_CREATE_150017", trigger_count = 0 },
		{ config_id = 1150018, name = "GADGET_CREATE_150018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150018", action = "action_EVENT_GADGET_CREATE_150018", trigger_count = 0 },
		{ config_id = 1150019, name = "GADGET_CREATE_150019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150019", action = "action_EVENT_GADGET_CREATE_150019", trigger_count = 0 },
		{ config_id = 1150020, name = "GADGET_CREATE_150020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_150020", action = "action_EVENT_GADGET_CREATE_150020", trigger_count = 0 },
		{ config_id = 1150023, name = "SELECT_OPTION_150023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150023", action = "action_EVENT_SELECT_OPTION_150023", trigger_count = 0 },
		{ config_id = 1150024, name = "TIMER_EVENT_150024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_150024", trigger_count = 0 },
		{ config_id = 1150025, name = "SELECT_OPTION_150025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150025", action = "action_EVENT_SELECT_OPTION_150025", trigger_count = 0 },
		{ config_id = 1150026, name = "TIMER_EVENT_150026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_150026", trigger_count = 0 },
		{ config_id = 1150027, name = "SELECT_OPTION_150027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150027", action = "action_EVENT_SELECT_OPTION_150027", trigger_count = 0 },
		{ config_id = 1150028, name = "TIMER_EVENT_150028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_150028", trigger_count = 0 },
		{ config_id = 1150029, name = "SELECT_OPTION_150029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_150029", action = "action_EVENT_SELECT_OPTION_150029", trigger_count = 0 },
		{ config_id = 1150030, name = "TIMER_EVENT_150030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_150030", trigger_count = 0 }
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
		gadgets = { 150001, 150002, 150003, 150004, 150005, 150006, 150007, 150008, 150009, 150014 },
		regions = { 150011 },
		triggers = { "ENTER_REGION_150011", "GADGET_CREATE_150016", "SELECT_OPTION_150021", "TIMER_EVENT_150022", "GADGET_STATE_CHANGE_150031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_150011(context, evt)
	if evt.param1 ~= 150011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_150011(context, evt)
	-- 显示id为161的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,161,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_150016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_150016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_150021(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_1 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_150021(context, evt)
	-- 删除指定group��? 139998470 ；指定config��?470006；物件身上指定option��?31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_1, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往��?/Loop 循环]
	-- turn_mode = true/false 开��?/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_1, defs.pointarray_1, {defs.gadget_pointarray_1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对��?,请求一次调��?,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_150022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150031(context, evt)
	if 150004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150031(context, evt)
	-- 创建id为150010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"