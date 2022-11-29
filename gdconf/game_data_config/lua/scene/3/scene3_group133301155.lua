-- 基础信息
local base_info = {
	group_id = 133301155
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
	{ config_id = 155001, gadget_id = 70220063, pos = { x = -293.903, y = 251.161, z = 3885.587 }, rot = { x = 357.201, y = 246.974, z = 353.445 }, level = 27, area_id = 22 },
	{ config_id = 155002, gadget_id = 70220063, pos = { x = -302.657, y = 251.182, z = 3885.031 }, rot = { x = 10.453, y = 359.379, z = 357.273 }, level = 27, area_id = 22 },
	{ config_id = 155003, gadget_id = 70220063, pos = { x = -299.746, y = 251.745, z = 3879.585 }, rot = { x = 0.894, y = 359.972, z = 356.424 }, level = 27, area_id = 22 },
	{ config_id = 155007, gadget_id = 70220064, pos = { x = -299.624, y = 251.332, z = 3886.578 }, rot = { x = 1.105, y = 294.295, z = 357.554 }, level = 27, area_id = 22 },
	{ config_id = 155008, gadget_id = 70220064, pos = { x = -297.461, y = 251.402, z = 3881.875 }, rot = { x = 2.677, y = 359.841, z = 357.312 }, level = 27, area_id = 22 },
	{ config_id = 155009, gadget_id = 70220064, pos = { x = -295.006, y = 251.375, z = 3880.989 }, rot = { x = 358.110, y = 224.756, z = 1.906 }, level = 27, area_id = 22 },
	{ config_id = 155010, gadget_id = 70360001, pos = { x = -296.150, y = 251.824, z = 3888.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 155018, gadget_id = 70211101, pos = { x = -295.895, y = 251.067, z = 3889.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 高罐子打碎
	{ config_id = 1155004, name = "ANY_GADGET_DIE_155004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155004", action = "action_EVENT_ANY_GADGET_DIE_155004", trigger_count = 0 },
	-- 全部打碎结算成功
	{ config_id = 1155005, name = "ANY_GADGET_DIE_155005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155005", action = "action_EVENT_ANY_GADGET_DIE_155005", trigger_count = 0 },
	{ config_id = 1155006, name = "GADGET_STATE_CHANGE_155006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_155006", action = "action_EVENT_GADGET_STATE_CHANGE_155006", trigger_count = 0 },
	-- 高罐子打碎
	{ config_id = 1155011, name = "ANY_GADGET_DIE_155011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155011", action = "action_EVENT_ANY_GADGET_DIE_155011", trigger_count = 0 },
	-- 高罐子打碎
	{ config_id = 1155013, name = "ANY_GADGET_DIE_155013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155013", action = "action_EVENT_ANY_GADGET_DIE_155013", trigger_count = 0 },
	-- 矮罐子打碎检查高罐子是否都打碎了
	{ config_id = 1155014, name = "ANY_GADGET_DIE_155014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155014", action = "action_EVENT_ANY_GADGET_DIE_155014", trigger_count = 0 },
	-- 矮罐子打碎检查高罐子是否都打碎了
	{ config_id = 1155015, name = "ANY_GADGET_DIE_155015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155015", action = "action_EVENT_ANY_GADGET_DIE_155015", trigger_count = 0 },
	-- 矮罐子打碎检查高罐子是否都打碎了
	{ config_id = 1155016, name = "ANY_GADGET_DIE_155016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_155016", action = "action_EVENT_ANY_GADGET_DIE_155016", trigger_count = 0 },
	{ config_id = 1155017, name = "VARIABLE_CHANGE_155017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_155017", action = "action_EVENT_VARIABLE_CHANGE_155017" }
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
		gadgets = { 155001, 155002, 155003, 155007, 155008, 155009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_155004", "ANY_GADGET_DIE_155005", "ANY_GADGET_DIE_155011", "ANY_GADGET_DIE_155013", "ANY_GADGET_DIE_155014", "ANY_GADGET_DIE_155015", "ANY_GADGET_DIE_155016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 155010, 155018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_155006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155004(context, evt)
	if 155001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155004(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133301155}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308703_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301155, 3)
	
	-- 调用提示id为 7308702 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308702) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_155006(context, evt)
	if 155018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_155006(context, evt)
	-- 将configid为 155010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155011(context, evt)
	if 155002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155011(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155013(context, evt)
	if 155003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155013(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_155014(context, evt)
	if 155007 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308703_fail") then
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
function condition_EVENT_ANY_GADGET_DIE_155015(context, evt)
	if 155008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308703_fail") then
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
function condition_EVENT_ANY_GADGET_DIE_155016(context, evt)
	if 155009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"count"等于3时击破才不算失败
	if ScriptLib.GetGroupVariableValue(context, "count") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_155016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7308703_fail") then
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
function condition_EVENT_VARIABLE_CHANGE_155017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "count", 133301155) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_155017(context, evt)
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