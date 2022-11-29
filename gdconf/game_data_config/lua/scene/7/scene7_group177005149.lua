-- 基础信息
local base_info = {
	group_id = 177005149
}

-- Trigger变量
local defs = {
	pointarray_1 = 700500026,
	gadget_1 = 149002,
	gadget_controller_1 = 149006,
	gadget_pointarray_1 = 1,
	group_id = 177005149
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
	{ config_id = 149001, gadget_id = 70330134, pos = { x = 534.709, y = 191.621, z = 532.668 }, rot = { x = 359.854, y = 345.163, z = 3.375 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 149002, gadget_id = 70330135, pos = { x = 533.060, y = 191.173, z = 538.767 }, rot = { x = 359.854, y = 345.163, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 149003, gadget_id = 70330135, pos = { x = 535.790, y = 191.239, z = 543.228 }, rot = { x = 359.854, y = 75.163, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 149004, gadget_id = 70330141, pos = { x = 528.395, y = 191.529, z = 547.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底��?
	{ config_id = 149005, gadget_id = 70330157, pos = { x = 534.711, y = 189.823, z = 532.669 }, rot = { x = 359.854, y = 345.163, z = 3.375 }, level = 36, area_id = 210 },
	-- 镜面操作��?1
	{ config_id = 149006, gadget_id = 70330158, pos = { x = 533.060, y = 190.101, z = 538.767 }, rot = { x = 359.854, y = 345.163, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 149007, gadget_id = 70211161, pos = { x = 531.959, y = 191.105, z = 548.352 }, rot = { x = 4.152, y = 359.125, z = 3.376 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	-- 镜面操作��?2
	{ config_id = 149008, gadget_id = 70330158, pos = { x = 535.790, y = 190.183, z = 543.228 }, rot = { x = 359.854, y = 75.163, z = 0.000 }, level = 36, area_id = 210 },
	-- 接收器底��?
	{ config_id = 149014, gadget_id = 70330157, pos = { x = 528.395, y = 190.435, z = 547.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 149009, shape = RegionShape.SPHERE, radius = 10, pos = { x = 534.785, y = 190.164, z = 540.545 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1149009, name = "ENTER_REGION_149009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_149009", action = "action_EVENT_ENTER_REGION_149009" },
	-- 操作��?1
	{ config_id = 1149016, name = "GADGET_CREATE_149016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_149016", action = "action_EVENT_GADGET_CREATE_149016", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1149021, name = "SELECT_OPTION_149021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_149021", action = "action_EVENT_SELECT_OPTION_149021", trigger_count = 0 },
	{ config_id = 1149022, name = "TIMER_EVENT_149022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_149022", trigger_count = 0 },
	{ config_id = 1149031, name = "GADGET_STATE_CHANGE_149031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_149031", action = "action_EVENT_GADGET_STATE_CHANGE_149031" }
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
		gadgets = { 149001, 149002, 149003, 149004, 149005, 149006, 149008, 149014 },
		regions = { 149009 },
		triggers = { "ENTER_REGION_149009", "GADGET_CREATE_149016", "SELECT_OPTION_149021", "TIMER_EVENT_149022", "GADGET_STATE_CHANGE_149031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_149009(context, evt)
	if evt.param1 ~= 149009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_149009(context, evt)
	-- 显示id为161的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,161,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_149016(context, evt)
	if 149006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_149016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_149021(context, evt)
	-- 判断是gadgetid 149006 option_id 31
	if 149006 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_149021(context, evt)
	-- 删除指定group： 177005149 ；指定config：149006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 177005149, 149006, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 149002, 700500026, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：177005149的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 177005149, "route1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_149022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 177005149, 149006, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_149031(context, evt)
	if 149004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_149031(context, evt)
	-- 创建id为149007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 149007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"