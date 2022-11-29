-- 基础信息
local base_info = {
	group_id = 133106908
}

-- Trigger变量
local defs = {
	duration = 80,
	group_id = 133106908
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
	{ config_id = 908001, gadget_id = 70211111, pos = { x = -583.204, y = 265.760, z = 941.547 }, rot = { x = 0.000, y = 153.790, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 908003, gadget_id = 70690001, pos = { x = -676.593, y = 249.513, z = 1002.673 }, rot = { x = 30.248, y = 58.873, z = 7.839 }, level = 32, area_id = 8 },
	{ config_id = 908004, gadget_id = 70900201, pos = { x = -583.154, y = 267.242, z = 941.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908007, gadget_id = 70690001, pos = { x = -643.664, y = 245.103, z = 982.782 }, rot = { x = 22.462, y = 212.052, z = 358.233 }, level = 32, area_id = 8 },
	{ config_id = 908009, gadget_id = 70690001, pos = { x = -652.159, y = 230.896, z = 959.401 }, rot = { x = 359.633, y = 155.814, z = 5.086 }, level = 32, area_id = 8 },
	{ config_id = 908010, gadget_id = 70690001, pos = { x = -649.549, y = 240.518, z = 973.382 }, rot = { x = 38.969, y = 190.512, z = 348.148 }, level = 32, area_id = 8 },
	{ config_id = 908011, gadget_id = 70690001, pos = { x = -756.038, y = 221.836, z = 975.781 }, rot = { x = 331.851, y = 88.920, z = 0.014 }, level = 32, area_id = 8 },
	{ config_id = 908013, gadget_id = 70690006, pos = { x = -731.772, y = 218.000, z = 975.734 }, rot = { x = 0.000, y = 98.325, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908014, gadget_id = 70690001, pos = { x = -636.534, y = 243.954, z = 929.802 }, rot = { x = 13.068, y = 153.436, z = 8.535 }, level = 32, area_id = 8 },
	{ config_id = 908015, gadget_id = 70690006, pos = { x = -635.851, y = 214.000, z = 1008.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908016, gadget_id = 70690001, pos = { x = -708.566, y = 251.973, z = 977.233 }, rot = { x = 0.000, y = 72.726, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908017, gadget_id = 70690001, pos = { x = -629.719, y = 241.810, z = 916.547 }, rot = { x = 24.918, y = 150.442, z = 6.919 }, level = 32, area_id = 8 },
	{ config_id = 908018, gadget_id = 70690001, pos = { x = -697.113, y = 252.290, z = 981.352 }, rot = { x = 0.511, y = 45.912, z = 3.035 }, level = 32, area_id = 8 },
	{ config_id = 908019, gadget_id = 70690001, pos = { x = -634.785, y = 247.222, z = 991.677 }, rot = { x = 10.305, y = 223.713, z = 358.923 }, level = 32, area_id = 8 },
	{ config_id = 908020, gadget_id = 70690001, pos = { x = -686.204, y = 251.791, z = 992.849 }, rot = { x = 8.094, y = 44.859, z = 359.031 }, level = 32, area_id = 8 },
	{ config_id = 908021, gadget_id = 70690001, pos = { x = -595.036, y = 238.920, z = 890.403 }, rot = { x = 355.190, y = 102.791, z = 3.570 }, level = 32, area_id = 8 },
	{ config_id = 908022, gadget_id = 70690006, pos = { x = -640.526, y = 208.000, z = 943.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908023, gadget_id = 70690001, pos = { x = -666.355, y = 243.301, z = 1008.684 }, rot = { x = 15.382, y = 80.124, z = 2.070 }, level = 32, area_id = 8 },
	{ config_id = 908024, gadget_id = 70690001, pos = { x = -622.604, y = 235.691, z = 903.444 }, rot = { x = 8.941, y = 125.839, z = 3.829 }, level = 32, area_id = 8 },
	{ config_id = 908025, gadget_id = 70690001, pos = { x = -610.405, y = 234.197, z = 894.997 }, rot = { x = 339.102, y = 106.460, z = 3.384 }, level = 32, area_id = 8 },
	{ config_id = 908026, gadget_id = 70690006, pos = { x = -572.425, y = 207.000, z = 885.442 }, rot = { x = 0.000, y = 98.325, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908028, gadget_id = 70690001, pos = { x = -557.482, y = 243.060, z = 888.510 }, rot = { x = 352.001, y = 75.851, z = 9.507 }, level = 32, area_id = 8 },
	{ config_id = 908029, gadget_id = 70690001, pos = { x = -544.691, y = 244.000, z = 892.728 }, rot = { x = 354.862, y = 30.184, z = 13.941 }, level = 32, area_id = 8 },
	{ config_id = 908030, gadget_id = 70690001, pos = { x = -540.163, y = 246.000, z = 903.848 }, rot = { x = 356.395, y = 345.753, z = 6.520 }, level = 32, area_id = 8 },
	{ config_id = 908031, gadget_id = 70690001, pos = { x = -553.923, y = 260.761, z = 935.441 }, rot = { x = 276.155, y = 279.696, z = 47.865 }, level = 32, area_id = 8 },
	{ config_id = 908032, gadget_id = 70690006, pos = { x = -552.435, y = 217.000, z = 934.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 908033, gadget_id = 70690001, pos = { x = -553.030, y = 252.061, z = 935.288 }, rot = { x = 276.155, y = 279.696, z = 47.865 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1908002, name = "GADGET_STATE_CHANGE_908002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_908002", action = "", trigger_count = 0, tag = "209" },
	{ config_id = 1908005, name = "CHALLENGE_SUCCESS_908005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_908005" },
	{ config_id = 1908006, name = "CHALLENGE_FAIL_908006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_908006", trigger_count = 0 },
	{ config_id = 1908027, name = "TIMER_EVENT_908027", event = EventType.EVENT_TIMER_EVENT, source = "challenge_delay", condition = "", action = "action_EVENT_TIMER_EVENT_908027", trigger_count = 0 },
	{ config_id = 1908034, name = "QUEST_START_908034", event = EventType.EVENT_QUEST_START, source = "1101118", condition = "", action = "action_EVENT_QUEST_START_908034", trigger_count = 0 }
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
	suite = 4,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_908002", "CHALLENGE_SUCCESS_908005", "CHALLENGE_FAIL_908006", "TIMER_EVENT_908027", "QUEST_START_908034" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 908003, 908004, 908007, 908009, 908010, 908011, 908013, 908014, 908015, 908016, 908017, 908018, 908019, 908020, 908021, 908022, 908023, 908024, 908025, 908026, 908028, 908029, 908030, 908031, 908032, 908033 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 908001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_908002(context, evt)
	if 908001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_908005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106908, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_908006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310690802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106908, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106908, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_908027(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为209的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 209, 80, 7, 209, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_908034(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106908, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106908, 3)
	
	-- 延迟4秒后,向groupId为：133106908的对象,请求一次调用,并将string参数："challenge_delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133106908, "challenge_delay", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-583，267，942），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-583, y=267, z=942}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end