-- 基础信息
local base_info = {
	group_id = 199002054
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
	-- 终幕完成后团长
	{ config_id = 54001, gadget_id = 70310332, pos = { x = 499.991, y = 126.817, z = -445.489 }, rot = { x = 0.000, y = 115.795, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	-- 拍照后团长
	{ config_id = 54002, gadget_id = 70310332, pos = { x = 494.913, y = 128.693, z = -447.389 }, rot = { x = 0.000, y = 90.510, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	-- 占位无用
	{ config_id = 54003, gadget_id = 70360002, pos = { x = 494.461, y = 123.458, z = -448.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	-- 拍照中团长
	{ config_id = 54010, gadget_id = 70310332, pos = { x = 494.927, y = 128.693, z = -447.376 }, rot = { x = 0.000, y = 92.883, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	{ config_id = 54014, gadget_id = 70310175, pos = { x = 495.180, y = 128.691, z = -449.351 }, rot = { x = 0.000, y = 58.175, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54015, gadget_id = 70310175, pos = { x = 494.621, y = 128.691, z = -449.100 }, rot = { x = 0.000, y = 77.243, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54016, gadget_id = 70310175, pos = { x = 495.440, y = 128.691, z = -449.943 }, rot = { x = 0.000, y = 52.133, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54017, gadget_id = 70310175, pos = { x = 494.628, y = 128.697, z = -445.557 }, rot = { x = 0.000, y = 121.576, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54018, gadget_id = 70310266, pos = { x = 494.399, y = 128.687, z = -446.219 }, rot = { x = 0.000, y = 114.125, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54019, gadget_id = 70310175, pos = { x = 493.771, y = 128.675, z = -446.683 }, rot = { x = 0.000, y = 95.019, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54020, gadget_id = 70310175, pos = { x = 502.880, y = 126.347, z = -447.262 }, rot = { x = 355.162, y = 265.334, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 54021, gadget_id = 70710787, pos = { x = 502.218, y = 126.484, z = -447.148 }, rot = { x = 355.003, y = 272.111, z = 0.712 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054004, name = "GADGETTALK_DONE_54004", event = EventType.EVENT_GADGETTALK_DONE, source = "6800256", condition = "", action = "action_EVENT_GADGETTALK_DONE_54004", trigger_count = 0 },
	{ config_id = 1054005, name = "GADGETTALK_DONE_54005", event = EventType.EVENT_GADGETTALK_DONE, source = "6800257", condition = "", action = "action_EVENT_GADGETTALK_DONE_54005", trigger_count = 0 },
	{ config_id = 1054006, name = "QUEST_START_54006", event = EventType.EVENT_QUEST_START, source = "7902606", condition = "", action = "action_EVENT_QUEST_START_54006", trigger_count = 0 },
	{ config_id = 1054007, name = "QUEST_START_54007", event = EventType.EVENT_QUEST_START, source = "7902607", condition = "", action = "action_EVENT_QUEST_START_54007", trigger_count = 0 },
	{ config_id = 1054008, name = "GADGETTALK_DONE_54008", event = EventType.EVENT_GADGETTALK_DONE, source = "6800259", condition = "", action = "action_EVENT_GADGETTALK_DONE_54008", trigger_count = 0 },
	{ config_id = 1054009, name = "QUEST_START_54009", event = EventType.EVENT_QUEST_START, source = "7902605", condition = "", action = "action_EVENT_QUEST_START_54009", trigger_count = 0 },
	{ config_id = 1054011, name = "GADGETTALK_DONE_54011", event = EventType.EVENT_GADGETTALK_DONE, source = "6800273", condition = "", action = "action_EVENT_GADGETTALK_DONE_54011", trigger_count = 0 },
	-- 使用reminder1111284
	{ config_id = 1054012, name = "QUEST_START_54012", event = EventType.EVENT_QUEST_START, source = "7902604", condition = "", action = "action_EVENT_QUEST_START_54012", trigger_count = 0 },
	{ config_id = 1054013, name = "GADGETTALK_DONE_54013", event = EventType.EVENT_GADGETTALK_DONE, source = "6810258", condition = "", action = "action_EVENT_GADGETTALK_DONE_54013", trigger_count = 0 },
	{ config_id = 1054022, name = "QUEST_FINISH_54022", event = EventType.EVENT_QUEST_FINISH, source = "7902607", condition = "", action = "action_EVENT_QUEST_FINISH_54022", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 54003 },
		regions = { },
		triggers = { "GADGETTALK_DONE_54004", "GADGETTALK_DONE_54005", "QUEST_START_54006", "QUEST_START_54007", "QUEST_START_54009", "GADGETTALK_DONE_54011", "QUEST_START_54012", "GADGETTALK_DONE_54013", "QUEST_FINISH_54022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 54001 },
		regions = { },
		triggers = { "GADGETTALK_DONE_54004", "GADGETTALK_DONE_54005", "QUEST_START_54006", "QUEST_START_54007", "QUEST_START_54009", "GADGETTALK_DONE_54011", "QUEST_START_54012", "QUEST_FINISH_54022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 54002 },
		regions = { },
		triggers = { "GADGETTALK_DONE_54004", "GADGETTALK_DONE_54005", "QUEST_START_54006", "QUEST_START_54007", "QUEST_START_54009", "GADGETTALK_DONE_54011", "QUEST_START_54012", "QUEST_FINISH_54022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 54010, 54014, 54015, 54016, 54017, 54018, 54019, 54020, 54021 },
		regions = { },
		triggers = { "GADGETTALK_DONE_54004", "GADGETTALK_DONE_54005", "QUEST_START_54006", "QUEST_START_54007", "GADGETTALK_DONE_54008", "QUEST_START_54009", "GADGETTALK_DONE_54011", "QUEST_START_54012", "QUEST_FINISH_54022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGETTALK_DONE_54004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902606") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_54005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902607") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_54006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002054, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_54007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002054, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_54008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "centerpoint") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_54009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 54001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002054, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_54011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "centerpoint") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_54012(context, evt)
	-- 调用提示id为 1111284 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111284) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_54013(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context,199002054,54010,6820283)
	
	return true
	
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199002054, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end