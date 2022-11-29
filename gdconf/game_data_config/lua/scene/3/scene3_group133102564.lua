-- 基础信息
local base_info = {
	group_id = 133102564
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 564001, monster_id = 21011001, pos = { x = 997.758, y = 209.031, z = 31.889 }, rot = { x = 357.586, y = 121.300, z = 0.503 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564002, monster_id = 21020201, pos = { x = 999.245, y = 206.433, z = 54.889 }, rot = { x = 8.112, y = 158.428, z = 4.493 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564003, monster_id = 21011001, pos = { x = 1020.811, y = 211.255, z = 44.943 }, rot = { x = 0.000, y = 192.930, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564004, monster_id = 21010601, pos = { x = 1003.679, y = 206.562, z = 48.371 }, rot = { x = 0.000, y = 159.508, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564020, monster_id = 21010301, pos = { x = 999.307, y = 206.418, z = 54.887 }, rot = { x = 0.656, y = 158.909, z = 13.863 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564021, monster_id = 21010301, pos = { x = 998.471, y = 206.471, z = 56.523 }, rot = { x = 1.441, y = 151.350, z = 17.049 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564022, monster_id = 21010201, pos = { x = 998.142, y = 206.695, z = 55.015 }, rot = { x = 1.030, y = 161.964, z = 14.415 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564023, monster_id = 21010201, pos = { x = 999.603, y = 206.209, z = 56.381 }, rot = { x = 356.329, y = 160.564, z = 16.023 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564024, monster_id = 21011201, pos = { x = 987.198, y = 210.248, z = 36.316 }, rot = { x = 0.000, y = 120.252, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564025, monster_id = 21011201, pos = { x = 1029.531, y = 205.728, z = 48.438 }, rot = { x = 0.000, y = 183.885, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 564026, monster_id = 21010601, pos = { x = 1001.015, y = 206.415, z = 51.432 }, rot = { x = 0.000, y = 159.508, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 564007, gadget_id = 70350036, pos = { x = 1013.184, y = 207.918, z = 25.312 }, rot = { x = 354.046, y = 161.735, z = 2.150 }, level = 1, area_id = 9 },
	{ config_id = 564008, gadget_id = 70300118, pos = { x = 1013.200, y = 209.552, z = 25.466 }, rot = { x = 0.536, y = 100.314, z = 3.856 }, level = 1, area_id = 9 },
	{ config_id = 564009, gadget_id = 70350023, pos = { x = 1013.158, y = 207.917, z = 25.323 }, rot = { x = 359.055, y = 100.183, z = 6.258 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 564019, gadget_id = 70220005, pos = { x = 1001.457, y = 206.663, z = 45.825 }, rot = { x = 358.011, y = 296.683, z = 354.016 }, level = 1, area_id = 9 },
	{ config_id = 564028, gadget_id = 70220010, pos = { x = 1012.295, y = 209.365, z = 15.488 }, rot = { x = 2.568, y = 15.815, z = 12.771 }, level = 1, area_id = 9 },
	{ config_id = 564029, gadget_id = 70220010, pos = { x = 1020.177, y = 209.019, z = 15.510 }, rot = { x = 1.595, y = 8.890, z = 2.890 }, level = 1, area_id = 9 },
	{ config_id = 564030, gadget_id = 70220005, pos = { x = 1001.618, y = 208.385, z = 30.373 }, rot = { x = 350.674, y = 297.853, z = 351.168 }, level = 1, area_id = 9 },
	{ config_id = 564031, gadget_id = 70220005, pos = { x = 1023.725, y = 207.724, z = 33.205 }, rot = { x = 5.508, y = 295.690, z = 354.749 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1564010, name = "ANY_MONSTER_DIE_564010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564010", action = "action_EVENT_ANY_MONSTER_DIE_564010", trigger_count = 0 },
	{ config_id = 1564011, name = "ANY_MONSTER_DIE_564011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564011", action = "action_EVENT_ANY_MONSTER_DIE_564011", trigger_count = 0 },
	{ config_id = 1564012, name = "GADGET_CREATE_564012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_564012", action = "action_EVENT_GADGET_CREATE_564012", trigger_count = 0 },
	{ config_id = 1564013, name = "ANY_MONSTER_DIE_564013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_564013", trigger_count = 0 },
	{ config_id = 1564014, name = "ANY_MONSTER_DIE_564014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564014", action = "action_EVENT_ANY_MONSTER_DIE_564014", trigger_count = 0 },
	{ config_id = 1564015, name = "SELECT_OPTION_564015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_564015", action = "action_EVENT_SELECT_OPTION_564015", trigger_count = 0 },
	{ config_id = 1564016, name = "CHALLENGE_SUCCESS_564016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_564016", trigger_count = 0 },
	{ config_id = 1564017, name = "CHALLENGE_FAIL_564017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_564017", trigger_count = 0 },
	{ config_id = 1564018, name = "ANY_MONSTER_LIVE_564018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_564018", action = "action_EVENT_ANY_MONSTER_LIVE_564018", trigger_count = 0 }
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
		gadgets = { 564009 },
		regions = { },
		triggers = { "GADGET_CREATE_564012", "ANY_MONSTER_DIE_564013", "SELECT_OPTION_564015", "CHALLENGE_SUCCESS_564016", "CHALLENGE_FAIL_564017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 564020, 564021, 564022, 564023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564010", "ANY_MONSTER_LIVE_564018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 564002, 564024, 564025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 564001, 564003, 564004, 564026 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 564007, 564019, 564028, 564029, 564030, 564031 },
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
function condition_EVENT_ANY_MONSTER_DIE_564010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1012, y=208, z=22}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1012,y=208,z=22}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1012, y=208, z=22}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1014,y=208,z=22}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_564012(context, evt)
	if 564009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_564012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102564, 564009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_564015(context, evt)
	-- 判断是gadgetid 564009 option_id 7
	if 564009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_564015(context, evt)
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 2)
	
	-- 删除指定group： 133102564 ；指定config：564009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102564, 564009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_564016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 5)
	
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_564017(context, evt)
	-- 将configid为 564009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102564, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102564, 564009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_564018(context, evt)
	if 564020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_564018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102564, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133102564, 11, 564007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end