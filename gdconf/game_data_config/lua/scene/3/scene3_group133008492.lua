-- 基础信息
local base_info = {
	group_id = 133008492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 21011401, pos = { x = 939.365, y = 347.930, z = -647.743 }, rot = { x = 0.000, y = 174.608, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492002, monster_id = 21010201, pos = { x = 950.146, y = 356.854, z = -664.090 }, rot = { x = 0.000, y = 271.463, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492003, monster_id = 21010201, pos = { x = 926.402, y = 358.505, z = -666.446 }, rot = { x = 0.000, y = 82.387, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492004, monster_id = 21010901, pos = { x = 932.690, y = 356.623, z = -662.061 }, rot = { x = 0.000, y = 137.781, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 492005, monster_id = 21011001, pos = { x = 949.782, y = 360.659, z = -673.292 }, rot = { x = 0.000, y = 300.799, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 492006, monster_id = 21011001, pos = { x = 934.756, y = 362.719, z = -675.508 }, rot = { x = 0.000, y = 23.364, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 492019, monster_id = 21011401, pos = { x = 936.259, y = 348.160, z = -648.022 }, rot = { x = 0.000, y = 174.608, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492020, monster_id = 21011401, pos = { x = 938.039, y = 348.457, z = -649.163 }, rot = { x = 0.000, y = 169.155, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492021, monster_id = 21010201, pos = { x = 938.039, y = 348.457, z = -649.163 }, rot = { x = 0.000, y = 169.155, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 492022, monster_id = 21020601, pos = { x = 938.039, y = 348.457, z = -649.163 }, rot = { x = 0.000, y = 169.155, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 492007, gadget_id = 70350036, pos = { x = 940.697, y = 354.820, z = -664.792 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 492008, gadget_id = 70310015, pos = { x = 946.100, y = 354.745, z = -661.173 }, rot = { x = 0.000, y = 13.190, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 492009, gadget_id = 70350023, pos = { x = 940.697, y = 354.820, z = -664.792 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	{ config_id = 492023, gadget_id = 70310015, pos = { x = 934.889, y = 354.997, z = -662.010 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1492010, name = "ANY_MONSTER_DIE_492010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492010", action = "action_EVENT_ANY_MONSTER_DIE_492010", trigger_count = 0 },
	{ config_id = 1492011, name = "ANY_MONSTER_DIE_492011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492011", action = "action_EVENT_ANY_MONSTER_DIE_492011", trigger_count = 0 },
	{ config_id = 1492012, name = "GADGET_CREATE_492012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_492012", action = "action_EVENT_GADGET_CREATE_492012", trigger_count = 0 },
	{ config_id = 1492013, name = "ANY_MONSTER_DIE_492013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_492013", trigger_count = 0 },
	{ config_id = 1492014, name = "ANY_MONSTER_DIE_492014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_492014", action = "action_EVENT_ANY_MONSTER_DIE_492014", trigger_count = 0 },
	{ config_id = 1492015, name = "SELECT_OPTION_492015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_492015", action = "action_EVENT_SELECT_OPTION_492015", trigger_count = 0 },
	{ config_id = 1492016, name = "CHALLENGE_SUCCESS_492016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_492016", trigger_count = 0 },
	{ config_id = 1492017, name = "CHALLENGE_FAIL_492017", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_492017", trigger_count = 0 },
	{ config_id = 1492018, name = "ANY_MONSTER_LIVE_492018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_492018", action = "action_EVENT_ANY_MONSTER_LIVE_492018", trigger_count = 0 }
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
		gadgets = { 492008, 492009, 492023 },
		regions = { },
		triggers = { "GADGET_CREATE_492012", "ANY_MONSTER_DIE_492013", "SELECT_OPTION_492015", "CHALLENGE_SUCCESS_492016", "CHALLENGE_FAIL_492017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 492001, 492019, 492020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492010", "ANY_MONSTER_LIVE_492018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 492002, 492003, 492021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 492004, 492005, 492006, 492022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 492007 },
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
function condition_EVENT_ANY_MONSTER_DIE_492010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=940, y=355, z=-664}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=940,y=355,z=-664}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008492, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492011(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=940, y=355, z=-664}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=940,y=355,z=-664}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008492, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_492012(context, evt)
	if 492009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_492012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008492, 492009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492013(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492014(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_492015(context, evt)
	-- 判断是gadgetid 492009 option_id 7
	if 492009 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_492015(context, evt)
	-- 将configid为 492009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008492, 2)
	
	-- 删除指定group： 133008492 ；指定config：492009；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008492, 492009, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_492016(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 5)
	
	-- 将configid为 492009 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492009, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_492017(context, evt)
	-- 将configid为 492009 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 492009, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008492, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008492, 492009, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_492018(context, evt)
	if 492001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_492018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008492, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133008492, 10, 492007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end