-- 基础信息
local base_info = {
	group_id = 133304153
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
	{ config_id = 153001, gadget_id = 70220109, pos = { x = -1455.347, y = 266.596, z = 2878.891 }, rot = { x = 4.462, y = 0.089, z = 3.573 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153002, gadget_id = 70220109, pos = { x = -1459.617, y = 266.809, z = 2872.224 }, rot = { x = 0.871, y = 359.210, z = 358.198 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153003, gadget_id = 70220109, pos = { x = -1463.663, y = 266.794, z = 2873.635 }, rot = { x = 4.467, y = 359.394, z = 359.953 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153005, gadget_id = 70220004, pos = { x = -1462.483, y = 265.940, z = 2882.786 }, rot = { x = 4.448, y = 0.630, z = 1.834 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153006, gadget_id = 70220004, pos = { x = -1466.040, y = 266.324, z = 2878.055 }, rot = { x = 6.214, y = 359.105, z = 358.123 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153007, gadget_id = 70220004, pos = { x = -1454.874, y = 266.603, z = 2871.174 }, rot = { x = 356.452, y = 1.712, z = 359.000 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 21 },
	{ config_id = 153011, gadget_id = 70360001, pos = { x = -1458.517, y = 267.543, z = 2875.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 153018, gadget_id = 70211001, pos = { x = -1458.269, y = 266.608, z = 2875.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153004, name = "GADGET_STATE_CHANGE_153004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153004", action = "action_EVENT_GADGET_STATE_CHANGE_153004", trigger_count = 0 },
	{ config_id = 1153008, name = "GADGET_STATE_CHANGE_153008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153008", action = "action_EVENT_GADGET_STATE_CHANGE_153008", trigger_count = 0 },
	{ config_id = 1153009, name = "GADGET_STATE_CHANGE_153009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153009", action = "action_EVENT_GADGET_STATE_CHANGE_153009", trigger_count = 0 },
	{ config_id = 1153010, name = "GADGET_STATE_CHANGE_153010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_153010", action = "action_EVENT_GADGET_STATE_CHANGE_153010", trigger_count = 0 },
	{ config_id = 1153017, name = "VARIABLE_CHANGE_153017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_153017", action = "action_EVENT_VARIABLE_CHANGE_153017" },
	{ config_id = 1153019, name = "ANY_GADGET_DIE_153019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153019", action = "action_EVENT_ANY_GADGET_DIE_153019", trigger_count = 0 },
	{ config_id = 1153020, name = "ANY_GADGET_DIE_153020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153020", action = "action_EVENT_ANY_GADGET_DIE_153020", trigger_count = 0 },
	{ config_id = 1153021, name = "ANY_GADGET_DIE_153021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153021", action = "action_EVENT_ANY_GADGET_DIE_153021", trigger_count = 0 },
	-- 全部打碎检测
	{ config_id = 1153022, name = "ANY_GADGET_DIE_153022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_153022", action = "action_EVENT_ANY_GADGET_DIE_153022", trigger_count = 0 }
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
		gadgets = { 153001, 153002, 153003, 153005, 153006, 153007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_153004", "GADGET_STATE_CHANGE_153008", "GADGET_STATE_CHANGE_153009", "ANY_GADGET_DIE_153019", "ANY_GADGET_DIE_153020", "ANY_GADGET_DIE_153021", "ANY_GADGET_DIE_153022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 153011, 153018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_153010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153004(context, evt)
	if 153001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	if 153002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153009(context, evt)
	if 153003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	if 153018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_153010(context, evt)
	-- 将configid为 153011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_153017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 133301155) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_153017(context, evt)
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_153019(context, evt)
	if 153005 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326203_fail") then
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
function condition_EVENT_ANY_GADGET_DIE_153020(context, evt)
	if 153006 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326203_fail") then
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
function condition_EVENT_ANY_GADGET_DIE_153021(context, evt)
	if 153007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326203_fail") then
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
function condition_EVENT_ANY_GADGET_DIE_153022(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133304153}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_153022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7326203_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304153, 3)
	
	-- 调用提示id为 7308702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end