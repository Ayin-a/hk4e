-- 基础信息
local base_info = {
	group_id = 133104420
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 420001, monster_id = 21010201, pos = { x = 562.759, y = 197.342, z = 246.820 }, rot = { x = 0.000, y = 121.579, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420002, monster_id = 21010201, pos = { x = 617.915, y = 199.268, z = 224.186 }, rot = { x = 0.000, y = 306.573, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420003, monster_id = 21010201, pos = { x = 616.865, y = 199.051, z = 223.133 }, rot = { x = 0.000, y = 295.704, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420005, monster_id = 21010401, pos = { x = 591.236, y = 197.950, z = 245.367 }, rot = { x = 1.415, y = 188.128, z = 1.241 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420006, monster_id = 21010401, pos = { x = 586.976, y = 202.065, z = 225.668 }, rot = { x = 0.000, y = 349.453, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420019, monster_id = 21010201, pos = { x = 561.874, y = 197.071, z = 243.893 }, rot = { x = 354.825, y = 121.553, z = 0.566 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420020, monster_id = 21010201, pos = { x = 563.089, y = 197.163, z = 245.250 }, rot = { x = 358.378, y = 121.609, z = 357.861 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420021, monster_id = 21010201, pos = { x = 617.539, y = 199.337, z = 221.345 }, rot = { x = 0.000, y = 311.297, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420022, monster_id = 21010701, pos = { x = 564.682, y = 197.144, z = 244.840 }, rot = { x = 0.000, y = 116.826, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420023, monster_id = 21010701, pos = { x = 561.693, y = 197.430, z = 246.819 }, rot = { x = 0.000, y = 116.826, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 420025, monster_id = 21020101, pos = { x = 563.600, y = 196.953, z = 243.287 }, rot = { x = 3.568, y = 131.908, z = 358.196 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 420007, gadget_id = 70350036, pos = { x = 589.653, y = 197.950, z = 232.561 }, rot = { x = 0.000, y = 130.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 420008, gadget_id = 70300118, pos = { x = 589.600, y = 199.860, z = 232.600 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 420009, gadget_id = 70350023, pos = { x = 589.619, y = 197.917, z = 232.571 }, rot = { x = 0.000, y = 130.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 420026, gadget_id = 70220005, pos = { x = 598.405, y = 198.269, z = 230.944 }, rot = { x = 355.427, y = 129.782, z = 5.470 }, level = 1, area_id = 9 },
	{ config_id = 420027, gadget_id = 70220005, pos = { x = 587.651, y = 198.137, z = 225.691 }, rot = { x = 0.000, y = 128.989, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 420028, gadget_id = 70220005, pos = { x = 580.627, y = 197.950, z = 236.913 }, rot = { x = 0.000, y = 128.989, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1420010, name = "ANY_MONSTER_DIE_420010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420010", action = "action_EVENT_ANY_MONSTER_DIE_420010", trigger_count = 0 },
	{ config_id = 1420011, name = "ANY_MONSTER_DIE_420011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420011", action = "action_EVENT_ANY_MONSTER_DIE_420011", trigger_count = 0 },
	{ config_id = 1420012, name = "GADGET_CREATE_420012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_420012", action = "action_EVENT_GADGET_CREATE_420012", trigger_count = 0 },
	{ config_id = 1420013, name = "ANY_MONSTER_DIE_420013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_420013", trigger_count = 0 },
	{ config_id = 1420014, name = "ANY_MONSTER_DIE_420014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420014", action = "action_EVENT_ANY_MONSTER_DIE_420014", trigger_count = 0 },
	{ config_id = 1420015, name = "SELECT_OPTION_420015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_420015", action = "action_EVENT_SELECT_OPTION_420015", trigger_count = 0 },
	{ config_id = 1420016, name = "CHALLENGE_SUCCESS_420016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420016", trigger_count = 0 },
	{ config_id = 1420017, name = "CHALLENGE_FAIL_420017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420017", trigger_count = 0 },
	{ config_id = 1420018, name = "ANY_MONSTER_LIVE_420018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_420018", action = "action_EVENT_ANY_MONSTER_LIVE_420018", trigger_count = 0 }
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
		gadgets = { 420009 },
		regions = { },
		triggers = { "GADGET_CREATE_420012", "ANY_MONSTER_DIE_420013", "SELECT_OPTION_420015", "CHALLENGE_SUCCESS_420016", "CHALLENGE_FAIL_420017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 420001, 420019, 420020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420010", "ANY_MONSTER_LIVE_420018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 420002, 420003, 420021, 420022, 420023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 420005, 420006, 420025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_420014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 420007, 420026, 420027, 420028 },
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
function condition_EVENT_ANY_MONSTER_DIE_420010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=569, y=200, z=231}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=569,y=200,z=231}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_420011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=569, y=200, z=231}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=569,y=200,z=231}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_420012(context, evt)
	if 420009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_420012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104420, 420009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_420014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_420014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_420015(context, evt)
	-- 判断是gadgetid 420009 option_id 7
	if 420009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_420015(context, evt)
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 2)
	
	-- 删除指定group： 133104420 ；指定config：420009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104420, 420009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_420016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 5)
	
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_420017(context, evt)
	-- 将configid为 420009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 420009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104420, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104420, 420009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_420018(context, evt)
	if 420001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_420018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104420, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133104420, 11, 420007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end