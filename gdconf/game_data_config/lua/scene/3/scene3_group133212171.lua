-- 基础信息
local base_info = {
	group_id = 133212171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171001, monster_id = 25010201, pos = { x = -3814.198, y = 200.538, z = -1773.536 }, rot = { x = 0.000, y = 74.478, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171002, monster_id = 25010201, pos = { x = -3811.377, y = 200.813, z = -1778.076 }, rot = { x = 0.000, y = 13.489, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171003, monster_id = 25020201, pos = { x = -3814.461, y = 200.768, z = -1766.178 }, rot = { x = 0.000, y = 150.553, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 171004, monster_id = 25020201, pos = { x = -3810.587, y = 203.044, z = -1785.156 }, rot = { x = 0.000, y = 13.489, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 171005, monster_id = 25030301, pos = { x = -3802.452, y = 200.162, z = -1767.063 }, rot = { x = 0.000, y = 200.018, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 13 },
	{ config_id = 171006, monster_id = 25070101, pos = { x = -3814.197, y = 200.538, z = -1773.534 }, rot = { x = 0.000, y = 74.478, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171007, monster_id = 25070101, pos = { x = -3811.377, y = 200.813, z = -1778.076 }, rot = { x = 0.000, y = 13.489, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171008, monster_id = 25010401, pos = { x = -3796.941, y = 200.529, z = -1780.263 }, rot = { x = 0.000, y = 299.768, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 },
	{ config_id = 171009, monster_id = 25010601, pos = { x = -3795.881, y = 200.116, z = -1773.808 }, rot = { x = 0.000, y = 263.511, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 13 },
	{ config_id = 171010, monster_id = 25060101, pos = { x = -3815.731, y = 200.529, z = -1777.158 }, rot = { x = 0.000, y = 61.635, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171011, monster_id = 25010701, pos = { x = -3808.312, y = 200.847, z = -1778.549 }, rot = { x = 0.000, y = 348.123, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171012, monster_id = 25010701, pos = { x = -3806.135, y = 200.430, z = -1768.644 }, rot = { x = 0.000, y = 200.821, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 13 },
	{ config_id = 171013, monster_id = 25010301, pos = { x = -3796.155, y = 200.282, z = -1776.875 }, rot = { x = 0.000, y = 264.536, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 171014, monster_id = 25010501, pos = { x = -3818.813, y = 200.190, z = -1775.016 }, rot = { x = 0.000, y = 68.243, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 13 },
	{ config_id = 171015, monster_id = 25030201, pos = { x = -3802.318, y = 200.712, z = -1778.714 }, rot = { x = 0.000, y = 329.006, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171016, gadget_id = 70350036, pos = { x = -3806.939, y = 200.673, z = -1773.779 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 171017, gadget_id = 70350023, pos = { x = -3806.939, y = 200.673, z = -1773.779 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171018, name = "ANY_MONSTER_DIE_171018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171018", action = "action_EVENT_ANY_MONSTER_DIE_171018", trigger_count = 0 },
	{ config_id = 1171019, name = "ANY_MONSTER_DIE_171019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171019", action = "action_EVENT_ANY_MONSTER_DIE_171019", trigger_count = 0 },
	{ config_id = 1171020, name = "GADGET_CREATE_171020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_171020", action = "action_EVENT_GADGET_CREATE_171020", trigger_count = 0 },
	{ config_id = 1171021, name = "ANY_MONSTER_DIE_171021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_171021", trigger_count = 0 },
	{ config_id = 1171022, name = "ANY_MONSTER_DIE_171022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171022", action = "action_EVENT_ANY_MONSTER_DIE_171022", trigger_count = 0 },
	{ config_id = 1171023, name = "SELECT_OPTION_171023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_171023", action = "action_EVENT_SELECT_OPTION_171023", trigger_count = 0 },
	{ config_id = 1171024, name = "CHALLENGE_SUCCESS_171024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_171024", trigger_count = 0 },
	{ config_id = 1171025, name = "CHALLENGE_FAIL_171025", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_171025", trigger_count = 0 },
	{ config_id = 1171026, name = "ANY_MONSTER_LIVE_171026", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_171026", action = "action_EVENT_ANY_MONSTER_LIVE_171026", trigger_count = 0 }
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
		gadgets = { 171017 },
		regions = { },
		triggers = { "GADGET_CREATE_171020", "ANY_MONSTER_DIE_171021", "SELECT_OPTION_171023", "CHALLENGE_SUCCESS_171024", "CHALLENGE_FAIL_171025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 171001, 171002, 171003, 171004, 171005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_171018", "ANY_MONSTER_LIVE_171026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 171006, 171007, 171008, 171009, 171010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_171019" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 171011, 171012, 171013, 171014, 171015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_171022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 171016 },
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
function condition_EVENT_ANY_MONSTER_DIE_171018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3807.244,y=200.6719,z=-1773.657}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212171, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3807.244,y=200.6719,z=-1773.657}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212171, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_171020(context, evt)
	if 171017 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_171020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212171, 171017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171021(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171022(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_171023(context, evt)
	-- 判断是gadgetid 171017 option_id 7
	if 171017 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_171023(context, evt)
	-- 将configid为 171017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212171, 2)
	
	-- 删除指定group： 133212171 ；指定config：171017；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212171, 171017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_171024(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 5)
	
	-- 将configid为 171017 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171017, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_171025(context, evt)
	-- 将configid为 171017 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171017, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212171, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212171, 171017, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_171026(context, evt)
	if 171001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_171026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212171, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133212171, 15, 171016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end