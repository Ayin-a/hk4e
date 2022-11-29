-- 基础信息
local base_info = {
	group_id = 133302068
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {68001}, 
    -- 1,2,3,4对应4套等级
    curCommander =1,
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
}

-- 区域
regions = {
	{ config_id = 68001, shape = RegionShape.POLYGON, pos = { x = -633.387, y = 146.883, z = 2327.944 }, height = 116.234, point_array = { { x = -787.397, y = 2302.303 }, { x = -725.795, y = 2330.206 }, { x = -726.061, y = 2383.397 }, { x = -631.528, y = 2454.727 }, { x = -602.049, y = 2404.707 }, { x = -553.312, y = 2381.214 }, { x = -522.977, y = 2384.771 }, { x = -511.888, y = 2352.229 }, { x = -477.867, y = 2343.587 }, { x = -495.997, y = 2233.807 }, { x = -591.326, y = 2201.161 }, { x = -669.744, y = 2218.873 }, { x = -723.581, y = 2239.826 }, { x = -788.906, y = 2268.581 } }, area_id = 24 },
	-- 进门reminder
	{ config_id = 68002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -768.396, y = 163.065, z = 2286.563 }, area_id = 24 }
}

-- 触发器
triggers = {
	-- 进门reminder
	{ config_id = 1068002, name = "ENTER_REGION_68002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68002", action = "action_EVENT_ENTER_REGION_68002" },
	{ config_id = 1068003, name = "TIME_AXIS_PASS_68003", event = EventType.EVENT_TIME_AXIS_PASS, source = "rmd", condition = "condition_EVENT_TIME_AXIS_PASS_68003", action = "action_EVENT_TIME_AXIS_PASS_68003" },
	{ config_id = 1068004, name = "QUEST_START_68004", event = EventType.EVENT_QUEST_START, source = "7306112", condition = "", action = "action_EVENT_QUEST_START_68004", trigger_count = 0 },
	{ config_id = 1068007, name = "QUEST_START_68007", event = EventType.EVENT_QUEST_START, source = "7306108", condition = "", action = "action_EVENT_QUEST_START_68007", trigger_count = 0 }
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
	end_suite = 3,
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
		triggers = { "QUEST_START_68007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 68001, 68002 },
		triggers = { "ENTER_REGION_68002", "TIME_AXIS_PASS_68003", "QUEST_START_68004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_68002(context, evt)
	if evt.param1 ~= 68002 then return false end
	
	-- 判断是区域68002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 68002 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7306108)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68002(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-772.9703, y=163.8771, z=2286.081}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-772.9703, y=163.8771, z=2286.081}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建标识为"rmd"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd", {4}, false)
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7015, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68003(context, evt)
	if "rmd" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68003(context, evt)
	-- 调用提示id为 60010416 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_68004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302068, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302068, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_68007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302068, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"