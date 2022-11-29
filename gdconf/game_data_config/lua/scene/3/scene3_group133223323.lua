-- 基础信息
local base_info = {
	group_id = 133223323
}

-- Trigger变量
local defs = {
	group_id = 133223323
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 323001, monster_id = 24020101, pos = { x = -6086.919, y = 205.827, z = -2836.058 }, rot = { x = 0.000, y = 219.743, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 323002, monster_id = 21011001, pos = { x = -6118.986, y = 205.955, z = -2871.215 }, rot = { x = 0.000, y = 19.372, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 323003, monster_id = 21010501, pos = { x = -6124.184, y = 210.935, z = -2847.391 }, rot = { x = 0.000, y = 148.179, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 7, area_id = 18 },
	{ config_id = 323004, monster_id = 20060201, pos = { x = -6111.065, y = 205.787, z = -2853.137 }, rot = { x = 0.000, y = 208.899, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 323005, monster_id = 20060301, pos = { x = -6105.713, y = 205.476, z = -2862.423 }, rot = { x = 0.000, y = 293.366, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 323006, monster_id = 20060101, pos = { x = -6121.892, y = 203.331, z = -2855.159 }, rot = { x = 0.000, y = 113.963, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 323018, monster_id = 24020101, pos = { x = -6109.813, y = 206.904, z = -2891.551 }, rot = { x = 0.000, y = 342.709, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 323019, monster_id = 20060201, pos = { x = -6117.537, y = 205.787, z = -2865.518 }, rot = { x = 0.000, y = 26.056, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 323007, gadget_id = 70350036, pos = { x = -6114.246, y = 204.691, z = -2859.003 }, rot = { x = 0.000, y = 89.460, z = 0.000 }, level = 1, area_id = 18 },
	{ config_id = 323008, gadget_id = 70350023, pos = { x = -6114.246, y = 204.691, z = -2859.003 }, rot = { x = 0.000, y = 89.460, z = 0.000 }, level = 1, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1323009, name = "ANY_MONSTER_DIE_323009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_323009", action = "action_EVENT_ANY_MONSTER_DIE_323009", trigger_count = 0 },
	{ config_id = 1323010, name = "ANY_MONSTER_DIE_323010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_323010", action = "action_EVENT_ANY_MONSTER_DIE_323010", trigger_count = 0 },
	{ config_id = 1323011, name = "GADGET_CREATE_323011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_323011", action = "action_EVENT_GADGET_CREATE_323011", trigger_count = 0 },
	{ config_id = 1323012, name = "ANY_MONSTER_DIE_323012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_323012", action = "action_EVENT_ANY_MONSTER_DIE_323012", trigger_count = 0 },
	{ config_id = 1323014, name = "SELECT_OPTION_323014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_323014", action = "action_EVENT_SELECT_OPTION_323014", trigger_count = 0 },
	{ config_id = 1323015, name = "CHALLENGE_SUCCESS_323015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_323015", trigger_count = 0 },
	{ config_id = 1323016, name = "CHALLENGE_FAIL_323016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_323016", trigger_count = 0 },
	{ config_id = 1323017, name = "ANY_MONSTER_LIVE_323017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_323017", action = "action_EVENT_ANY_MONSTER_LIVE_323017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 323008 },
		regions = { },
		triggers = { "GADGET_CREATE_323011", "SELECT_OPTION_323014", "CHALLENGE_SUCCESS_323015", "CHALLENGE_FAIL_323016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 323004, 323005, 323019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_323009", "ANY_MONSTER_LIVE_323017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 323002, 323003, 323006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_323010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 323001, 323018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_323012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 323007 },
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
function condition_EVENT_ANY_MONSTER_DIE_323009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_323009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6114.246,y=204.6909,z=-2859.003}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223323, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_323010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_323010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-6114.246,y=204.6909,z=-2859.003}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223323, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_323011(context, evt)
	if 323008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_323011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223323, 323008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_323012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_323012(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_323014(context, evt)
	-- 判断是gadgetid 323008 option_id 7
	if 323008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_323014(context, evt)
	-- 将configid为 323008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 323008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223323, 2)
	
	-- 删除指定group： 133223323 ；指定config：323008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133223323, 323008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_323015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 5)
	
	-- 将configid为 323008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 323008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_323016(context, evt)
	-- 将configid为 323008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 323008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223323, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133223323, 323008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_323017(context, evt)
	if 323004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_323017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223323, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133223323, 8, 323007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end