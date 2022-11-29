-- 基础信息
local base_info = {
	group_id = 133001004
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 300100377,
	gadget_seelie = 4002
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
	{ config_id = 4001, gadget_id = 70710006, pos = { x = 1949.434, y = 208.261, z = -1524.373 }, rot = { x = 0.000, y = 258.824, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 4002, gadget_id = 70710010, pos = { x = 1986.899, y = 222.629, z = -1561.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 1 },
	{ config_id = 4003, gadget_id = 70710007, pos = { x = 1988.144, y = 219.898, z = -1563.753 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 32, area_id = 1 },
	{ config_id = 4004, gadget_id = 70211131, pos = { x = 1943.072, y = 206.447, z = -1526.152 }, rot = { x = 0.000, y = 267.569, z = 0.000 }, level = 1, drop_tag = "解谜超级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4011, gadget_id = 70360001, pos = { x = 1942.901, y = 206.553, z = -1527.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4015, gadget_id = 70220021, pos = { x = 1948.099, y = 207.022, z = -1526.045 }, rot = { x = 20.743, y = 44.914, z = 355.684 }, level = 1, isOneoff = true, area_id = 1 }
}

-- 区域
regions = {
	-- 进入区域完成第五环，仙灵移动
	{ config_id = 4007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1988.595, y = 221.444, z = -1564.204 }, area_id = 1 },
	-- 进入区域完成第五环，仙灵移动
	{ config_id = 4018, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1988.595, y = 221.444, z = -1564.204 }, area_id = 1 }
}

-- 触发器
triggers = {
	-- 仙灵到达挖掘处，石头未击毁
	{ config_id = 1004005, name = "PLATFORM_REACH_POINT_4005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4005", action = "action_EVENT_PLATFORM_REACH_POINT_4005" },
	{ config_id = 1004006, name = "AVATAR_NEAR_PLATFORM_4006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4006", trigger_count = 0 },
	-- 进入区域完成第五环，仙灵移动
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "GADGET_STATE_CHANGE_4008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4008", action = "action_EVENT_GADGET_STATE_CHANGE_4008" },
	{ config_id = 1004009, name = "GADGET_CREATE_4009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4009", action = "action_EVENT_GADGET_CREATE_4009", trigger_count = 0 },
	-- 击碎石碓，改变量
	{ config_id = 1004010, name = "ANY_GADGET_DIE_4010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4010", action = "action_EVENT_ANY_GADGET_DIE_4010" },
	-- 仙灵到达挖掘处，若石头已击毁
	{ config_id = 1004012, name = "PLATFORM_REACH_POINT_4012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4012", action = "action_EVENT_PLATFORM_REACH_POINT_4012", trigger_count = 0 },
	-- 仙灵回归，任务结束
	{ config_id = 1004013, name = "PLATFORM_REACH_POINT_4013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4013", action = "action_EVENT_PLATFORM_REACH_POINT_4013" },
	-- 击碎石碓，仙灵继续
	{ config_id = 1004014, name = "ANY_GADGET_DIE_4014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4014", action = "action_EVENT_ANY_GADGET_DIE_4014" },
	-- 变量满足则直接完成7
	{ config_id = 1004016, name = "QUEST_START_4016", event = EventType.EVENT_QUEST_START, source = "7900107", condition = "condition_EVENT_QUEST_START_4016", action = "action_EVENT_QUEST_START_4016", trigger_count = 0 },
	-- 防止回滚完成不了任务
	{ config_id = 1004017, name = "GROUP_LOAD_4017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4017", action = "action_EVENT_GROUP_LOAD_4017", trigger_count = 0 },
	-- 进入区域完成第五环，仙灵移动
	{ config_id = 1004018, name = "ENTER_REGION_4018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4018", action = "action_EVENT_ENTER_REGION_4018" },
	-- 仙灵回归，任务结束
	{ config_id = 1004019, name = "PLATFORM_REACH_POINT_4019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_4019", action = "action_EVENT_PLATFORM_REACH_POINT_4019" },
	{ config_id = 1004020, name = "GROUP_LOAD_4020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroyed", value = 0, no_refresh = true },
	{ config_id = 2, name = "reached", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		gadgets = { 4001, 4002, 4003, 4011, 4015 },
		regions = { 4007, 4018 },
		triggers = { "PLATFORM_REACH_POINT_4005", "AVATAR_NEAR_PLATFORM_4006", "ENTER_REGION_4007", "GADGET_STATE_CHANGE_4008", "ANY_GADGET_DIE_4010", "PLATFORM_REACH_POINT_4012", "PLATFORM_REACH_POINT_4013", "QUEST_START_4016", "GROUP_LOAD_4017", "ENTER_REGION_4018", "PLATFORM_REACH_POINT_4019" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 4001, 4004 },
		regions = { },
		triggers = { "GADGET_CREATE_4009", "GROUP_LOAD_4020" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 先到挖掘处,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_4014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4005(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了300100377 的路线中的 8 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 300100377 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"destroyed"为0
	if ScriptLib.GetGroupVariableValue(context, "destroyed") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900106finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110246 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110246) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 4002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001004, 3)
	
	-- 将本组内变量名为 "reached" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_4006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "reached") == 1 then
	
	 if ScriptLib.GetGroupVariableValue(context, "destroyed") == 1 then
	 return true
	 end
	
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_4006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 4002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4002, 300100377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133001004, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4009(context, evt)
	if 4001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4009(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4010(context, evt)
	if 4015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4010(context, evt)
	-- 针对当前group内变量名为 "destroyed" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "destroyed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4012(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了300100377 的路线中的 8 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 300100377 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"destroyed"为1
	if ScriptLib.GetGroupVariableValue(context, "destroyed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4012(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900106finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "reached" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reached", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4013(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了300100378 的路线中的 10 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 300100378 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900108finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4014(context, evt)
	if 4015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4014(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4002, 300100378) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900107finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4016(context, evt)
	-- 判断变量"destroyed"为1
	if ScriptLib.GetGroupVariableValue(context, "destroyed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900107finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4017(context, evt)
	-- 判断变量"reached"为1
	if ScriptLib.GetGroupVariableValue(context, "reached") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900106finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4018(context, evt)
	if evt.param1 ~= 4018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4018(context, evt)
	-- 调用提示id为 1110244 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110244) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_4019(context, evt)
	-- 判断是gadgetid 为 4002的移动平台，是否到达了300100377 的路线中的 17 点
	
	if 4002 ~= evt.param1 then
	  return false
	end
	
	if 300100377 ~= evt.param2 then
	  return false
	end
	
	if 17 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_4019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900108finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110248 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900106finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900107finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900108finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end