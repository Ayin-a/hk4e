-- 基础信息
local base_info = {
	group_id = 133302168
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168001, monster_id = 25210501, pos = { x = -828.360, y = 199.537, z = 2675.119 }, rot = { x = 0.000, y = 174.014, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168002, monster_id = 25210301, pos = { x = -841.635, y = 196.605, z = 2664.194 }, rot = { x = 0.000, y = 90.169, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168003, monster_id = 25210301, pos = { x = -841.635, y = 196.377, z = 2662.420 }, rot = { x = 0.000, y = 98.930, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168004, monster_id = 25310301, pos = { x = -827.658, y = 198.795, z = 2672.167 }, rot = { x = 0.000, y = 168.397, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, area_id = 24 },
	{ config_id = 168005, monster_id = 25210201, pos = { x = -825.758, y = 199.179, z = 2672.556 }, rot = { x = 0.000, y = 168.397, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168006, monster_id = 25210201, pos = { x = -826.968, y = 199.532, z = 2674.444 }, rot = { x = 0.000, y = 168.397, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168018, monster_id = 25210501, pos = { x = -826.030, y = 199.827, z = 2675.023 }, rot = { x = 0.000, y = 176.738, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168019, monster_id = 25210201, pos = { x = -828.360, y = 199.032, z = 2673.343 }, rot = { x = 0.000, y = 174.014, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168020, monster_id = 25210201, pos = { x = -826.030, y = 199.327, z = 2673.247 }, rot = { x = 0.000, y = 176.738, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168021, monster_id = 25210101, pos = { x = -826.377, y = 194.512, z = 2650.926 }, rot = { x = 0.000, y = 329.166, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 168022, monster_id = 25210101, pos = { x = -824.625, y = 194.491, z = 2651.198 }, rot = { x = 0.000, y = 337.927, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168007, gadget_id = 70350036, pos = { x = -830.008, y = 195.788, z = 2661.059 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 19, area_id = 24 },
	{ config_id = 168008, gadget_id = 70350023, pos = { x = -830.008, y = 195.751, z = 2661.063 }, rot = { x = 0.000, y = 100.296, z = 353.068 }, level = 19, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1168009, name = "ANY_MONSTER_DIE_168009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168009", action = "action_EVENT_ANY_MONSTER_DIE_168009", trigger_count = 0 },
	{ config_id = 1168010, name = "ANY_MONSTER_DIE_168010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168010", action = "action_EVENT_ANY_MONSTER_DIE_168010", trigger_count = 0 },
	{ config_id = 1168011, name = "GADGET_CREATE_168011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_168011", action = "action_EVENT_GADGET_CREATE_168011", trigger_count = 0 },
	{ config_id = 1168012, name = "ANY_MONSTER_DIE_168012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_168012", trigger_count = 0 },
	{ config_id = 1168013, name = "ANY_MONSTER_DIE_168013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_168013", action = "action_EVENT_ANY_MONSTER_DIE_168013", trigger_count = 0 },
	{ config_id = 1168014, name = "SELECT_OPTION_168014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_168014", action = "action_EVENT_SELECT_OPTION_168014", trigger_count = 0 },
	{ config_id = 1168015, name = "CHALLENGE_SUCCESS_168015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_168015", trigger_count = 0 },
	{ config_id = 1168016, name = "CHALLENGE_FAIL_168016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_168016", trigger_count = 0 },
	{ config_id = 1168017, name = "ANY_MONSTER_LIVE_168017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_168017", action = "action_EVENT_ANY_MONSTER_LIVE_168017", trigger_count = 0 }
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
		gadgets = { 168008 },
		regions = { },
		triggers = { "GADGET_CREATE_168011", "ANY_MONSTER_DIE_168012", "SELECT_OPTION_168014", "CHALLENGE_SUCCESS_168015", "CHALLENGE_FAIL_168016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 168001, 168018, 168019, 168020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168009", "ANY_MONSTER_LIVE_168017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 168002, 168003, 168021, 168022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 168004, 168005, 168006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_168013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 168007 },
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
function condition_EVENT_ANY_MONSTER_DIE_168009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-830, y=195, z=2661}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-830,y=195,z=2661}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302168, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-803, y=195, z=2661}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-803,y=195,z=2661}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302168, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_168011(context, evt)
	if 168008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_168011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302168, 168008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_168013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_168013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_168014(context, evt)
	-- 判断是gadgetid 168008 option_id 7
	if 168008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_168014(context, evt)
	-- 将configid为 168008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302168, 2)
	
	-- 删除指定group： 133302168 ；指定config：168008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302168, 168008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_168015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 5)
	
	-- 将configid为 168008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_168016(context, evt)
	-- 将configid为 168008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 168008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302168, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302168, 168008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_168017(context, evt)
	if 168001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_168017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302168, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133302168, 11, 168007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end