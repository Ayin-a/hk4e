-- 基础信息
local base_info = {
	group_id = 133217132
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
	{ config_id = 132001, gadget_id = 70290087, pos = { x = -4727.149, y = 220.931, z = -3751.214 }, rot = { x = 354.981, y = 73.195, z = 2.225 }, level = 30, area_id = 14 },
	{ config_id = 132002, gadget_id = 70290088, pos = { x = -4727.124, y = 220.831, z = -3751.303 }, rot = { x = 354.981, y = 73.195, z = 4.678 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132003, name = "QUEST_FINISH_132003", event = EventType.EVENT_QUEST_FINISH, source = "7220903", condition = "", action = "action_EVENT_QUEST_FINISH_132003", trigger_count = 0 },
	{ config_id = 1132004, name = "TIME_AXIS_PASS_132004", event = EventType.EVENT_TIME_AXIS_PASS, source = "Fix", condition = "condition_EVENT_TIME_AXIS_PASS_132004", action = "action_EVENT_TIME_AXIS_PASS_132004", trigger_count = 0 },
	{ config_id = 1132005, name = "TIME_AXIS_PASS_132005", event = EventType.EVENT_TIME_AXIS_PASS, source = "Sound", condition = "condition_EVENT_TIME_AXIS_PASS_132005", action = "action_EVENT_TIME_AXIS_PASS_132005", trigger_count = 0 },
	{ config_id = 1132006, name = "TIME_AXIS_PASS_132006", event = EventType.EVENT_TIME_AXIS_PASS, source = "Sound", condition = "condition_EVENT_TIME_AXIS_PASS_132006", action = "action_EVENT_TIME_AXIS_PASS_132006", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 132001 },
		regions = { },
		triggers = { "QUEST_FINISH_132003", "TIME_AXIS_PASS_132004", "TIME_AXIS_PASS_132005", "TIME_AXIS_PASS_132006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 132002 },
		regions = { },
		triggers = { "QUEST_FINISH_132003", "TIME_AXIS_PASS_132004", "TIME_AXIS_PASS_132005", "TIME_AXIS_PASS_132006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_132003(context, evt)
	-- 创建标识为"Fix"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Fix", {2}, false)
	
	
	-- 创建标识为"Sound"，时间节点为{1,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Sound", {1,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_132004(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_132004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217132, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_132005(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_132005(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4727, y=222, z=-3751}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_132006(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_132006(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4727, y=222, z=-3751}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 2, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end