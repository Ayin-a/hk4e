-- 基础信息
local base_info = {
	group_id = 133102547
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 547001, monster_id = 21010201, pos = { x = 1373.956, y = 204.117, z = 539.793 }, rot = { x = 355.881, y = 142.942, z = 357.515 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547002, monster_id = 21010301, pos = { x = 1376.424, y = 205.904, z = 483.875 }, rot = { x = 1.293, y = 50.786, z = 355.631 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547003, monster_id = 21010401, pos = { x = 1385.061, y = 211.297, z = 505.794 }, rot = { x = 356.802, y = 91.030, z = 359.585 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547004, monster_id = 21020201, pos = { x = 1433.313, y = 213.999, z = 509.094 }, rot = { x = 359.152, y = 263.869, z = 0.467 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547005, monster_id = 21010701, pos = { x = 1373.470, y = 204.123, z = 539.343 }, rot = { x = 352.510, y = 132.315, z = 359.023 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547006, monster_id = 21010301, pos = { x = 1376.381, y = 205.896, z = 483.820 }, rot = { x = 352.510, y = 49.167, z = 359.023 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547019, monster_id = 21010201, pos = { x = 1372.673, y = 204.073, z = 539.054 }, rot = { x = 355.881, y = 128.831, z = 357.515 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547020, monster_id = 21010701, pos = { x = 1372.416, y = 204.017, z = 540.222 }, rot = { x = 1.792, y = 133.439, z = 355.536 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547021, monster_id = 21010701, pos = { x = 1373.580, y = 204.220, z = 538.815 }, rot = { x = 1.481, y = 125.898, z = 354.776 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547022, monster_id = 21010301, pos = { x = 1375.689, y = 205.878, z = 484.887 }, rot = { x = 356.802, y = 44.999, z = 359.585 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 547023, monster_id = 21010301, pos = { x = 1377.045, y = 205.945, z = 483.100 }, rot = { x = 356.802, y = 44.999, z = 359.585 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 547007, gadget_id = 70350036, pos = { x = 1401.166, y = 209.598, z = 510.168 }, rot = { x = 348.806, y = 100.163, z = 1.351 }, level = 1, area_id = 5 },
	{ config_id = 547008, gadget_id = 70300118, pos = { x = 1400.888, y = 210.263, z = 510.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 547009, gadget_id = 70350023, pos = { x = 1401.176, y = 209.500, z = 510.165 }, rot = { x = 348.806, y = 100.163, z = 1.351 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 547024, gadget_id = 70220005, pos = { x = 1385.550, y = 205.793, z = 529.530 }, rot = { x = 2.129, y = 102.274, z = 358.632 }, level = 1, area_id = 5 },
	{ config_id = 547025, gadget_id = 70220005, pos = { x = 1388.517, y = 207.717, z = 519.597 }, rot = { x = 354.755, y = 101.285, z = 16.652 }, level = 1, area_id = 5 },
	{ config_id = 547026, gadget_id = 70220005, pos = { x = 1420.461, y = 213.810, z = 506.311 }, rot = { x = 359.817, y = 102.087, z = 1.342 }, level = 1, area_id = 5 },
	{ config_id = 547027, gadget_id = 70220005, pos = { x = 1386.405, y = 207.883, z = 492.072 }, rot = { x = 353.932, y = 100.379, z = 3.412 }, level = 1, area_id = 5 },
	{ config_id = 547028, gadget_id = 70220005, pos = { x = 1390.052, y = 208.582, z = 501.257 }, rot = { x = 12.016, y = 103.657, z = 17.200 }, level = 1, area_id = 5 },
	{ config_id = 547029, gadget_id = 70220010, pos = { x = 1403.791, y = 210.366, z = 507.293 }, rot = { x = 347.123, y = 324.738, z = 32.688 }, level = 1, area_id = 5 },
	{ config_id = 547030, gadget_id = 70220010, pos = { x = 1388.935, y = 209.068, z = 509.900 }, rot = { x = 0.547, y = 74.769, z = 5.402 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1547010, name = "ANY_MONSTER_DIE_547010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547010", action = "action_EVENT_ANY_MONSTER_DIE_547010", trigger_count = 0 },
	{ config_id = 1547011, name = "ANY_MONSTER_DIE_547011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547011", action = "action_EVENT_ANY_MONSTER_DIE_547011", trigger_count = 0 },
	{ config_id = 1547012, name = "GADGET_CREATE_547012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_547012", action = "action_EVENT_GADGET_CREATE_547012", trigger_count = 0 },
	{ config_id = 1547013, name = "ANY_MONSTER_DIE_547013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_547013", trigger_count = 0 },
	{ config_id = 1547014, name = "ANY_MONSTER_DIE_547014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547014", action = "action_EVENT_ANY_MONSTER_DIE_547014", trigger_count = 0 },
	{ config_id = 1547015, name = "SELECT_OPTION_547015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_547015", action = "action_EVENT_SELECT_OPTION_547015", trigger_count = 0 },
	{ config_id = 1547016, name = "CHALLENGE_SUCCESS_547016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_547016", trigger_count = 0 },
	{ config_id = 1547017, name = "CHALLENGE_FAIL_547017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_547017", trigger_count = 0 },
	{ config_id = 1547018, name = "ANY_MONSTER_LIVE_547018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_547018", action = "action_EVENT_ANY_MONSTER_LIVE_547018", trigger_count = 0 }
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
		gadgets = { 547009 },
		regions = { },
		triggers = { "GADGET_CREATE_547012", "ANY_MONSTER_DIE_547013", "SELECT_OPTION_547015", "CHALLENGE_SUCCESS_547016", "CHALLENGE_FAIL_547017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 547001, 547019, 547020, 547021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547010", "ANY_MONSTER_LIVE_547018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 547002, 547003, 547022, 547023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 547004, 547005, 547006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_547014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 547007, 547024, 547025, 547026, 547027, 547028, 547029, 547030 },
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
function condition_EVENT_ANY_MONSTER_DIE_547010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1399, y=209, z=510}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1401,y=209,z=510}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_547011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1399, y=209, z=510}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1401,y=209,z=510}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_547012(context, evt)
	if 547009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_547012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102547, 547009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_547014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_547015(context, evt)
	-- 判断是gadgetid 547009 option_id 7
	if 547009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_547015(context, evt)
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 2)
	
	-- 删除指定group： 133102547 ；指定config：547009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102547, 547009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_547016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 5)
	
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_547017(context, evt)
	-- 将configid为 547009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102547, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102547, 547009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_547018(context, evt)
	if 547001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_547018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102547, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133102547, 11, 547007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end