-- 基础信息
local base_info = {
	group_id = 111101127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 21010401, pos = { x = 2555.870, y = 198.400, z = -1879.907 }, rot = { x = 0.000, y = 9.800, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 127002, monster_id = 21010901, pos = { x = 2553.854, y = 198.296, z = -1879.927 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 127003, monster_id = 21020101, pos = { x = 2512.508, y = 200.670, z = -1921.162 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 127004, monster_id = 21010201, pos = { x = 2514.009, y = 200.693, z = -1918.026 }, rot = { x = 0.000, y = 317.822, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 127005, monster_id = 21010201, pos = { x = 2511.807, y = 200.667, z = -1920.473 }, rot = { x = 0.000, y = 340.583, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 127040, monster_id = 21010901, pos = { x = 2528.730, y = 198.233, z = -1891.822 }, rot = { x = 0.000, y = 143.575, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 127041, monster_id = 21010401, pos = { x = 2529.969, y = 198.315, z = -1890.577 }, rot = { x = 0.000, y = 136.501, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 127043, monster_id = 21010201, pos = { x = 2512.636, y = 200.758, z = -1919.462 }, rot = { x = 0.000, y = 340.583, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 127045, monster_id = 21020201, pos = { x = 2514.934, y = 200.741, z = -1919.013 }, rot = { x = 0.000, y = 318.471, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 127046, monster_id = 21010201, pos = { x = 2512.908, y = 200.682, z = -1917.731 }, rot = { x = 0.000, y = 340.583, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 127047, monster_id = 21010201, pos = { x = 2511.530, y = 200.688, z = -1919.331 }, rot = { x = 0.000, y = 340.583, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 127048, monster_id = 21010201, pos = { x = 2511.807, y = 200.667, z = -1920.473 }, rot = { x = 0.000, y = 340.583, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 127006, gadget_id = 70360128, pos = { x = 2514.965, y = 200.655, z = -1921.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 127007, gadget_id = 70210113, pos = { x = 2514.965, y = 200.655, z = -1921.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 可摧毁小哨塔A
	{ config_id = 127009, gadget_id = 70950092, pos = { x = 2554.933, y = 194.600, z = -1880.649 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 可摧毁小哨塔B
	{ config_id = 127010, gadget_id = 70950092, pos = { x = 2528.583, y = 194.600, z = -1890.295 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 127011, gadget_id = 70290056, pos = { x = 2543.927, y = 194.600, z = -1884.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 不可摧毁大哨塔A
	{ config_id = 127012, gadget_id = 70290059, pos = { x = 2514.210, y = 194.600, z = -1919.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 127013, gadget_id = 70950087, pos = { x = 2556.472, y = 194.600, z = -1877.136 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 127014, gadget_id = 70950087, pos = { x = 2551.662, y = 194.600, z = -1878.683 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	{ config_id = 127015, gadget_id = 70290056, pos = { x = 2521.598, y = 194.600, z = -1904.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 127016, gadget_id = 70290057, pos = { x = 2526.070, y = 194.600, z = -1883.784 }, rot = { x = 0.000, y = 178.300, z = 0.000 }, level = 1 },
	{ config_id = 127017, gadget_id = 70290057, pos = { x = 2561.490, y = 194.600, z = -1882.913 }, rot = { x = 0.000, y = 279.100, z = 0.000 }, level = 1 },
	{ config_id = 127018, gadget_id = 70290057, pos = { x = 2522.211, y = 194.600, z = -1888.405 }, rot = { x = 6.825, y = 263.000, z = 10.439 }, level = 1 },
	{ config_id = 127019, gadget_id = 70290057, pos = { x = 2557.142, y = 194.600, z = -1887.681 }, rot = { x = 0.000, y = 0.900, z = 0.000 }, level = 1 },
	{ config_id = 127020, gadget_id = 70290057, pos = { x = 2522.967, y = 194.600, z = -1922.292 }, rot = { x = 0.000, y = 279.100, z = 0.000 }, level = 1 },
	{ config_id = 127021, gadget_id = 70290057, pos = { x = 2518.615, y = 194.600, z = -1927.052 }, rot = { x = 0.000, y = 0.900, z = 0.000 }, level = 1 },
	{ config_id = 127022, gadget_id = 70300081, pos = { x = 2516.750, y = 200.645, z = -1918.117 }, rot = { x = 0.000, y = 342.000, z = 0.000 }, level = 1 },
	{ config_id = 127023, gadget_id = 70690011, pos = { x = 2505.838, y = 194.600, z = -1923.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 127038, gadget_id = 70950087, pos = { x = 2533.020, y = 194.600, z = -1892.864 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 127039, gadget_id = 70950087, pos = { x = 2531.575, y = 194.600, z = -1894.492 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	{ config_id = 127042, gadget_id = 70300081, pos = { x = 2514.019, y = 200.737, z = -1921.242 }, rot = { x = 304.504, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127024, name = "CHALLENGE_SUCCESS_127024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127024" },
	{ config_id = 1127025, name = "CHALLENGE_FAIL_127025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_127025", trigger_count = 0 },
	{ config_id = 1127027, name = "GROUP_REFRESH_127027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_127027" },
	{ config_id = 1127028, name = "BLOSSOM_CHEST_DIE_127028", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_127028", action = "action_EVENT_BLOSSOM_CHEST_DIE_127028", trigger_count = 0 },
	{ config_id = 1127030, name = "BLOSSOM_PROGRESS_FINISH_127030", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_127030" },
	{ config_id = 1127031, name = "GROUP_LOAD_127031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_127031" },
	{ config_id = 1127034, name = "ANY_MONSTER_DIE_127034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127034", action = "action_EVENT_ANY_MONSTER_DIE_127034" },
	{ config_id = 1127035, name = "ANY_MONSTER_DIE_127035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127035", action = "action_EVENT_ANY_MONSTER_DIE_127035" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1127026, name = "GADGET_CREATE_127026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127026", action = "action_EVENT_GADGET_CREATE_127026", trigger_count = 0 },
		{ config_id = 1127029, name = "SELECT_OPTION_127029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127029", action = "action_EVENT_SELECT_OPTION_127029", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 127006, 127007 },
		regions = { },
		triggers = { "GROUP_LOAD_127031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 127001, 127002, 127004, 127040, 127041, 127043 },
		gadgets = { 127009, 127010, 127011, 127012, 127013, 127014, 127015, 127016, 127017, 127018, 127019, 127020, 127021, 127022, 127023, 127038, 127039, 127042 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_127024", "CHALLENGE_FAIL_127025", "GROUP_REFRESH_127027", "BLOSSOM_CHEST_DIE_127028", "BLOSSOM_PROGRESS_FINISH_127030", "ANY_MONSTER_DIE_127034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 127003, 127046, 127047 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_127035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 127005, 127045, 127048 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_127024(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101127)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_127025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101127, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_127027(context, evt)
	-- 创建id为127006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 127006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101127, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101127) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_127028(context, evt)
	if 127007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_127028(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_127030(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101127,127007) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101127, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 将本组内变量名为 "GroupCompletion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_127031(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101127) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127034(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101127, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2528.583,y=194.6,z=-1890.295}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_127035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101127) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_127035(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101127, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2528.583,y=194.6,z=-1890.295}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end