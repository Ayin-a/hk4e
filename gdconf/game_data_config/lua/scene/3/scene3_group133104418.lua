-- 基础信息
local base_info = {
	group_id = 133104418
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 418001, monster_id = 21011201, pos = { x = 270.410, y = 213.967, z = 289.755 }, rot = { x = 0.000, y = 1.849, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418002, monster_id = 21010701, pos = { x = 245.334, y = 208.359, z = 361.927 }, rot = { x = 352.195, y = 143.321, z = 352.565 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418003, monster_id = 21010701, pos = { x = 243.853, y = 208.122, z = 361.071 }, rot = { x = 354.547, y = 123.413, z = 358.544 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418004, monster_id = 21010501, pos = { x = 262.901, y = 215.917, z = 333.587 }, rot = { x = 0.000, y = 152.505, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 418005, monster_id = 21010501, pos = { x = 266.941, y = 212.439, z = 327.412 }, rot = { x = 0.000, y = 313.741, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 418006, monster_id = 21020201, pos = { x = 270.951, y = 214.003, z = 289.619 }, rot = { x = 0.000, y = 348.897, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418019, monster_id = 21011201, pos = { x = 267.783, y = 214.794, z = 283.758 }, rot = { x = 359.030, y = 330.723, z = 356.026 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418020, monster_id = 21011201, pos = { x = 266.405, y = 215.035, z = 287.897 }, rot = { x = 0.000, y = 343.115, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418021, monster_id = 21010201, pos = { x = 288.710, y = 211.487, z = 340.436 }, rot = { x = 4.401, y = 225.217, z = 5.679 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418022, monster_id = 21010201, pos = { x = 287.856, y = 211.726, z = 341.910 }, rot = { x = 5.597, y = 211.815, z = 4.506 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 418028, monster_id = 21011201, pos = { x = 272.179, y = 214.104, z = 288.579 }, rot = { x = 0.000, y = 328.573, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 418007, gadget_id = 70350036, pos = { x = 262.635, y = 210.322, z = 330.095 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 418008, gadget_id = 70300118, pos = { x = 262.700, y = 212.082, z = 330.100 }, rot = { x = 353.699, y = 100.309, z = 359.761 }, level = 1, area_id = 9 },
	{ config_id = 418009, gadget_id = 70350023, pos = { x = 262.651, y = 210.322, z = 330.103 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 418023, gadget_id = 70220005, pos = { x = 266.153, y = 211.104, z = 310.459 }, rot = { x = 352.967, y = 180.597, z = 351.113 }, level = 1, area_id = 9 },
	{ config_id = 418024, gadget_id = 70220005, pos = { x = 262.816, y = 213.335, z = 297.333 }, rot = { x = 349.555, y = 179.178, z = 12.285 }, level = 1, area_id = 9 },
	{ config_id = 418025, gadget_id = 70220010, pos = { x = 268.654, y = 210.322, z = 332.890 }, rot = { x = 0.000, y = 223.883, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 418026, gadget_id = 70220005, pos = { x = 260.042, y = 210.231, z = 352.099 }, rot = { x = 359.078, y = 178.283, z = 359.132 }, level = 1, area_id = 9 },
	{ config_id = 418027, gadget_id = 70220005, pos = { x = 275.709, y = 210.232, z = 337.816 }, rot = { x = 16.708, y = 176.410, z = 348.801 }, level = 1, area_id = 9 },
	{ config_id = 418029, gadget_id = 70220010, pos = { x = 253.954, y = 210.232, z = 335.273 }, rot = { x = 0.000, y = 152.754, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1418010, name = "ANY_MONSTER_DIE_418010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418010", action = "action_EVENT_ANY_MONSTER_DIE_418010", trigger_count = 0 },
	{ config_id = 1418011, name = "ANY_MONSTER_DIE_418011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418011", action = "action_EVENT_ANY_MONSTER_DIE_418011", trigger_count = 0 },
	{ config_id = 1418012, name = "GADGET_CREATE_418012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418012", action = "action_EVENT_GADGET_CREATE_418012", trigger_count = 0 },
	{ config_id = 1418013, name = "ANY_MONSTER_DIE_418013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_418013", trigger_count = 0 },
	{ config_id = 1418014, name = "ANY_MONSTER_DIE_418014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418014", action = "action_EVENT_ANY_MONSTER_DIE_418014", trigger_count = 0 },
	{ config_id = 1418015, name = "SELECT_OPTION_418015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_418015", action = "action_EVENT_SELECT_OPTION_418015", trigger_count = 0 },
	{ config_id = 1418016, name = "CHALLENGE_SUCCESS_418016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_418016", trigger_count = 0 },
	{ config_id = 1418017, name = "CHALLENGE_FAIL_418017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_418017", trigger_count = 0 },
	{ config_id = 1418018, name = "ANY_MONSTER_LIVE_418018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_418018", action = "action_EVENT_ANY_MONSTER_LIVE_418018", trigger_count = 0 }
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
		gadgets = { 418009 },
		regions = { },
		triggers = { "GADGET_CREATE_418012", "ANY_MONSTER_DIE_418013", "SELECT_OPTION_418015", "CHALLENGE_SUCCESS_418016", "CHALLENGE_FAIL_418017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 418001, 418019, 418020, 418028 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418010", "ANY_MONSTER_LIVE_418018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 418002, 418003, 418021, 418022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 418004, 418005, 418006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_418014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 418007, 418023, 418024, 418025, 418026, 418027, 418029 },
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
function condition_EVENT_ANY_MONSTER_DIE_418010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=262, y=210, z=329}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=262,y=210,z=329}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_418011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=262, y=210, z=329}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=262,y=210,z=329}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_418012(context, evt)
	if 418009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_418012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104418, 418009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_418014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_418014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_418015(context, evt)
	-- 判断是gadgetid 418009 option_id 7
	if 418009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_418015(context, evt)
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 2)
	
	-- 删除指定group： 133104418 ；指定config：418009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104418, 418009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_418016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 5)
	
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_418017(context, evt)
	-- 将configid为 418009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 418009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104418, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104418, 418009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_418018(context, evt)
	if 418019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_418018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104418, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133104418, 11, 418007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end