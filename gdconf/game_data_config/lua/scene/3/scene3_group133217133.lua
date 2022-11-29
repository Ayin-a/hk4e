-- 基础信息
local base_info = {
	group_id = 133217133
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
	{ config_id = 133001, gadget_id = 70290089, pos = { x = -4712.090, y = 215.278, z = -3673.781 }, rot = { x = 0.000, y = 157.527, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 133002, gadget_id = 70290090, pos = { x = -4712.090, y = 215.278, z = -3673.781 }, rot = { x = 0.000, y = 157.527, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133003, name = "QUEST_FINISH_133003", event = EventType.EVENT_QUEST_FINISH, source = "7215513", condition = "", action = "action_EVENT_QUEST_FINISH_133003", trigger_count = 0 },
	{ config_id = 1133004, name = "TIME_AXIS_PASS_133004", event = EventType.EVENT_TIME_AXIS_PASS, source = "Finish", condition = "condition_EVENT_TIME_AXIS_PASS_133004", action = "action_EVENT_TIME_AXIS_PASS_133004", trigger_count = 0 },
	{ config_id = 1133005, name = "TIME_AXIS_PASS_133005", event = EventType.EVENT_TIME_AXIS_PASS, source = "Sound", condition = "condition_EVENT_TIME_AXIS_PASS_133005", action = "action_EVENT_TIME_AXIS_PASS_133005", trigger_count = 0 },
	{ config_id = 1133006, name = "TIME_AXIS_PASS_133006", event = EventType.EVENT_TIME_AXIS_PASS, source = "Sound", condition = "condition_EVENT_TIME_AXIS_PASS_133006", action = "action_EVENT_TIME_AXIS_PASS_133006", trigger_count = 0 }
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
		gadgets = { 133001 },
		regions = { },
		triggers = { "QUEST_FINISH_133003", "TIME_AXIS_PASS_133004", "TIME_AXIS_PASS_133005", "TIME_AXIS_PASS_133006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133002 },
		regions = { },
		triggers = { "QUEST_FINISH_133003", "TIME_AXIS_PASS_133004", "TIME_AXIS_PASS_133005", "TIME_AXIS_PASS_133006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_133003(context, evt)
	-- 创建标识为"Finish"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Finish", {2}, false)
	
	
	-- 创建标识为"Sound"，时间节点为{1,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Sound", {1,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133004(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133217133, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133005(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133005(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4712, y=215, z=-3673}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133006(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133006(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-4712, y=215, z=-3673}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 2, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end