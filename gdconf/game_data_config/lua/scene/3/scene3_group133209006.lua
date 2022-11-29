-- 基础信息
local base_info = {
	group_id = 133209006
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
	{ config_id = 6001, gadget_id = 70210102, pos = { x = -2751.627, y = 226.242, z = -4448.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 6002, gadget_id = 70210102, pos = { x = -2754.177, y = 226.227, z = -4447.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 6003, gadget_id = 70210102, pos = { x = -2749.030, y = 226.245, z = -4453.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "GADGET_STATE_CHANGE_6004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6004", action = "action_EVENT_GADGET_STATE_CHANGE_6004", trigger_count = 0 },
	{ config_id = 1006005, name = "GADGET_STATE_CHANGE_6005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6005", action = "action_EVENT_GADGET_STATE_CHANGE_6005", trigger_count = 0 },
	{ config_id = 1006006, name = "GADGET_STATE_CHANGE_6006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6006", action = "action_EVENT_GADGET_STATE_CHANGE_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "VARIABLE_CHANGE_6007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6007", action = "action_EVENT_VARIABLE_CHANGE_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "VARIABLE_CHANGE_6008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6008", action = "action_EVENT_VARIABLE_CHANGE_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "VARIABLE_CHANGE_6009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6009", action = "action_EVENT_VARIABLE_CHANGE_6009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "m_total", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6004", "GADGET_STATE_CHANGE_6005", "GADGET_STATE_CHANGE_6006", "VARIABLE_CHANGE_6007", "VARIABLE_CHANGE_6008", "VARIABLE_CHANGE_6009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6004(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133209006, 6001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6004(context, evt)
	-- 针对当前group内变量名为 "m_total" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "m_total", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6005(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133209006, 6002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6005(context, evt)
	-- 针对当前group内变量名为 "m_total" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "m_total", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133209006, 6003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	-- 针对当前group内变量名为 "m_total" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "m_total", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"m_total"为1
	if ScriptLib.GetGroupVariableValue(context, "m_total") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2753,y=226,z=-4450}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110308, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7280001") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"m_total"为2
	if ScriptLib.GetGroupVariableValue(context, "m_total") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2755,y=225,z=-4455}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110309, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7280002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"m_total"为3
	if ScriptLib.GetGroupVariableValue(context, "m_total") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2753,y=226,z=-4449}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110310, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7280003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end