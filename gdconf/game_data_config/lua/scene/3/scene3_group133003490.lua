-- 基础信息
local base_info = {
	group_id = 133003490
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490001, monster_id = 21020201, pos = { x = 2326.522, y = 279.743, z = -1684.675 }, rot = { x = 0.000, y = 224.145, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 401, area_id = 1 },
	{ config_id = 490002, monster_id = 21010201, pos = { x = 2327.329, y = 280.392, z = -1690.510 }, rot = { x = 0.000, y = 302.950, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 490003, monster_id = 21010201, pos = { x = 2321.563, y = 279.877, z = -1686.928 }, rot = { x = 0.000, y = 125.388, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 490004, monster_id = 21010201, pos = { x = 2322.408, y = 280.528, z = -1692.096 }, rot = { x = 0.000, y = 22.511, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9012, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 490005, gadget_id = 70310006, pos = { x = 2324.546, y = 279.986, z = -1688.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 490007, gadget_id = 70210102, pos = { x = 2428.975, y = 321.448, z = -1743.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 490008, gadget_id = 70210102, pos = { x = 2391.599, y = 297.773, z = -1798.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 490009, gadget_id = 70210102, pos = { x = 2294.724, y = 284.296, z = -1738.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 490010, gadget_id = 70210102, pos = { x = 2307.719, y = 280.137, z = -1684.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1490006, name = "GADGET_STATE_CHANGE_490006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490006", action = "action_EVENT_GADGET_STATE_CHANGE_490006" },
	{ config_id = 1490011, name = "GADGET_STATE_CHANGE_490011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490011", action = "action_EVENT_GADGET_STATE_CHANGE_490011" },
	{ config_id = 1490012, name = "GADGET_STATE_CHANGE_490012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490012", action = "action_EVENT_GADGET_STATE_CHANGE_490012" },
	{ config_id = 1490013, name = "GADGET_STATE_CHANGE_490013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_490013", action = "action_EVENT_GADGET_STATE_CHANGE_490013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "A", value = 0, no_refresh = false },
	{ config_id = 2, name = "B", value = 0, no_refresh = false },
	{ config_id = 3, name = "C", value = 0, no_refresh = false },
	{ config_id = 4, name = "D", value = 0, no_refresh = false }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 490007, 490008, 490009, 490010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_490006", "GADGET_STATE_CHANGE_490011", "GADGET_STATE_CHANGE_490012", "GADGET_STATE_CHANGE_490013" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490006(context, evt)
	if 490007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490006(context, evt)
		-- 针对当前group内变量名为 "A" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "A", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349001") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110035 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110035) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490011(context, evt)
	if 490008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490011(context, evt)
		-- 针对当前group内变量名为 "B" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "B", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349002") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110038 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110038) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490012(context, evt)
	if 490009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490012(context, evt)
		-- 针对当前group内变量名为 "C" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349003") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110039 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110039) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_490013(context, evt)
	if 490010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_490013(context, evt)
		-- 针对当前group内变量名为 "D" 的变量，进行修改，变化值为 1
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "D", 1) then
		  return -1
		end
		
		-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		if 0 ~= ScriptLib.AddQuestProgress(context, "13300349004") then
		  return -1
		end
		
		-- 判断调查点是否已经全部完成
		if 4 > ScriptLib.GetGroupVariableValue(context, "A")+ScriptLib.GetGroupVariableValue(context, "B")+ScriptLib.GetGroupVariableValue(context, "C")+ScriptLib.GetGroupVariableValue(context, "D") then
			-- 调用提示id为 1110042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110042) then
				return -1
			end
		else
			-- 调用提示id为 1110036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 1110036) then
				return -1
			end
		end
		
		return 0
end