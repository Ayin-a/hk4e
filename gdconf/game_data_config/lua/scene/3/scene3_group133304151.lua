-- 基础信息
local base_info = {
	group_id = 133304151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 25210302, pos = { x = -1495.001, y = 229.957, z = 2610.879 }, rot = { x = 0.000, y = 270.678, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151002, monster_id = 25210401, pos = { x = -1510.870, y = 232.600, z = 2585.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151003, monster_id = 25210201, pos = { x = -1507.350, y = 234.135, z = 2586.781 }, rot = { x = 0.000, y = 320.665, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151004, monster_id = 25210101, pos = { x = -1542.169, y = 221.383, z = 2625.637 }, rot = { x = 0.000, y = 140.808, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151005, monster_id = 25210302, pos = { x = -1496.272, y = 230.121, z = 2606.958 }, rot = { x = 0.000, y = 313.886, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151018, monster_id = 25310301, pos = { x = -1498.071, y = 228.916, z = 2610.162 }, rot = { x = 0.000, y = 247.018, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151019, monster_id = 25210201, pos = { x = -1543.271, y = 222.411, z = 2628.502 }, rot = { x = 0.000, y = 120.309, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151020, monster_id = 25210201, pos = { x = -1545.097, y = 219.585, z = 2622.782 }, rot = { x = 0.000, y = 78.734, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 },
	{ config_id = 151021, monster_id = 25210201, pos = { x = -1512.611, y = 232.750, z = 2581.091 }, rot = { x = 0.000, y = 350.111, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 151006, gadget_id = 70220005, pos = { x = -1518.373, y = 224.923, z = 2592.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151007, gadget_id = 70350036, pos = { x = -1519.044, y = 222.789, z = 2603.074 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 19, area_id = 21 },
	{ config_id = 151008, gadget_id = 70350023, pos = { x = -1519.044, y = 222.789, z = 2603.074 }, rot = { x = 355.130, y = 97.918, z = 6.265 }, level = 19, persistent = true, area_id = 21 },
	{ config_id = 151022, gadget_id = 70220005, pos = { x = -1518.865, y = 224.512, z = 2592.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151023, gadget_id = 70220005, pos = { x = -1527.276, y = 219.369, z = 2606.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151024, gadget_id = 70220005, pos = { x = -1526.057, y = 219.665, z = 2607.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151025, gadget_id = 70220004, pos = { x = -1513.416, y = 224.986, z = 2603.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151026, gadget_id = 70220004, pos = { x = -1513.141, y = 224.692, z = 2604.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 151027, gadget_id = 70220004, pos = { x = -1516.585, y = 222.574, z = 2607.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151009, name = "ANY_MONSTER_DIE_151009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151009", action = "action_EVENT_ANY_MONSTER_DIE_151009", trigger_count = 0 },
	{ config_id = 1151010, name = "ANY_MONSTER_DIE_151010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151010", action = "action_EVENT_ANY_MONSTER_DIE_151010", trigger_count = 0 },
	{ config_id = 1151011, name = "GADGET_CREATE_151011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151011", action = "action_EVENT_GADGET_CREATE_151011", trigger_count = 0 },
	{ config_id = 1151012, name = "ANY_MONSTER_DIE_151012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_151012", trigger_count = 0 },
	{ config_id = 1151013, name = "ANY_MONSTER_DIE_151013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151013", action = "action_EVENT_ANY_MONSTER_DIE_151013", trigger_count = 0 },
	{ config_id = 1151014, name = "SELECT_OPTION_151014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_151014", action = "action_EVENT_SELECT_OPTION_151014", trigger_count = 0 },
	{ config_id = 1151015, name = "CHALLENGE_SUCCESS_151015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_151015", trigger_count = 0 },
	{ config_id = 1151016, name = "CHALLENGE_FAIL_151016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_151016", trigger_count = 0 },
	{ config_id = 1151017, name = "ANY_MONSTER_LIVE_151017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_151017", action = "action_EVENT_ANY_MONSTER_LIVE_151017", trigger_count = 0 }
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
		gadgets = { 151006, 151008, 151022, 151023, 151024, 151025, 151026, 151027 },
		regions = { },
		triggers = { "GADGET_CREATE_151011", "ANY_MONSTER_DIE_151012", "SELECT_OPTION_151014", "CHALLENGE_SUCCESS_151015", "CHALLENGE_FAIL_151016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 151001, 151005, 151018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151009", "ANY_MONSTER_LIVE_151017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 151004, 151019, 151020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 151002, 151003, 151021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 151007 },
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
function condition_EVENT_ANY_MONSTER_DIE_151009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1519, y=224, z=2602}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1519.952,y=224.4598,z=2602.98}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304151, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1519, y=224, z=2602}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1519.952,y=224.4598,z=2602.98}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304151, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_151011(context, evt)
	if 151008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304151, 151008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151013(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_151014(context, evt)
	-- 判断是gadgetid 151008 option_id 7
	if 151008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_151014(context, evt)
	-- 将configid为 151008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304151, 2)
	
	-- 删除指定group： 133304151 ；指定config：151008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304151, 151008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_151015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 5)
	
	-- 将configid为 151008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_151016(context, evt)
	-- 将configid为 151008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 151008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304151, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304151, 151008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_151017(context, evt)
	if 151018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_151017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304151, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133304151, 9, 151007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end