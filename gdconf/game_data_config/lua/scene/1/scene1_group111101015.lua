-- 基础信息
local base_info = {
	group_id = 111101015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 21010201, pos = { x = 2462.207, y = 221.336, z = -1337.834 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 },
	{ config_id = 15002, monster_id = 21010201, pos = { x = 2459.141, y = 220.677, z = -1340.161 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 },
	{ config_id = 15003, monster_id = 21010201, pos = { x = 2458.133, y = 220.459, z = -1340.925 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 },
	{ config_id = 15004, monster_id = 21010201, pos = { x = 2457.636, y = 219.884, z = -1346.057 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 },
	{ config_id = 15005, monster_id = 21010201, pos = { x = 2457.636, y = 219.884, z = -1346.057 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 },
	{ config_id = 15006, monster_id = 21010201, pos = { x = 2457.636, y = 219.884, z = -1346.057 }, rot = { x = 8.183, y = 142.919, z = 0.502 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15007, gadget_id = 70300118, pos = { x = 2467.972, y = 220.144, z = -1353.968 }, rot = { x = 2.082, y = 100.326, z = 358.561 }, level = 1 },
	{ config_id = 15008, gadget_id = 70350023, pos = { x = 2467.972, y = 218.922, z = -1353.968 }, rot = { x = 2.082, y = 100.326, z = 358.561 }, level = 1 },
	{ config_id = 15019, gadget_id = 70350035, pos = { x = 2467.972, y = 218.922, z = -1353.968 }, rot = { x = 2.082, y = 100.326, z = 358.561 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015009, name = "ANY_MONSTER_DIE_15009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15009", action = "action_EVENT_ANY_MONSTER_DIE_15009", trigger_count = 0 },
	{ config_id = 1015010, name = "ANY_MONSTER_DIE_15010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15010", action = "action_EVENT_ANY_MONSTER_DIE_15010", trigger_count = 0 },
	{ config_id = 1015011, name = "GADGET_CREATE_15011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_15011", action = "action_EVENT_GADGET_CREATE_15011", trigger_count = 0 },
	{ config_id = 1015012, name = "ANY_MONSTER_DIE_15012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_15012", trigger_count = 0 },
	{ config_id = 1015013, name = "ANY_MONSTER_DIE_15013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15013", action = "action_EVENT_ANY_MONSTER_DIE_15013", trigger_count = 0 },
	{ config_id = 1015014, name = "SELECT_OPTION_15014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15014", action = "action_EVENT_SELECT_OPTION_15014", trigger_count = 0 },
	{ config_id = 1015015, name = "CHALLENGE_SUCCESS_15015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_15015", trigger_count = 0 },
	{ config_id = 1015016, name = "CHALLENGE_FAIL_15016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_15016", trigger_count = 0 },
	{ config_id = 1015017, name = "ANY_MONSTER_LIVE_15017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_15017", action = "action_EVENT_ANY_MONSTER_LIVE_15017", trigger_count = 0 },
	{ config_id = 1015018, name = "VARIABLE_CHANGE_15018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_15018", action = "action_EVENT_VARIABLE_CHANGE_15018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false }
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
		gadgets = { 15007, 15008 },
		regions = { },
		triggers = { "GADGET_CREATE_15011", "ANY_MONSTER_DIE_15012", "SELECT_OPTION_15014", "CHALLENGE_SUCCESS_15015", "CHALLENGE_FAIL_15016", "VARIABLE_CHANGE_15018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 15001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15009", "ANY_MONSTER_LIVE_15017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 15002, 15003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 15004, 15005, 15006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2475, y=218, z=-1354}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2475, y=218, z=-1354}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_15011(context, evt)
	if 15008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_15011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101015, 15008, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15014(context, evt)
	-- 判断是gadgetid 15008 option_id 2902
	if 15008 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15014(context, evt)
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101015, 2)
	
	-- 删除指定group： 111101015 ；指定config：15008；物件身上指定option：2902；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101015, 15008, 2902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_15015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_15016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 15008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为15007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101015, 4)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101015, 15008, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_15017(context, evt)
	if 15001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_15017(context, evt)
	-- 创建id为15019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建编号为666（该挑战的识别id),挑战内容为12的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 12, 30, 111101015, 15019, 90) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadMonster"为6
	if ScriptLib.GetGroupVariableValue(context, "deadMonster") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15018(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end