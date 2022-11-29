-- 基础信息
local base_info = {
	group_id = 133220146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146001, monster_id = 21010301, pos = { x = -2378.794, y = 237.207, z = -4275.873 }, rot = { x = 0.000, y = 78.667, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146002, monster_id = 21010701, pos = { x = -2332.956, y = 226.995, z = -4289.706 }, rot = { x = 0.000, y = 314.324, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 11 },
	{ config_id = 146003, monster_id = 21010701, pos = { x = -2339.281, y = 227.711, z = -4293.038 }, rot = { x = 0.000, y = 346.027, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 11 },
	{ config_id = 146005, monster_id = 21011601, pos = { x = -2320.658, y = 226.142, z = -4269.819 }, rot = { x = 0.000, y = 254.181, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146006, monster_id = 21010601, pos = { x = -2316.746, y = 226.135, z = -4270.021 }, rot = { x = 0.000, y = 251.085, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146018, monster_id = 21010301, pos = { x = -2377.963, y = 237.251, z = -4277.884 }, rot = { x = 0.000, y = 61.557, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146019, monster_id = 21010201, pos = { x = -2379.526, y = 238.066, z = -4278.586 }, rot = { x = 0.000, y = 60.792, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146020, monster_id = 21010201, pos = { x = -2380.460, y = 238.062, z = -4276.559 }, rot = { x = 0.000, y = 78.667, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146032, monster_id = 21011001, pos = { x = -2354.895, y = 228.631, z = -4257.273 }, rot = { x = 0.000, y = 124.648, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 146033, monster_id = 21010501, pos = { x = -2338.434, y = 226.179, z = -4272.853 }, rot = { x = 0.000, y = 321.783, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 146034, monster_id = 21010201, pos = { x = -2338.804, y = 228.077, z = -4295.644 }, rot = { x = 0.000, y = 346.027, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146035, monster_id = 21010201, pos = { x = -2330.384, y = 227.136, z = -4292.976 }, rot = { x = 0.000, y = 314.324, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 146036, monster_id = 21030601, pos = { x = -2351.845, y = 229.110, z = -4275.068 }, rot = { x = 0.000, y = 41.737, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 11 },
	{ config_id = 146037, monster_id = 21030301, pos = { x = -2349.159, y = 229.122, z = -4276.717 }, rot = { x = 0.000, y = 18.849, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 11 },
	{ config_id = 146038, monster_id = 21020701, pos = { x = -2379.135, y = 237.602, z = -4277.371 }, rot = { x = 0.000, y = 71.913, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146007, gadget_id = 70350036, pos = { x = -2344.763, y = 225.966, z = -4264.699 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146008, gadget_id = 70350023, pos = { x = -2344.763, y = 225.966, z = -4264.699 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 146021, gadget_id = 70220005, pos = { x = -2364.756, y = 231.620, z = -4276.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146022, gadget_id = 70220005, pos = { x = -2365.320, y = 231.620, z = -4276.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146023, gadget_id = 70220005, pos = { x = -2364.509, y = 231.620, z = -4267.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146024, gadget_id = 70220005, pos = { x = -2338.210, y = 226.332, z = -4270.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146025, gadget_id = 70220005, pos = { x = -2352.501, y = 226.758, z = -4263.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146026, gadget_id = 70220005, pos = { x = -2353.093, y = 227.138, z = -4263.917 }, rot = { x = 62.523, y = 346.341, z = 8.715 }, level = 1, area_id = 11 },
	{ config_id = 146027, gadget_id = 70220005, pos = { x = -2326.821, y = 225.754, z = -4266.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146028, gadget_id = 70220005, pos = { x = -2327.463, y = 225.784, z = -4266.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146029, gadget_id = 70220005, pos = { x = -2337.297, y = 226.504, z = -4279.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146030, gadget_id = 70220010, pos = { x = -2337.433, y = 226.201, z = -4260.580 }, rot = { x = 0.000, y = 221.202, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146031, gadget_id = 70220010, pos = { x = -2348.522, y = 226.252, z = -4272.285 }, rot = { x = 0.000, y = 43.809, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146039, gadget_id = 70220005, pos = { x = -2353.519, y = 227.013, z = -4258.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146040, gadget_id = 70220005, pos = { x = -2353.133, y = 226.983, z = -4258.109 }, rot = { x = 0.000, y = 55.427, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 146041, gadget_id = 70220005, pos = { x = -2344.411, y = 226.371, z = -4277.944 }, rot = { x = 0.000, y = 326.688, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146009, name = "ANY_MONSTER_DIE_146009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146009", action = "action_EVENT_ANY_MONSTER_DIE_146009" },
	{ config_id = 1146010, name = "ANY_MONSTER_DIE_146010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146010", action = "action_EVENT_ANY_MONSTER_DIE_146010" },
	{ config_id = 1146011, name = "GADGET_CREATE_146011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_146011", action = "action_EVENT_GADGET_CREATE_146011", trigger_count = 0 },
	{ config_id = 1146012, name = "ANY_MONSTER_DIE_146012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_146012", trigger_count = 0 },
	{ config_id = 1146014, name = "SELECT_OPTION_146014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_146014", action = "action_EVENT_SELECT_OPTION_146014", trigger_count = 0 },
	{ config_id = 1146015, name = "CHALLENGE_SUCCESS_146015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_146015", trigger_count = 0 },
	{ config_id = 1146016, name = "CHALLENGE_FAIL_146016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_146016", trigger_count = 0 },
	{ config_id = 1146017, name = "ANY_MONSTER_LIVE_146017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_146017", action = "action_EVENT_ANY_MONSTER_LIVE_146017", trigger_count = 0 }
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
		gadgets = { 146008 },
		regions = { },
		triggers = { "GADGET_CREATE_146011", "ANY_MONSTER_DIE_146012", "SELECT_OPTION_146014", "CHALLENGE_SUCCESS_146015", "CHALLENGE_FAIL_146016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 146001, 146018, 146019, 146020, 146032, 146033 },
		gadgets = { 146021, 146022, 146023, 146024, 146025, 146026, 146027, 146028, 146029, 146030, 146031, 146039, 146040, 146041 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146009", "CHALLENGE_SUCCESS_146015", "CHALLENGE_FAIL_146016", "ANY_MONSTER_LIVE_146017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 146002, 146003, 146034, 146035, 146036, 146037 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146010", "CHALLENGE_SUCCESS_146015", "CHALLENGE_FAIL_146016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 146005, 146006, 146038 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_146015", "CHALLENGE_FAIL_146016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 146007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_146009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146009(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2342.775,y=225.9945,z=-4264.918}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220146, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146010(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2342.775,y=225.9945,z=-4264.918}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220146, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_146011(context, evt)
	if 146008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_146011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220146, 146008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146012(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_146014(context, evt)
	-- 判断是gadgetid 146008 option_id 7
	if 146008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_146014(context, evt)
	-- 将configid为 146008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220146, 2)
	
	-- 删除指定group： 133220146 ；指定config：146008；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220146, 146008, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_146015(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 5)
	
	-- 将configid为 146008 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146008, GadgetState.GearAction1) then
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
function action_EVENT_CHALLENGE_FAIL_146016(context, evt)
	-- 将configid为 146008 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146008, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220146, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220146, 146008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_146017(context, evt)
	if 146001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_146017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220146, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133220146, 15, 146007, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end