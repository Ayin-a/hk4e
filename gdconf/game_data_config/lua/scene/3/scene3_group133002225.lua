-- 基础信息
local base_info = {
	group_id = 133002225
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424, monster_id = 28020307, pos = { x = 1775.372, y = 216.778, z = -362.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 425, monster_id = 28020307, pos = { x = 1769.714, y = 216.367, z = -349.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 426, monster_id = 28020307, pos = { x = 1810.058, y = 216.449, z = -360.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 427, monster_id = 28020307, pos = { x = 1798.159, y = 212.176, z = -337.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 428, monster_id = 28020307, pos = { x = 1801.776, y = 218.186, z = -371.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 429, monster_id = 28020307, pos = { x = 1769.582, y = 210.905, z = -331.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 430, monster_id = 28020307, pos = { x = 1759.190, y = 216.197, z = -358.537 }, rot = { x = 0.000, y = 274.292, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 431, monster_id = 28020307, pos = { x = 1770.657, y = 213.138, z = -340.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 },
	{ config_id = 432, monster_id = 28020307, pos = { x = 1800.492, y = 216.246, z = -357.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, ban_excel_drop = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225001, gadget_id = 70300080, pos = { x = 1810.917, y = 217.094, z = -372.638 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 225002, gadget_id = 70300080, pos = { x = 1753.035, y = 216.073, z = -358.818 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 225003, gadget_id = 70300080, pos = { x = 1805.632, y = 216.589, z = -361.117 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 225004, gadget_id = 70300080, pos = { x = 1774.901, y = 211.099, z = -331.032 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 225005, gadget_id = 70300080, pos = { x = 1751.889, y = 214.492, z = -346.999 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 225006, gadget_id = 70300080, pos = { x = 1758.696, y = 218.840, z = -368.073 }, rot = { x = 0.000, y = 22.136, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000151, name = "CHALLENGE_SUCCESS_151", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "142", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_151", trigger_count = 0, tlog_tag = "酒庄_225_驱赶野猪_成功" },
	{ config_id = 1000152, name = "CHALLENGE_FAIL_152", event = EventType.EVENT_CHALLENGE_FAIL, source = "142", condition = "", action = "action_EVENT_CHALLENGE_FAIL_152", trigger_count = 0, tlog_tag = "酒庄_225_驱赶野猪_失败" },
	{ config_id = 1000249, name = "ANY_MONSTER_LIVE_249", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_249", action = "action_EVENT_ANY_MONSTER_LIVE_249", tlog_tag = "酒庄_225_驱赶野猪_触发" }
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
	suite = 2,
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
		monsters = { 424, 425, 426, 427, 428, 429, 430, 431, 432 },
		gadgets = { 225001, 225002, 225003, 225004, 225005, 225006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_151", "CHALLENGE_FAIL_152", "ANY_MONSTER_LIVE_249" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_151(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002143, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002225, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002225") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_152(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002225, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002226") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_249(context, evt)
	if 424 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_249(context, evt)
	-- 触发镜头注目，注目位置为坐标（1784，217，-358），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1784, y=217, z=-358}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建编号为142（该挑战的识别id),挑战内容为124的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 142, 124, 120, 133002225, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end