-- 基础信息
local base_info = {
	group_id = 133105301
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310500090,
	gadget_seelie = 301002
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
	{ config_id = 301010, monster_id = 21011401, pos = { x = 631.237, y = 200.215, z = -853.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 301011, monster_id = 20010904, pos = { x = 630.283, y = 200.238, z = -852.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 301012, monster_id = 21011301, pos = { x = 632.500, y = 200.386, z = -852.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301001, gadget_id = 70720215, pos = { x = 636.744, y = 200.552, z = -856.819 }, rot = { x = 0.000, y = 227.325, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 301002, gadget_id = 70720214, pos = { x = 626.713, y = 208.367, z = -830.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, route_id = 310500091, area_id = 10 },
	{ config_id = 301003, gadget_id = 70720216, pos = { x = 635.237, y = 200.628, z = -854.261 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 35, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 301007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 626.779, y = 208.076, z = -830.790 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1301004, name = "PLATFORM_REACH_POINT_301004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_301004", action = "action_EVENT_PLATFORM_REACH_POINT_301004", trigger_count = 0 },
	{ config_id = 1301005, name = "PLATFORM_REACH_POINT_301005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_301005", action = "action_EVENT_PLATFORM_REACH_POINT_301005", trigger_count = 0 },
	{ config_id = 1301006, name = "AVATAR_NEAR_PLATFORM_301006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_301006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_301006", trigger_count = 0 },
	{ config_id = 1301007, name = "ENTER_REGION_301007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301007", action = "action_EVENT_ENTER_REGION_301007", trigger_count = 0 },
	{ config_id = 1301008, name = "GADGET_STATE_CHANGE_301008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_301008", action = "action_EVENT_GADGET_STATE_CHANGE_301008", trigger_count = 0 },
	{ config_id = 1301009, name = "GADGET_CREATE_301009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_301009", action = "action_EVENT_GADGET_CREATE_301009", trigger_count = 0 },
	{ config_id = 1301013, name = "QUEST_START_301013", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_301013", action = "action_EVENT_QUEST_START_301013", trigger_count = 0 },
	{ config_id = 1301014, name = "QUEST_START_301014", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_301014", action = "action_EVENT_QUEST_START_301014", trigger_count = 0 },
	{ config_id = 1301015, name = "QUEST_FINISH_301015", event = EventType.EVENT_QUEST_FINISH, source = "1104508", condition = "", action = "action_EVENT_QUEST_FINISH_301015", trigger_count = 0 },
	{ config_id = 1301016, name = "QUEST_FINISH_301016", event = EventType.EVENT_QUEST_FINISH, source = "1104509", condition = "", action = "action_EVENT_QUEST_FINISH_301016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 301001, 301002, 301003 },
		regions = { 301007 },
		triggers = { "PLATFORM_REACH_POINT_301004", "PLATFORM_REACH_POINT_301005", "AVATAR_NEAR_PLATFORM_301006", "ENTER_REGION_301007", "GADGET_STATE_CHANGE_301008", "QUEST_START_301013", "QUEST_START_301014", "QUEST_FINISH_301015", "QUEST_FINISH_301016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 301001 },
		regions = { },
		triggers = { "GADGET_CREATE_301009", "QUEST_START_301013", "QUEST_START_301014", "QUEST_FINISH_301015", "QUEST_FINISH_301016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_301013", "QUEST_START_301014", "QUEST_FINISH_301015", "QUEST_FINISH_301016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_301013", "QUEST_START_301014", "QUEST_FINISH_301015", "QUEST_FINISH_301016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_301004(context, evt)
	-- 判断是gadgetid 为 301002的移动平台，是否到达了310500090 的路线中的 6 点
	
	if 301002 ~= evt.param1 then
	  return false
	end
	
	if 310500090 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_301004(context, evt)
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 301011, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 301012, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 301010, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_301005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_301005(context, evt)
	-- 将configid为 301001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 301002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133105301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_301006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_301006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 301002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301007(context, evt)
	if evt.param1 ~= 301007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 301002, 310500090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_301008(context, evt)
	if 301001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_301008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105301, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_301009(context, evt)
	if 301001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_301009(context, evt)
	-- 将configid为 301001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 301001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_301013(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_301013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105301, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_301014(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_301014(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105301, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_301015(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_301016(context, evt)
	-- 调用提示id为 400020 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end