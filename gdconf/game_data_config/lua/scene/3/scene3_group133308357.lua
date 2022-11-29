-- 基础信息
local base_info = {
	group_id = 133308357
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357001, monster_id = 25210401, pos = { x = -1601.290, y = 125.704, z = 4876.345 }, rot = { x = 0.000, y = 355.559, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357002, monster_id = 25210301, pos = { x = -1585.441, y = 125.619, z = 4884.055 }, rot = { x = 0.000, y = 302.662, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357003, monster_id = 25210301, pos = { x = -1586.516, y = 125.048, z = 4886.382 }, rot = { x = 0.000, y = 307.043, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357004, monster_id = 25310101, pos = { x = -1596.051, y = 122.063, z = 4899.457 }, rot = { x = 0.000, y = 139.815, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, pose_id = 1, area_id = 26 },
	{ config_id = 357005, monster_id = 25210201, pos = { x = -1594.170, y = 122.582, z = 4897.218 }, rot = { x = 0.000, y = 140.453, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357006, monster_id = 25210201, pos = { x = -1598.443, y = 122.361, z = 4897.884 }, rot = { x = 0.000, y = 140.569, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357007, monster_id = 25210401, pos = { x = -1598.809, y = 125.762, z = 4876.449 }, rot = { x = 0.000, y = 355.841, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357008, monster_id = 25210201, pos = { x = -1596.085, y = 125.889, z = 4876.591 }, rot = { x = 0.000, y = 355.759, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357009, monster_id = 25210201, pos = { x = -1593.604, y = 126.039, z = 4876.695 }, rot = { x = 0.000, y = 355.806, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357010, monster_id = 25210501, pos = { x = -1582.590, y = 126.015, z = 4883.732 }, rot = { x = 0.000, y = 302.875, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 357011, monster_id = 25210501, pos = { x = -1583.656, y = 125.373, z = 4886.060 }, rot = { x = 0.000, y = 306.744, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 357012, gadget_id = 70350036, pos = { x = -1596.859, y = 124.050, z = 4889.076 }, rot = { x = 354.819, y = 99.738, z = 8.989 }, level = 1, area_id = 26 },
	{ config_id = 357013, gadget_id = 70350023, pos = { x = -1596.864, y = 124.050, z = 4889.073 }, rot = { x = 354.673, y = 100.670, z = 8.904 }, level = 30, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1357014, name = "ANY_MONSTER_DIE_357014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357014", action = "action_EVENT_ANY_MONSTER_DIE_357014", trigger_count = 0 },
	{ config_id = 1357015, name = "ANY_MONSTER_DIE_357015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357015", action = "action_EVENT_ANY_MONSTER_DIE_357015", trigger_count = 0 },
	{ config_id = 1357016, name = "GADGET_CREATE_357016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_357016", action = "action_EVENT_GADGET_CREATE_357016", trigger_count = 0 },
	{ config_id = 1357017, name = "ANY_MONSTER_DIE_357017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_357017", trigger_count = 0 },
	{ config_id = 1357018, name = "ANY_MONSTER_DIE_357018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_357018", action = "action_EVENT_ANY_MONSTER_DIE_357018", trigger_count = 0 },
	{ config_id = 1357019, name = "SELECT_OPTION_357019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_357019", action = "action_EVENT_SELECT_OPTION_357019", trigger_count = 0 },
	{ config_id = 1357020, name = "CHALLENGE_SUCCESS_357020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_357020", trigger_count = 0 },
	{ config_id = 1357021, name = "CHALLENGE_FAIL_357021", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_357021", trigger_count = 0 },
	{ config_id = 1357022, name = "ANY_MONSTER_LIVE_357022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_357022", action = "action_EVENT_ANY_MONSTER_LIVE_357022", trigger_count = 0 }
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
		gadgets = { 357013 },
		regions = { },
		triggers = { "GADGET_CREATE_357016", "ANY_MONSTER_DIE_357017", "SELECT_OPTION_357019", "CHALLENGE_SUCCESS_357020", "CHALLENGE_FAIL_357021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 357001, 357007, 357008, 357009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357014", "ANY_MONSTER_LIVE_357022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 357002, 357003, 357010, 357011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 357004, 357005, 357006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_357018" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 357012 },
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
function condition_EVENT_ANY_MONSTER_DIE_357014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357014(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1594, y=125, z=4883}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1594,y=125,z=4883}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308357, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_357015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357015(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1594, y=125, z=4883}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1594,y=125,z=4883}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308357, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_357016(context, evt)
	if 357013 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_357016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308357, 357013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357017(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_357018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_357018(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_357019(context, evt)
	-- 判断是gadgetid 357013 option_id 7
	if 357013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_357019(context, evt)
	-- 将configid为 357013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308357, 2)
	
	-- 删除指定group： 133308357 ；指定config：357013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308357, 357013, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_357020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 5)
	
	-- 将configid为 357013 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357013, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_357021(context, evt)
	-- 将configid为 357013 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 357013, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308357, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308357, 357013, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_357022(context, evt)
	if 357001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_357022(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308357, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133308357, 11, 357012, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end