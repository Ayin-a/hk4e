-- 基础信息
local base_info = {
	group_id = 133303312
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
	{ config_id = 312001, gadget_id = 70220008, pos = { x = -1909.777, y = 363.800, z = 3493.328 }, rot = { x = 1.467, y = 357.065, z = 353.677 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 312002, gadget_id = 70220008, pos = { x = -1915.506, y = 364.815, z = 3493.400 }, rot = { x = 1.278, y = 356.378, z = 351.902 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 312003, gadget_id = 70220008, pos = { x = -1904.217, y = 364.725, z = 3504.937 }, rot = { x = 348.827, y = 1.567, z = 348.434 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 312005, gadget_id = 71700434, pos = { x = -1914.401, y = 366.203, z = 3500.117 }, rot = { x = 0.110, y = 47.428, z = 359.451 }, level = 30, area_id = 23 },
	{ config_id = 312006, gadget_id = 71700434, pos = { x = -1909.284, y = 366.280, z = 3504.582 }, rot = { x = 359.664, y = 21.060, z = 359.633 }, level = 30, area_id = 23 },
	{ config_id = 312007, gadget_id = 71700434, pos = { x = -1904.052, y = 363.546, z = 3495.196 }, rot = { x = 1.714, y = 2.376, z = 1.862 }, level = 30, area_id = 23 },
	{ config_id = 312008, gadget_id = 70360001, pos = { x = -1911.244, y = 366.269, z = 3502.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 312018, gadget_id = 70211101, pos = { x = -1911.908, y = 366.195, z = 3502.351 }, rot = { x = 0.000, y = 311.858, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312004, name = "GADGET_STATE_CHANGE_312004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_312004", action = "action_EVENT_GADGET_STATE_CHANGE_312004", trigger_count = 0 },
	{ config_id = 1312010, name = "ANY_GADGET_DIE_312010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312010", action = "action_EVENT_ANY_GADGET_DIE_312010", trigger_count = 0 },
	{ config_id = 1312011, name = "ANY_GADGET_DIE_312011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312011", action = "action_EVENT_ANY_GADGET_DIE_312011", trigger_count = 0 },
	{ config_id = 1312012, name = "ANY_GADGET_DIE_312012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312012", action = "action_EVENT_ANY_GADGET_DIE_312012", trigger_count = 0 },
	{ config_id = 1312013, name = "ANY_GADGET_DIE_312013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312013", action = "action_EVENT_ANY_GADGET_DIE_312013", trigger_count = 0 },
	{ config_id = 1312014, name = "ANY_GADGET_DIE_312014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312014", action = "action_EVENT_ANY_GADGET_DIE_312014", trigger_count = 0 },
	{ config_id = 1312015, name = "ANY_GADGET_DIE_312015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312015", action = "action_EVENT_ANY_GADGET_DIE_312015", trigger_count = 0 },
	-- 全部打碎检测
	{ config_id = 1312016, name = "ANY_GADGET_DIE_312016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312016", action = "action_EVENT_ANY_GADGET_DIE_312016", trigger_count = 0 },
	{ config_id = 1312017, name = "VARIABLE_CHANGE_312017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_312017", action = "action_EVENT_VARIABLE_CHANGE_312017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 312001, 312002, 312003, 312005, 312006, 312007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_312010", "ANY_GADGET_DIE_312011", "ANY_GADGET_DIE_312012", "ANY_GADGET_DIE_312013", "ANY_GADGET_DIE_312014", "ANY_GADGET_DIE_312015", "ANY_GADGET_DIE_312016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 312008, 312018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_312004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_312004(context, evt)
	if 312018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_312004(context, evt)
	-- 将configid为 312008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312010(context, evt)
	if 312001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312010(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312011(context, evt)
	if 312002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312012(context, evt)
	if 312003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312012(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312013(context, evt)
	if 312005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326103_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7308701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312014(context, evt)
	if 312006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326103_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7308701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312015(context, evt)
	if 312007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326103_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 7308701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_312016(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133303312}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326103_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303312, 3)
	
	-- 调用提示id为 7308702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_312017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 133301155) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_312017(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301155, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301155, EntityType.GADGET, 155007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301155, EntityType.GADGET, 155008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301155, EntityType.GADGET, 155009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end