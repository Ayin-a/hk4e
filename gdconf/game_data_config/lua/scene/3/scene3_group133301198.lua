-- 基础信息
local base_info = {
	group_id = 133301198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 25210401, pos = { x = -559.576, y = 170.097, z = 3500.450 }, rot = { x = 0.000, y = 357.576, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198002, monster_id = 25210301, pos = { x = -543.727, y = 172.720, z = 3508.160 }, rot = { x = 0.000, y = 304.269, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198003, monster_id = 25210301, pos = { x = -544.802, y = 172.063, z = 3510.487 }, rot = { x = 0.000, y = 308.850, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198004, monster_id = 25310101, pos = { x = -554.338, y = 167.823, z = 3523.562 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100, isElite = true, pose_id = 1, area_id = 22 },
	{ config_id = 198005, monster_id = 25210201, pos = { x = -552.456, y = 168.421, z = 3521.323 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198006, monster_id = 25210201, pos = { x = -556.729, y = 167.601, z = 3521.989 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198018, monster_id = 25210401, pos = { x = -557.095, y = 170.337, z = 3500.555 }, rot = { x = 0.000, y = 357.576, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198019, monster_id = 25210201, pos = { x = -554.372, y = 170.739, z = 3500.696 }, rot = { x = 0.000, y = 357.576, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198020, monster_id = 25210201, pos = { x = -551.891, y = 171.229, z = 3500.801 }, rot = { x = 0.000, y = 357.576, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198021, monster_id = 25210501, pos = { x = -540.876, y = 173.641, z = 3507.837 }, rot = { x = 0.000, y = 304.269, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 },
	{ config_id = 198022, monster_id = 25210501, pos = { x = -541.942, y = 172.937, z = 3510.164 }, rot = { x = 0.000, y = 308.850, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198007, gadget_id = 70350036, pos = { x = -555.142, y = 168.679, z = 3513.182 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 30, area_id = 22 },
	{ config_id = 198008, gadget_id = 70350023, pos = { x = -555.142, y = 168.679, z = 3513.182 }, rot = { x = 344.864, y = 100.296, z = 5.011 }, level = 30, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198009, name = "ANY_MONSTER_DIE_198009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198009", action = "action_EVENT_ANY_MONSTER_DIE_198009", trigger_count = 0 },
	{ config_id = 1198010, name = "ANY_MONSTER_DIE_198010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198010", action = "action_EVENT_ANY_MONSTER_DIE_198010", trigger_count = 0 },
	{ config_id = 1198011, name = "GADGET_CREATE_198011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_198011", action = "action_EVENT_GADGET_CREATE_198011", trigger_count = 0 },
	{ config_id = 1198012, name = "ANY_MONSTER_DIE_198012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_198012", trigger_count = 0 },
	{ config_id = 1198013, name = "ANY_MONSTER_DIE_198013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198013", action = "action_EVENT_ANY_MONSTER_DIE_198013", trigger_count = 0 },
	{ config_id = 1198014, name = "SELECT_OPTION_198014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_198014", action = "action_EVENT_SELECT_OPTION_198014", trigger_count = 0 },
	{ config_id = 1198015, name = "CHALLENGE_SUCCESS_198015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_198015", trigger_count = 0 },
	{ config_id = 1198016, name = "CHALLENGE_FAIL_198016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_198016", trigger_count = 0 },
	{ config_id = 1198017, name = "ANY_MONSTER_LIVE_198017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_198017", action = "action_EVENT_ANY_MONSTER_LIVE_198017", trigger_count = 0 }
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
		gadgets = { 198008 },
		regions = { },
		triggers = { "GADGET_CREATE_198011", "ANY_MONSTER_DIE_198012", "SELECT_OPTION_198014", "CHALLENGE_SUCCESS_198015", "CHALLENGE_FAIL_198016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 198001, 198018, 198019, 198020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198009", "ANY_MONSTER_LIVE_198017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 198002, 198003, 198021, 198022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 198004, 198005, 198006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 198007 },
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
function condition_EVENT_ANY_MONSTER_DIE_198009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-552, y=171, z=3508}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-552,y=171,z=3508}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301198, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-552, y=171, z=3508}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-552,y=171,z=3508}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301198, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_198011(context, evt)
	if 198008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_198011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301198, 198008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_198014(context, evt)
	-- 判断是gadgetid 198008 option_id 7
	if 198008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_198014(context, evt)
	-- 将configid为 198008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301198, 2)
	
	-- 删除指定group： 133301198 ；指定config：198008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301198, 198008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_198015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 5)
	
	-- 将configid为 198008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_198016(context, evt)
	-- 将configid为 198008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301198, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301198, 198008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_198017(context, evt)
	if 198001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_198017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301198, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133301198, 11, 198007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end