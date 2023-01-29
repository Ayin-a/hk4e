-- 基础信息
local base_info = {
	group_id = 133317045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 21010701, pos = { x = 579.853, y = 212.483, z = 5721.427 }, rot = { x = 0.000, y = 135.601, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45002, monster_id = 21010701, pos = { x = 577.877, y = 212.450, z = 5716.263 }, rot = { x = 0.000, y = 138.200, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45003, monster_id = 21010701, pos = { x = 584.749, y = 212.464, z = 5720.983 }, rot = { x = 0.000, y = 148.823, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45004, monster_id = 21020201, pos = { x = 595.783, y = 212.450, z = 5704.025 }, rot = { x = 0.000, y = 313.278, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45005, monster_id = 21011001, pos = { x = 597.033, y = 212.450, z = 5697.845 }, rot = { x = 0.000, y = 336.813, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45006, monster_id = 21030101, pos = { x = 581.812, y = 212.450, z = 5718.529 }, rot = { x = 0.000, y = 143.100, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 },
	{ config_id = 45007, monster_id = 21011001, pos = { x = 601.530, y = 212.466, z = 5703.126 }, rot = { x = 0.000, y = 290.248, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45008, gadget_id = 70710262, pos = { x = 588.210, y = 212.450, z = 5710.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 30 },
	{ config_id = 45009, gadget_id = 70350023, pos = { x = 588.211, y = 212.450, z = 5710.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 30 },
	{ config_id = 45010, gadget_id = 70350036, pos = { x = 588.211, y = 212.450, z = 5710.102 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 24, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045011, name = "CHALLENGE_FAIL_45011", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_45011", trigger_count = 0 },
	{ config_id = 1045012, name = "GADGET_CREATE_45012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_45012", action = "action_EVENT_GADGET_CREATE_45012", trigger_count = 0 },
	{ config_id = 1045013, name = "ANY_MONSTER_DIE_45013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_45013", trigger_count = 0 },
	{ config_id = 1045014, name = "SELECT_OPTION_45014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_45014", action = "action_EVENT_SELECT_OPTION_45014", trigger_count = 0 },
	{ config_id = 1045015, name = "CHALLENGE_SUCCESS_45015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_45015", trigger_count = 0 },
	{ config_id = 1045016, name = "ANY_MONSTER_DIE_45016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45016", action = "action_EVENT_ANY_MONSTER_DIE_45016", trigger_count = 0 },
	{ config_id = 1045017, name = "ANY_MONSTER_LIVE_45017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_45017", action = "action_EVENT_ANY_MONSTER_LIVE_45017", trigger_count = 0 },
	{ config_id = 1045018, name = "ANY_MONSTER_DIE_45018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45018", action = "action_EVENT_ANY_MONSTER_DIE_45018", trigger_count = 0 }
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
		gadgets = { 45008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45009 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_45011", "GADGET_CREATE_45012", "ANY_MONSTER_DIE_45013", "SELECT_OPTION_45014", "CHALLENGE_SUCCESS_45015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 45001, 45002, 45003, 45006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45016", "ANY_MONSTER_LIVE_45017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 45004, 45005, 45007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 45010 },
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
function action_EVENT_CHALLENGE_FAIL_45011(context, evt)
	-- 将configid为 45009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317045, 45009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_45012(context, evt)
	if 45009 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_45012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133317045, 45009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_45014(context, evt)
	-- 判断是gadgetid 45009 option_id 7
	if 45009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_45014(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-388,y=270,z=531}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31070401, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将configid为 45009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317045, 3)
	
	-- 删除指定group： 133317045 ；指定config：45009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133317045, 45009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 调用提示id为 33170101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33170101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_45015(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 5)
	
	-- 将configid为 45009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45009, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7323213") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45016(context, evt)
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
	    ScriptLib.AddExtraGroupSuite(context, 133317045, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_45017(context, evt)
	if 45001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_45017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317045, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为219的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 219, 133317045, 7, 45010, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45018(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133317045, 4)
	
	return 0
end