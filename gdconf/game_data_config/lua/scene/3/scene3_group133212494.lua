-- 基础信息
local base_info = {
	group_id = 133212494
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494004, monster_id = 22010301, pos = { x = -3876.975, y = 200.000, z = -2527.785 }, rot = { x = 0.000, y = 63.452, z = 0.000 }, level = 27, drop_tag = "深渊法师", area_id = 13 },
	{ config_id = 494005, monster_id = 22010301, pos = { x = -3866.693, y = 200.000, z = -2534.080 }, rot = { x = 0.000, y = 333.654, z = 0.000 }, level = 27, drop_tag = "深渊法师", area_id = 13 },
	{ config_id = 494006, monster_id = 22010301, pos = { x = -3864.958, y = 200.000, z = -2519.406 }, rot = { x = 0.000, y = 215.699, z = 0.000 }, level = 27, drop_tag = "深渊法师", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 494001, gadget_id = 70330105, pos = { x = -3869.487, y = 200.038, z = -2526.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 矿坑
	{ config_id = 494002, gadget_id = 70500000, pos = { x = -3869.487, y = 207.203, z = -2526.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9169, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494003, name = "GADGET_STATE_CHANGE_494003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494003", action = "action_EVENT_GADGET_STATE_CHANGE_494003" },
	{ config_id = 1494007, name = "GATHER_494007", event = EventType.EVENT_GATHER, source = "494002", condition = "condition_EVENT_GATHER_494007", action = "action_EVENT_GATHER_494007", trigger_count = 0 },
	{ config_id = 1494008, name = "QUEST_START_494008", event = EventType.EVENT_QUEST_START, source = "7213107", condition = "", action = "action_EVENT_QUEST_START_494008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true }
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
		gadgets = { 494001, 494002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_494003", "GATHER_494007", "QUEST_START_494008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 494004, 494005, 494006 },
		gadgets = { },
		regions = { },
		triggers = { "GATHER_494007", "QUEST_START_494008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494003(context, evt)
	if 494001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212494, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_494007(context, evt)
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_494007(context, evt)
	-- 调用提示id为 321231071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321231071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_494008(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end