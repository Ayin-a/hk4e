-- 基础信息
local base_info = {
	group_id = 133313015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15003, monster_id = 24040101, pos = { x = -759.140, y = -338.819, z = 5428.035 }, rot = { x = 0.000, y = 319.119, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 15004, monster_id = 24040201, pos = { x = -771.876, y = -338.819, z = 5449.488 }, rot = { x = 0.000, y = 161.937, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 15005, monster_id = 24050101, pos = { x = -754.396, y = -338.819, z = 5438.904 }, rot = { x = 0.000, y = 278.709, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15001, gadget_id = 70290769, pos = { x = -765.767, y = -338.671, z = 5438.480 }, rot = { x = 0.000, y = 329.838, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015002, name = "ANY_GADGET_DIE_15002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_15002", action = "action_EVENT_ANY_GADGET_DIE_15002" },
	{ config_id = 1015006, name = "ANY_MONSTER_DIE_15006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15006", action = "action_EVENT_ANY_MONSTER_DIE_15006", trigger_count = 0 },
	-- 装置可被打
	{ config_id = 1015007, name = "QUEST_START_15007", event = EventType.EVENT_QUEST_START, source = "7310334", condition = "", action = "action_EVENT_QUEST_START_15007", trigger_count = 0 },
	-- 第一次锁血
	{ config_id = 1015008, name = "GADGET_STATE_CHANGE_15008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15008", action = "action_EVENT_GADGET_STATE_CHANGE_15008", trigger_count = 0 },
	-- 第二次锁血
	{ config_id = 1015009, name = "GADGET_STATE_CHANGE_15009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15009", action = "action_EVENT_GADGET_STATE_CHANGE_15009", trigger_count = 0 },
	-- 任务完成
	{ config_id = 1015010, name = "GADGET_STATE_CHANGE_15010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15010", action = "action_EVENT_GADGET_STATE_CHANGE_15010", trigger_count = 0 },
	{ config_id = 1015011, name = "ANY_MONSTER_DIE_15011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15011", action = "action_EVENT_ANY_MONSTER_DIE_15011" },
	-- 延迟切换到只剩下球的状态,Phase3
	{ config_id = 1015012, name = "QUEST_FINISH_15012", event = EventType.EVENT_QUEST_FINISH, source = "7310334", condition = "", action = "action_EVENT_QUEST_FINISH_15012", trigger_count = 0 },
	{ config_id = 1015013, name = "TIME_AXIS_PASS_15013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15013", action = "action_EVENT_TIME_AXIS_PASS_15013", trigger_count = 0 },
	-- 重登保底
	{ config_id = 1015014, name = "GROUP_LOAD_15014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_15014", action = "action_EVENT_GROUP_LOAD_15014", trigger_count = 0 },
	-- 入战Reminder
	{ config_id = 1015015, name = "TIME_AXIS_PASS_15015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15015", action = "action_EVENT_TIME_AXIS_PASS_15015", trigger_count = 0 },
	-- 延迟设置任务完成，等reminder
	{ config_id = 1015016, name = "TIME_AXIS_PASS_15016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_15016", action = "action_EVENT_TIME_AXIS_PASS_15016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "phase", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		-- description = 任务未开始，阶段0,
		monsters = { },
		gadgets = { 15001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_15002", "QUEST_START_15007", "GADGET_STATE_CHANGE_15008", "GADGET_STATE_CHANGE_15009", "GADGET_STATE_CHANGE_15010", "QUEST_FINISH_15012", "TIME_AXIS_PASS_15013", "GROUP_LOAD_15014", "TIME_AXIS_PASS_15015", "TIME_AXIS_PASS_15016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1,
		monsters = { 15003, 15004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2,
		monsters = { 15005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15006" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 最终状态,
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

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_15002(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_15002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310334") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15006(context, evt)
	--判断死亡怪物的configid是否为 15005
	if evt.param1 ~= 15005 then
	    return false
	 end
	  
	
	-- 判断变量"phase"为2
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15006(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_15007(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 15001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313015, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313015, 3)
	
	-- 创建标识为"rmd_1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd_1", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15008(context, evt)
	-- 检测config_id为15001的gadget是否从GadgetState.ChestLocked变为GadgetState.ChestOpened
	if 15001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.ChestLocked ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15008(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313015, 2)
	
	-- 调用提示id为 1000080042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15009(context, evt)
	-- 检测config_id为15001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 15001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15009(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313015, 3)
	
	-- 调用提示id为 1000080044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000080044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	if 15001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15010(context, evt)
	ScriptLib.InitTimeAxis(context, "battle_fin", {4}, false)
	
	TLA_active_reminder_ui(context, evt, 1000080045)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"phase"为1
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15011(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_15012(context, evt)
	-- 将本组内变量名为 "phase" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "phase", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"change"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "change", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15013(context, evt)
	if "change" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15013(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_15014(context, evt)
	-- 判断变量"phase"为3
	if ScriptLib.GetGroupVariableValue(context, "phase") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_15014(context, evt)
	-- 将configid为 15001 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15015(context, evt)
	if "rmd_1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15015(context, evt)
	TLA_active_reminder_ui(context, evt, 1000080041)
	
	ScriptLib.EndTimeAxis(context, "rmd_1")
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_15016(context, evt)
	if "battle_fin" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_15016(context, evt)
	ScriptLib.AddQuestProgress(context, "Q7310334")
	
	ScriptLib.EndTimeAxis(context, "battle_fin")
	
	return 0
end