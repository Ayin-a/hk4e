-- 基础信息
local base_info = {
	group_id = 133222061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 21030401, pos = { x = -4439.515, y = 200.822, z = -4162.600 }, rot = { x = 0.000, y = 41.489, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 61002, monster_id = 21030201, pos = { x = -4432.374, y = 200.385, z = -4151.492 }, rot = { x = 0.000, y = 181.480, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, climate_area_id = 10, area_id = 14 },
	{ config_id = 61003, monster_id = 21010501, pos = { x = -4429.638, y = 200.502, z = -4152.469 }, rot = { x = 0.000, y = 216.581, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, pose_id = 32, climate_area_id = 10, area_id = 14 },
	{ config_id = 61004, monster_id = 21030301, pos = { x = -4422.953, y = 204.432, z = -4169.818 }, rot = { x = 0.000, y = 280.353, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, climate_area_id = 10, area_id = 14 },
	{ config_id = 61005, monster_id = 21010501, pos = { x = -4429.934, y = 200.431, z = -4152.051 }, rot = { x = 0.000, y = 209.630, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 10, area_id = 14 },
	{ config_id = 61006, monster_id = 21010501, pos = { x = -4438.188, y = 200.695, z = -4164.796 }, rot = { x = 0.000, y = 13.749, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, climate_area_id = 10, area_id = 14 },
	{ config_id = 61018, monster_id = 21010901, pos = { x = -4436.849, y = 200.597, z = -4167.555 }, rot = { x = 0.000, y = 32.788, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 61019, monster_id = 21010501, pos = { x = -4440.705, y = 201.181, z = -4157.589 }, rot = { x = 0.000, y = 91.906, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 61020, monster_id = 21010701, pos = { x = -4422.120, y = 200.363, z = -4186.404 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 10, area_id = 14 },
	{ config_id = 61021, monster_id = 21010701, pos = { x = -4424.284, y = 200.095, z = -4188.943 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 10, area_id = 14 },
	{ config_id = 61025, monster_id = 21010501, pos = { x = -4435.331, y = 200.168, z = -4151.992 }, rot = { x = 0.000, y = 181.752, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, climate_area_id = 10, area_id = 14 },
	{ config_id = 61026, monster_id = 21010601, pos = { x = -4422.117, y = 200.363, z = -4186.402 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 10, area_id = 14 },
	{ config_id = 61027, monster_id = 21011601, pos = { x = -4424.281, y = 200.095, z = -4188.941 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 10, area_id = 14 },
	{ config_id = 61028, monster_id = 21020701, pos = { x = -4422.178, y = 200.222, z = -4189.219 }, rot = { x = 0.000, y = 328.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61007, gadget_id = 70350036, pos = { x = -4433.186, y = 200.698, z = -4159.794 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 61008, gadget_id = 70350023, pos = { x = -4433.186, y = 200.634, z = -4159.794 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 14 },
	{ config_id = 61022, gadget_id = 70330115, pos = { x = -4437.455, y = 200.645, z = -4159.832 }, rot = { x = 0.000, y = 210.439, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 61024, gadget_id = 70330064, pos = { x = -4428.631, y = 200.968, z = -4157.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061009, name = "ANY_MONSTER_DIE_61009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61009", action = "action_EVENT_ANY_MONSTER_DIE_61009", trigger_count = 0 },
	{ config_id = 1061010, name = "ANY_MONSTER_DIE_61010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61010", action = "action_EVENT_ANY_MONSTER_DIE_61010", trigger_count = 0 },
	{ config_id = 1061011, name = "GADGET_CREATE_61011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61011", action = "action_EVENT_GADGET_CREATE_61011", trigger_count = 0 },
	{ config_id = 1061012, name = "ANY_MONSTER_DIE_61012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_61012", trigger_count = 0 },
	{ config_id = 1061013, name = "ANY_MONSTER_DIE_61013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61013", action = "action_EVENT_ANY_MONSTER_DIE_61013", trigger_count = 0 },
	{ config_id = 1061014, name = "SELECT_OPTION_61014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61014", action = "action_EVENT_SELECT_OPTION_61014", trigger_count = 0 },
	{ config_id = 1061015, name = "CHALLENGE_SUCCESS_61015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_61015", trigger_count = 0 },
	{ config_id = 1061016, name = "CHALLENGE_FAIL_61016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_61016", trigger_count = 0 },
	{ config_id = 1061017, name = "ANY_MONSTER_LIVE_61017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_61017", action = "action_EVENT_ANY_MONSTER_LIVE_61017", trigger_count = 0 }
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
		gadgets = { 61008 },
		regions = { },
		triggers = { "GADGET_CREATE_61011", "ANY_MONSTER_DIE_61012", "SELECT_OPTION_61014", "CHALLENGE_SUCCESS_61015", "CHALLENGE_FAIL_61016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 61001, 61018, 61019, 61020, 61021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61009", "ANY_MONSTER_LIVE_61017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 61002, 61003, 61025, 61026, 61027 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 61004, 61005, 61006, 61028 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 61007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 61022, 61024 },
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
function condition_EVENT_ANY_MONSTER_DIE_61009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-4433.186,y=200.7073,z=-4159.794}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222061, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-4433.186,y=200.7073,z=-4159.794}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222061, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61011(context, evt)
	if 61008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222061, 61008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61014(context, evt)
	-- 判断是gadgetid 61008 option_id 7
	if 61008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_61014(context, evt)
	-- 将configid为 61008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222061, 2)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222061, 6)
	
	-- 删除指定group： 133222061 ；指定config：61008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133222061, 61008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_61015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 6)
	
	-- 将configid为 61008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_61016(context, evt)
	-- 将configid为 61008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222061, 6)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222061, 61008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_61017(context, evt)
	if 61001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_61017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222061, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为80的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 80, 133222061, 14, 61007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end