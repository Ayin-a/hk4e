-- 基础信息
local base_info = {
	group_id = 111101126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 21010401, pos = { x = 2640.996, y = 198.399, z = -1916.420 }, rot = { x = 0.000, y = 42.032, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126002, monster_id = 22010201, pos = { x = 2647.617, y = 194.600, z = -1929.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 126003, monster_id = 21020101, pos = { x = 2640.564, y = 200.815, z = -1899.637 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126008, monster_id = 21020101, pos = { x = 2639.193, y = 200.705, z = -1897.981 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126017, monster_id = 21010401, pos = { x = 2639.339, y = 198.399, z = -1914.600 }, rot = { x = 0.000, y = 44.801, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126020, monster_id = 21010901, pos = { x = 2640.204, y = 200.769, z = -1898.626 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126022, monster_id = 21020101, pos = { x = 2653.689, y = 200.758, z = -1915.436 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126043, monster_id = 21020101, pos = { x = 2655.008, y = 200.786, z = -1916.816 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 126044, monster_id = 21010901, pos = { x = 2654.761, y = 200.807, z = -1915.668 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 126006, gadget_id = 70360128, pos = { x = 2638.305, y = 196.047, z = -1900.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 126007, gadget_id = 70210113, pos = { x = 2638.305, y = 196.047, z = -1900.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 可摧毁小哨塔A
	{ config_id = 126009, gadget_id = 70950092, pos = { x = 2640.567, y = 194.600, z = -1914.952 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 126010, gadget_id = 70950087, pos = { x = 2636.394, y = 194.600, z = -1917.707 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	-- 风场
	{ config_id = 126011, gadget_id = 70690008, pos = { x = 2647.672, y = 194.600, z = -1908.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 不可摧毁大哨塔A
	{ config_id = 126012, gadget_id = 70290059, pos = { x = 2640.443, y = 194.600, z = -1900.110 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 126013, gadget_id = 70950087, pos = { x = 2636.505, y = 194.600, z = -1912.162 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 126014, gadget_id = 70950087, pos = { x = 2642.123, y = 194.600, z = -1916.890 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	-- 连接梯子A
	{ config_id = 126015, gadget_id = 70290060, pos = { x = 2640.432, y = 198.799, z = -1907.939 }, rot = { x = 0.000, y = 268.753, z = 0.000 }, level = 1 },
	-- 连接梯子B
	{ config_id = 126016, gadget_id = 70290060, pos = { x = 2646.152, y = 198.689, z = -1915.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 126018, gadget_id = 70290057, pos = { x = 2660.002, y = 195.933, z = -1921.091 }, rot = { x = 0.000, y = 307.140, z = 0.000 }, level = 1 },
	{ config_id = 126019, gadget_id = 70290055, pos = { x = 2645.923, y = 194.600, z = -1923.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 不可摧毁大哨塔B
	{ config_id = 126038, gadget_id = 70290059, pos = { x = 2655.428, y = 194.600, z = -1915.840 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 126039, gadget_id = 70290055, pos = { x = 2631.752, y = 194.600, z = -1909.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 126040, gadget_id = 70290055, pos = { x = 2647.322, y = 194.600, z = -1908.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 126041, gadget_id = 70290057, pos = { x = 2633.556, y = 194.600, z = -1896.045 }, rot = { x = 0.000, y = 138.059, z = 0.000 }, level = 1 },
	{ config_id = 126042, gadget_id = 70290057, pos = { x = 2635.360, y = 194.600, z = -1919.161 }, rot = { x = 0.000, y = 229.830, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126024, name = "CHALLENGE_SUCCESS_126024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_126024" },
	{ config_id = 1126025, name = "CHALLENGE_FAIL_126025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_126025", trigger_count = 0 },
	{ config_id = 1126027, name = "GROUP_REFRESH_126027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_126027" },
	{ config_id = 1126028, name = "BLOSSOM_CHEST_DIE_126028", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_126028", action = "action_EVENT_BLOSSOM_CHEST_DIE_126028", trigger_count = 0 },
	{ config_id = 1126030, name = "BLOSSOM_PROGRESS_FINISH_126030", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_126030" },
	{ config_id = 1126031, name = "GROUP_LOAD_126031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_126031" },
	-- 销毁了小哨塔A后销毁梯子A与B
	{ config_id = 1126032, name = "ANY_GADGET_DIE_126032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_126032", action = "action_EVENT_ANY_GADGET_DIE_126032" },
	{ config_id = 1126034, name = "ANY_MONSTER_DIE_126034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_126034", action = "action_EVENT_ANY_MONSTER_DIE_126034" }
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
		{ config_id = 1126026, name = "GADGET_CREATE_126026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_126026", action = "action_EVENT_GADGET_CREATE_126026", trigger_count = 0 },
		{ config_id = 1126029, name = "SELECT_OPTION_126029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_126029", action = "action_EVENT_SELECT_OPTION_126029", trigger_count = 0 }
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
		monsters = { 126002 },
		gadgets = { 126006, 126007 },
		regions = { },
		triggers = { "GROUP_LOAD_126031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 126001, 126002, 126017, 126020, 126044 },
		gadgets = { 126009, 126010, 126011, 126012, 126013, 126014, 126015, 126016, 126018, 126019, 126038, 126039, 126040, 126041, 126042 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_126024", "CHALLENGE_FAIL_126025", "GROUP_REFRESH_126027", "BLOSSOM_CHEST_DIE_126028", "BLOSSOM_PROGRESS_FINISH_126030", "ANY_GADGET_DIE_126032", "ANY_MONSTER_DIE_126034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 126003, 126008, 126022, 126043 },
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
function action_EVENT_CHALLENGE_SUCCESS_126024(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101126)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_126025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101126, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_126027(context, evt)
	-- 创建id为126006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101126, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_126028(context, evt)
	if 126007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_126028(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_126030(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101126,126007) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101126, 3) then
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
function action_EVENT_GROUP_LOAD_126031(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_126032(context, evt)
	if 126009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_126032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 126015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 126016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_126034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101126) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_126034(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101126, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2640.567,y=194.6,z=-1914.952}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end