-- 基础信息
local base_info = {
	group_id = 133223378
}

-- DEFS_MISCS
defs = {
        group_id = 133223378,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[133223116] = 2}, --groupid和需要切到的SuiteID，一一对应
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
	{ config_id = 378001, gadget_id = 70290160, pos = { x = -6384.305, y = 207.778, z = -2822.008 }, rot = { x = 352.953, y = 326.406, z = 5.053 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	-- 任务环节触发
	{ config_id = 378002, shape = RegionShape.SPHERE, radius = 6, pos = { x = -6384.528, y = 207.794, z = -2821.995 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 任务环节触发
	{ config_id = 1378002, name = "ENTER_REGION_378002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378002", action = "action_EVENT_ENTER_REGION_378002" },
	{ config_id = 1378003, name = "QUEST_START_378003", event = EventType.EVENT_QUEST_START, source = "7216610", condition = "condition_EVENT_QUEST_START_378003", action = "action_EVENT_QUEST_START_378003" },
	{ config_id = 1378004, name = "VARIABLE_CHANGE_378004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_378004", action = "action_EVENT_VARIABLE_CHANGE_378004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Notified", value = 0, no_refresh = false },
	{ config_id = 2, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder_can_trigger", value = 0, no_refresh = true },
	{ config_id = 4, name = "feather_use_reminder", value = 0, no_refresh = true }
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
		gadgets = { 378001 },
		regions = { 378002 },
		triggers = { "ENTER_REGION_378002", "QUEST_START_378003", "VARIABLE_CHANGE_378004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_378002(context, evt)
	if evt.param1 ~= 378002 then return false end
	
	-- 判断变量"reminder_can_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder_can_trigger") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378002(context, evt)
	-- 调用提示id为 32230101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_378003(context, evt)
	-- 判断变量"reminder_can_trigger"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_can_trigger") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_378003(context, evt)
	-- 将本组内变量名为 "reminder_can_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_can_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_378004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Notified"为1
	if ScriptLib.GetGroupVariableValue(context, "Notified") ~= 1 then
			return false
	end
	
	-- 判断变量"feather_use_reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "feather_use_reminder") ~= 0 then
			return false
	end
	
	-- 判断变量"reminder_can_trigger"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder_can_trigger") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_378004(context, evt)
	-- 将本组内变量名为 "feather_use_reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feather_use_reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32230114 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230114) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6380，214，-2813），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6380, y=214, z=-2813}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"