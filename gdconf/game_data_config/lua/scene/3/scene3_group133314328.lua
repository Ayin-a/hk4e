-- 基础信息
local base_info = {
	group_id = 133314328
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 328001, monster_id = 25210302, pos = { x = -942.242, y = 109.991, z = 4793.077 }, rot = { x = 0.000, y = 209.879, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328002, monster_id = 25310101, pos = { x = -960.375, y = 108.790, z = 4783.111 }, rot = { x = 0.000, y = 94.152, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 328003, monster_id = 25210102, pos = { x = -960.859, y = 108.687, z = 4777.761 }, rot = { x = 0.000, y = 70.493, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328004, monster_id = 25210403, pos = { x = -943.405, y = 109.079, z = 4764.621 }, rot = { x = 0.000, y = 333.185, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328005, monster_id = 25210302, pos = { x = -936.887, y = 111.367, z = 4784.122 }, rot = { x = 0.000, y = 283.179, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328006, monster_id = 25310301, pos = { x = -937.915, y = 111.037, z = 4789.330 }, rot = { x = 0.000, y = 241.969, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328007, monster_id = 25210201, pos = { x = -948.154, y = 108.960, z = 4766.416 }, rot = { x = 0.000, y = 9.174, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328008, monster_id = 25210201, pos = { x = -940.188, y = 109.899, z = 4769.505 }, rot = { x = 0.000, y = 297.986, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 },
	{ config_id = 328009, monster_id = 25210102, pos = { x = -948.058, y = 109.029, z = 4793.077 }, rot = { x = 0.000, y = 155.317, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 328010, gadget_id = 70350036, pos = { x = -948.193, y = 109.474, z = 4780.708 }, rot = { x = 346.804, y = 66.322, z = 356.223 }, level = 1, area_id = 32 },
	{ config_id = 328011, gadget_id = 70350023, pos = { x = -948.229, y = 109.473, z = 4780.693 }, rot = { x = 357.377, y = 63.437, z = 0.395 }, level = 19, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328012, name = "ANY_MONSTER_DIE_328012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328012", action = "action_EVENT_ANY_MONSTER_DIE_328012", trigger_count = 0 },
	{ config_id = 1328013, name = "ANY_MONSTER_DIE_328013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328013", action = "action_EVENT_ANY_MONSTER_DIE_328013", trigger_count = 0 },
	{ config_id = 1328014, name = "GADGET_CREATE_328014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_328014", action = "action_EVENT_GADGET_CREATE_328014", trigger_count = 0 },
	{ config_id = 1328015, name = "ANY_MONSTER_DIE_328015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_328015", trigger_count = 0 },
	{ config_id = 1328016, name = "ANY_MONSTER_DIE_328016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_328016", action = "action_EVENT_ANY_MONSTER_DIE_328016", trigger_count = 0 },
	{ config_id = 1328017, name = "SELECT_OPTION_328017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_328017", action = "action_EVENT_SELECT_OPTION_328017", trigger_count = 0 },
	{ config_id = 1328018, name = "CHALLENGE_SUCCESS_328018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_328018", trigger_count = 0 },
	{ config_id = 1328019, name = "CHALLENGE_FAIL_328019", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_328019", trigger_count = 0 },
	{ config_id = 1328020, name = "ANY_MONSTER_LIVE_328020", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_328020", action = "action_EVENT_ANY_MONSTER_LIVE_328020", trigger_count = 0 }
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
		gadgets = { 328011 },
		regions = { },
		triggers = { "GADGET_CREATE_328014", "ANY_MONSTER_DIE_328015", "SELECT_OPTION_328017", "CHALLENGE_SUCCESS_328018", "CHALLENGE_FAIL_328019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 328001, 328005, 328006, 328009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328012", "ANY_MONSTER_LIVE_328020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 328004, 328007, 328008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 328002, 328003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_328016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 328010 },
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
function condition_EVENT_ANY_MONSTER_DIE_328012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328012(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2565, y=173, z=5393}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2565,y=173,z=5393}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314328, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328013(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2565, y=173, z=5393}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2565,y=173,z=5393}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314328, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_328014(context, evt)
	if 328011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_328014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314328, 328011, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328015(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_328016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_328016(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_328017(context, evt)
	-- 判断是gadgetid 328011 option_id 7
	if 328011 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_328017(context, evt)
	-- 将configid为 328011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314328, 2)
	
	-- 删除指定group： 133314328 ；指定config：328011；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133314328, 328011, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_328018(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 5)
	
	-- 将configid为 328011 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328011, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_328019(context, evt)
	-- 将configid为 328011 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 328011, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133314328, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133314328, 328011, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_328020(context, evt)
	if 328006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_328020(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314328, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133309672, 9, 672011, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end