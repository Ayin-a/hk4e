-- 基础信息
local base_info = {
	group_id = 133107140
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 21010701, pos = { x = -400.809, y = 269.477, z = 545.165 }, rot = { x = 0.000, y = 135.200, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140002, monster_id = 21010701, pos = { x = -402.786, y = 269.269, z = 540.005 }, rot = { x = 0.000, y = 138.200, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140012, monster_id = 21010701, pos = { x = -395.914, y = 269.493, z = 544.721 }, rot = { x = 0.000, y = 148.800, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140013, monster_id = 21020201, pos = { x = -379.060, y = 270.068, z = 524.037 }, rot = { x = 0.000, y = 313.278, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140014, monster_id = 21011001, pos = { x = -377.809, y = 271.922, z = 517.855 }, rot = { x = 0.000, y = 336.813, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140017, monster_id = 21030101, pos = { x = -398.851, y = 269.943, z = 542.270 }, rot = { x = 0.000, y = 143.100, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 },
	{ config_id = 140021, monster_id = 21011001, pos = { x = -373.312, y = 271.144, z = 523.135 }, rot = { x = 0.000, y = 290.310, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140003, gadget_id = 70710262, pos = { x = -388.178, y = 270.535, z = 531.459 }, rot = { x = 351.120, y = 0.070, z = 359.105 }, level = 1, area_id = 7 },
	{ config_id = 140009, gadget_id = 70350023, pos = { x = -388.178, y = 270.535, z = 531.459 }, rot = { x = 351.120, y = 0.070, z = 359.105 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 140016, gadget_id = 70350036, pos = { x = -388.178, y = 270.559, z = 531.455 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1140004, name = "CHALLENGE_FAIL_140004", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_140004", trigger_count = 0 },
	{ config_id = 1140005, name = "GADGET_CREATE_140005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_140005", action = "action_EVENT_GADGET_CREATE_140005", trigger_count = 0 },
	{ config_id = 1140006, name = "ANY_MONSTER_DIE_140006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_140006", trigger_count = 0 },
	{ config_id = 1140007, name = "SELECT_OPTION_140007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_140007", action = "action_EVENT_SELECT_OPTION_140007", trigger_count = 0 },
	{ config_id = 1140008, name = "CHALLENGE_SUCCESS_140008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_140008", trigger_count = 0 },
	{ config_id = 1140010, name = "ANY_MONSTER_DIE_140010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140010", action = "action_EVENT_ANY_MONSTER_DIE_140010", trigger_count = 0 },
	{ config_id = 1140011, name = "ANY_MONSTER_LIVE_140011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_140011", action = "action_EVENT_ANY_MONSTER_LIVE_140011", trigger_count = 0 },
	{ config_id = 1140015, name = "ANY_MONSTER_DIE_140015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140015", action = "action_EVENT_ANY_MONSTER_DIE_140015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 140003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 140009 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_140004", "GADGET_CREATE_140005", "ANY_MONSTER_DIE_140006", "SELECT_OPTION_140007", "CHALLENGE_SUCCESS_140008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 140001, 140002, 140012, 140017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140010", "ANY_MONSTER_LIVE_140011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 140013, 140014, 140021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140015" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 140016 },
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

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_140004(context, evt)
	-- 将configid为 140009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107140, 140009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_140005(context, evt)
	if 140009 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_140005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133107140, 140009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_140007(context, evt)
	-- 判断是gadgetid 140009 option_id 7
	if 140009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_140007(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-388,y=270,z=531}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31070401, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将configid为 140009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107140, 3)
	
	-- 删除指定group： 133107140 ；指定config：140009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133107140, 140009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_140008(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 5)
	
	-- 将configid为 140009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140009, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133107140") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-388, y=270, z=531}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-388,y=270,z=531}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31070402, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107140, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_140011(context, evt)
	if 140001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_140011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107140, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为219的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 219, 133107140, 7, 140016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140015(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133107140, 4)
	
	return 0
end