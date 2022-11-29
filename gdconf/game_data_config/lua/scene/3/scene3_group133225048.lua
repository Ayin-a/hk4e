-- 基础信息
local base_info = {
	group_id = 133225048
}

-- DEFS_MISCS
defs = {
        group_id = 133225048,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = true, --修改Group里一个变量
        hasChild = true, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
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
	-- 控制雷电飞贼
	{ config_id = 48001, gadget_id = 70290160, pos = { x = -6424.812, y = 202.166, z = -2774.553 }, rot = { x = 3.739, y = 234.047, z = 6.332 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048002, name = "QUEST_START_48002", event = EventType.EVENT_QUEST_START, source = "7216610", condition = "", action = "action_EVENT_QUEST_START_48002", trigger_count = 0 },
	{ config_id = 1048003, name = "VARIABLE_CHANGE_48003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_48003", action = "action_EVENT_VARIABLE_CHANGE_48003" },
	-- 触发提示
	{ config_id = 1048004, name = "VARIABLE_CHANGE_48004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_48004", action = "action_EVENT_VARIABLE_CHANGE_48004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder_trigger", value = 0, no_refresh = true }
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
		gadgets = { 48001 },
		regions = { },
		triggers = { "QUEST_START_48002", "VARIABLE_CHANGE_48003", "VARIABLE_CHANGE_48004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_48002(context, evt)
	-- 将configid为 48001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_48003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133225044, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_48004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	-- 判断变量"reminder_trigger"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_trigger") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48004(context, evt)
	-- 将本组内变量名为 "reminder_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32230113 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230113) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_2/TsurumiBirdFather"