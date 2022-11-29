-- 基础信息
local base_info = {
	group_id = 133225030
}

-- DEFS_MISCS
defs = 
{
	group_id = 133225030,
	Lightup_Seq = {30006,30007,30004,30005,30003}
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
	{ config_id = 30003, gadget_id = 70310137, pos = { x = -6419.230, y = 202.275, z = -2773.399 }, rot = { x = 353.656, y = 12.702, z = 14.106 }, level = 33, area_id = 18 },
	{ config_id = 30004, gadget_id = 70310140, pos = { x = -6414.431, y = 203.131, z = -2772.463 }, rot = { x = 11.412, y = 174.515, z = 336.722 }, level = 33, area_id = 18 },
	{ config_id = 30005, gadget_id = 70310134, pos = { x = -6410.320, y = 203.049, z = -2773.046 }, rot = { x = 7.934, y = 216.952, z = 351.520 }, level = 33, area_id = 18 },
	{ config_id = 30006, gadget_id = 70310135, pos = { x = -6407.010, y = 202.122, z = -2775.595 }, rot = { x = 3.359, y = 247.772, z = 14.261 }, level = 33, area_id = 18 },
	{ config_id = 30007, gadget_id = 70310138, pos = { x = -6405.193, y = 201.115, z = -2779.494 }, rot = { x = 349.421, y = 241.333, z = 357.692 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
	-- 进圈触发符文石教学
	{ config_id = 30009, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6414.298, y = 200.796, z = -2774.858 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 失败多次触发雕像提示v
	{ config_id = 1030001, name = "VARIABLE_CHANGE_30001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_30001", action = "action_EVENT_VARIABLE_CHANGE_30001" },
	-- 任务通知符文石激活
	{ config_id = 1030002, name = "QUEST_START_30002", event = EventType.EVENT_QUEST_START, source = "7216610", condition = "condition_EVENT_QUEST_START_30002", action = "action_EVENT_QUEST_START_30002", trigger_count = 0 },
	-- 完成
	{ config_id = 1030008, name = "VARIABLE_CHANGE_30008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_30008", action = "action_EVENT_VARIABLE_CHANGE_30008" },
	-- 进圈触发符文石教学
	{ config_id = 1030009, name = "ENTER_REGION_30009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30009", action = "action_EVENT_ENTER_REGION_30009" },
	-- 失败触发提示
	{ config_id = 1030010, name = "VARIABLE_CHANGE_30010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_30010", action = "action_EVENT_VARIABLE_CHANGE_30010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "FailCount", value = 0, no_refresh = true },
	{ config_id = 3, name = "TsurumiStone", value = 1, no_refresh = true },
	{ config_id = 4, name = "reminder_can_trigger", value = 0, no_refresh = false },
	{ config_id = 5, name = "isQuestNotify", value = 0, no_refresh = true }
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
		gadgets = { 30003, 30004, 30005, 30006, 30007 },
		regions = { 30009 },
		triggers = { "VARIABLE_CHANGE_30001", "QUEST_START_30002", "VARIABLE_CHANGE_30008", "ENTER_REGION_30009", "VARIABLE_CHANGE_30010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_30001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FailCount"为2
	if ScriptLib.GetGroupVariableValue(context, "FailCount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_30001(context, evt)
	-- 调用提示id为 32230105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6424，203，-2774），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6424, y=203, z=-2774}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_30002(context, evt)
	-- 判断变量"isQuestNotify"为0
	if ScriptLib.GetGroupVariableValue(context, "isQuestNotify") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_30002(context, evt)
	-- 将本组内变量名为 "isQuestNotify" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isQuestNotify", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_30008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finished"为1
	if ScriptLib.GetGroupVariableValue(context, "Finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_30008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "D2_AreaA_Puzzle_Finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30009(context, evt)
	if evt.param1 ~= 30009 then return false end
	
	-- 判断变量"isQuestNotify"为1
	if ScriptLib.GetGroupVariableValue(context, "isQuestNotify") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_30010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FailCount"为1
	if ScriptLib.GetGroupVariableValue(context, "FailCount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_30010(context, evt)
	-- 调用提示id为 31020830 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020830) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_2/TsurumiStoneSeq"