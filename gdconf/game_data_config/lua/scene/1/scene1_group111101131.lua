-- 基础信息
local base_info = {
	group_id = 111101131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21010401, pos = { x = 2188.543, y = 200.602, z = -1912.954 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 131002, monster_id = 22010301, pos = { x = 2186.049, y = 200.660, z = -1915.657 }, rot = { x = 0.000, y = 83.600, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	-- 绑定保护罩的风萨满
	{ config_id = 131003, monster_id = 21030301, pos = { x = 2223.080, y = 198.479, z = -1906.884 }, rot = { x = 0.000, y = 53.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 131004, monster_id = 22010201, pos = { x = 2188.056, y = 200.667, z = -1918.810 }, rot = { x = 0.000, y = 58.200, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 131005, monster_id = 21010401, pos = { x = 2207.919, y = 199.716, z = -1904.010 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 131006, monster_id = 21010401, pos = { x = 2207.360, y = 198.476, z = -1904.598 }, rot = { x = 0.000, y = 313.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 131008, monster_id = 21010201, pos = { x = 2186.140, y = 200.625, z = -1917.489 }, rot = { x = 0.000, y = 57.500, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 131010, monster_id = 21010201, pos = { x = 2189.435, y = 200.674, z = -1918.375 }, rot = { x = 0.000, y = 52.300, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 131011, monster_id = 21010201, pos = { x = 2185.344, y = 200.816, z = -1915.636 }, rot = { x = 0.000, y = 62.800, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 131012, gadget_id = 70360128, pos = { x = 2189.061, y = 194.600, z = -1917.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 131013, gadget_id = 70210113, pos = { x = 2189.061, y = 194.600, z = -1917.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 哨塔保护罩A
	{ config_id = 131014, gadget_id = 70290058, pos = { x = 2222.936, y = 194.600, z = -1907.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 可摧毁小哨塔A
	{ config_id = 131015, gadget_id = 70950092, pos = { x = 2222.936, y = 194.600, z = -1907.111 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 哨塔保护罩B
	{ config_id = 131016, gadget_id = 70290058, pos = { x = 2207.354, y = 194.600, z = -1904.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 不可摧毁大哨塔A
	{ config_id = 131017, gadget_id = 70290059, pos = { x = 2188.824, y = 194.600, z = -1916.743 }, rot = { x = 0.000, y = 96.400, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 131018, gadget_id = 70950087, pos = { x = 2201.623, y = 194.600, z = -1902.969 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 131019, gadget_id = 70950087, pos = { x = 2211.603, y = 194.600, z = -1904.497 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	-- 小哨塔A连接梯子A
	{ config_id = 131020, gadget_id = 70290060, pos = { x = 2182.072, y = 194.600, z = -1923.432 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1 },
	-- 小哨塔B连接梯子B
	{ config_id = 131021, gadget_id = 70290060, pos = { x = 2194.089, y = 194.600, z = -1911.518 }, rot = { x = 0.000, y = 134.771, z = 0.000 }, level = 1 },
	{ config_id = 131022, gadget_id = 70290057, pos = { x = 2191.035, y = 194.600, z = -1923.969 }, rot = { x = 0.000, y = 338.600, z = 0.000 }, level = 1 },
	-- 可摧毁的哨塔B
	{ config_id = 131023, gadget_id = 70950092, pos = { x = 2207.354, y = 194.600, z = -1904.750 }, rot = { x = 0.000, y = 314.450, z = 0.000 }, level = 1 },
	{ config_id = 131024, gadget_id = 70290057, pos = { x = 2211.608, y = 194.600, z = -1929.280 }, rot = { x = 0.000, y = 36.400, z = 0.000 }, level = 1 },
	{ config_id = 131025, gadget_id = 70290056, pos = { x = 2216.865, y = 194.600, z = -1922.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 131026, gadget_id = 70290056, pos = { x = 2186.693, y = 194.600, z = -1893.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 131027, gadget_id = 70950087, pos = { x = 2220.185, y = 194.600, z = -1901.408 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 131028, gadget_id = 70950087, pos = { x = 2227.908, y = 194.600, z = -1910.135 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	{ config_id = 131029, gadget_id = 70290057, pos = { x = 2178.251, y = 194.600, z = -1916.538 }, rot = { x = 0.000, y = 87.800, z = 0.000 }, level = 1 },
	{ config_id = 131030, gadget_id = 70290057, pos = { x = 2184.264, y = 194.600, z = -1907.498 }, rot = { x = 0.000, y = 179.330, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131031, name = "CHALLENGE_SUCCESS_131031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_131031" },
	{ config_id = 1131032, name = "CHALLENGE_FAIL_131032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_131032", trigger_count = 0 },
	{ config_id = 1131034, name = "GROUP_REFRESH_131034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_131034" },
	{ config_id = 1131035, name = "BLOSSOM_CHEST_DIE_131035", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_131035", action = "action_EVENT_BLOSSOM_CHEST_DIE_131035", trigger_count = 0 },
	{ config_id = 1131037, name = "BLOSSOM_PROGRESS_FINISH_131037", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_131037" },
	{ config_id = 1131038, name = "GROUP_LOAD_131038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_131038" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1131039, name = "ANY_GADGET_DIE_131039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131039", action = "action_EVENT_ANY_GADGET_DIE_131039" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1131040, name = "ANY_GADGET_DIE_131040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131040", action = "action_EVENT_ANY_GADGET_DIE_131040" },
	{ config_id = 1131041, name = "ANY_MONSTER_DIE_131041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131041", action = "action_EVENT_ANY_MONSTER_DIE_131041" },
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1131043, name = "ANY_MONSTER_DIE_131043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131043", action = "action_EVENT_ANY_MONSTER_DIE_131043" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1131044, name = "ANY_GADGET_DIE_131044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131044", action = "action_EVENT_ANY_GADGET_DIE_131044" }
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
		{ config_id = 1131033, name = "GADGET_CREATE_131033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131033", action = "action_EVENT_GADGET_CREATE_131033", trigger_count = 0 },
		{ config_id = 1131036, name = "SELECT_OPTION_131036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131036", action = "action_EVENT_SELECT_OPTION_131036", trigger_count = 0 }
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
		gadgets = { 131012, 131013 },
		regions = { },
		triggers = { "GROUP_LOAD_131038" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 131001, 131003, 131005, 131006 },
		gadgets = { 131014, 131015, 131016, 131017, 131018, 131019, 131020, 131021, 131022, 131023, 131024, 131025, 131026, 131027, 131028, 131029, 131030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_131031", "CHALLENGE_FAIL_131032", "GROUP_REFRESH_131034", "BLOSSOM_CHEST_DIE_131035", "BLOSSOM_PROGRESS_FINISH_131037", "ANY_GADGET_DIE_131039", "ANY_GADGET_DIE_131040", "ANY_MONSTER_DIE_131041", "ANY_MONSTER_DIE_131043", "ANY_GADGET_DIE_131044" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 131002, 131008 },
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
function action_EVENT_CHALLENGE_SUCCESS_131031(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101131)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_131032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101131, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_131034(context, evt)
	-- 创建id为131012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 131012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101131, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_131035(context, evt)
	if 131013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_131035(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_131037(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101131,131013) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101131, 3) then
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
function action_EVENT_GROUP_LOAD_131038(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131039(context, evt)
	if 131015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131040(context, evt)
	if 131023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131040(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131041(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101131) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131041(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101131, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2188.824,y=194.6,z=-1916.743}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_131043(context, evt)
	if 131003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131043(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_131044(context, evt)
	if 131023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_131044(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 131021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end