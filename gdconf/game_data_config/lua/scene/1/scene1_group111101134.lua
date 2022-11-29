-- 基础信息
local base_info = {
	group_id = 111101134
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 134001, monster_id = 21010401, pos = { x = 2131.710, y = 201.310, z = -1830.017 }, rot = { x = 0.000, y = 149.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 134002, monster_id = 21020101, pos = { x = 2132.647, y = 201.325, z = -1826.462 }, rot = { x = 0.000, y = 170.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	-- 绑定保护罩的风萨满
	{ config_id = 134003, monster_id = 21030301, pos = { x = 2137.988, y = 198.456, z = -1846.530 }, rot = { x = 0.000, y = 132.040, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 134004, monster_id = 21010201, pos = { x = 2129.702, y = 201.320, z = -1828.364 }, rot = { x = 0.000, y = 136.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 134005, monster_id = 21010401, pos = { x = 2121.482, y = 200.639, z = -1839.015 }, rot = { x = 0.000, y = 130.700, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 134006, monster_id = 21010901, pos = { x = 2119.888, y = 200.683, z = -1840.153 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 134007, monster_id = 21010901, pos = { x = 2132.956, y = 201.166, z = -1828.116 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 134008, monster_id = 21010201, pos = { x = 2129.520, y = 201.362, z = -1826.982 }, rot = { x = 0.000, y = 124.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 134009, monster_id = 21020201, pos = { x = 2116.747, y = 200.657, z = -1840.254 }, rot = { x = 0.000, y = 213.700, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 134010, monster_id = 21010401, pos = { x = 2117.261, y = 200.701, z = -1837.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 134020, monster_id = 21010401, pos = { x = 2121.001, y = 200.643, z = -1836.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 134012, gadget_id = 70360128, pos = { x = 2130.595, y = 195.195, z = -1827.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 134013, gadget_id = 70210113, pos = { x = 2130.595, y = 195.195, z = -1827.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 哨塔保护罩A
	{ config_id = 134014, gadget_id = 70290058, pos = { x = 2137.725, y = 194.600, z = -1846.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 可摧毁小哨塔A
	{ config_id = 134015, gadget_id = 70950092, pos = { x = 2137.725, y = 194.600, z = -1846.356 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 134016, gadget_id = 70950087, pos = { x = 2133.358, y = 194.600, z = -1840.517 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	-- 不可摧毁大哨塔A
	{ config_id = 134017, gadget_id = 70290059, pos = { x = 2130.358, y = 195.168, z = -1826.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 134018, gadget_id = 70950087, pos = { x = 2135.239, y = 194.600, z = -1854.748 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 134019, gadget_id = 70950087, pos = { x = 2135.349, y = 194.600, z = -1839.304 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 134022, gadget_id = 70290057, pos = { x = 2143.303, y = 194.600, z = -1826.880 }, rot = { x = 0.000, y = 318.500, z = 0.000 }, level = 1 },
	-- 不可摧毁大哨塔B
	{ config_id = 134024, gadget_id = 70290059, pos = { x = 2118.374, y = 194.600, z = -1839.126 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 134025, gadget_id = 70290056, pos = { x = 2114.895, y = 194.600, z = -1851.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 134027, gadget_id = 70950087, pos = { x = 2144.252, y = 194.600, z = -1836.257 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 134029, gadget_id = 70290057, pos = { x = 2125.828, y = 194.600, z = -1855.517 }, rot = { x = 0.000, y = 134.940, z = 0.000 }, level = 1 },
	{ config_id = 134045, gadget_id = 70690008, pos = { x = 2125.026, y = 194.600, z = -1833.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 134046, gadget_id = 70290057, pos = { x = 2114.300, y = 194.600, z = -1828.593 }, rot = { x = 0.000, y = 134.940, z = 0.000 }, level = 1 },
	{ config_id = 134047, gadget_id = 70290057, pos = { x = 2150.942, y = 194.600, z = -1840.581 }, rot = { x = 0.000, y = 134.940, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1134031, name = "CHALLENGE_SUCCESS_134031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_134031" },
	{ config_id = 1134032, name = "CHALLENGE_FAIL_134032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_134032", trigger_count = 0 },
	{ config_id = 1134034, name = "GROUP_REFRESH_134034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_134034" },
	{ config_id = 1134035, name = "BLOSSOM_CHEST_DIE_134035", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_134035", action = "action_EVENT_BLOSSOM_CHEST_DIE_134035", trigger_count = 0 },
	{ config_id = 1134037, name = "BLOSSOM_PROGRESS_FINISH_134037", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_134037" },
	{ config_id = 1134038, name = "GROUP_LOAD_134038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_134038" },
	{ config_id = 1134041, name = "ANY_MONSTER_DIE_134041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134041", action = "action_EVENT_ANY_MONSTER_DIE_134041" },
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1134043, name = "ANY_MONSTER_DIE_134043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_134043", action = "action_EVENT_ANY_MONSTER_DIE_134043" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1134044, name = "ANY_GADGET_DIE_134044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_134044", action = "action_EVENT_ANY_GADGET_DIE_134044" }
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
		{ config_id = 1134033, name = "GADGET_CREATE_134033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_134033", action = "action_EVENT_GADGET_CREATE_134033", trigger_count = 0 },
		{ config_id = 1134036, name = "SELECT_OPTION_134036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_134036", action = "action_EVENT_SELECT_OPTION_134036", trigger_count = 0 }
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
		gadgets = { 134012, 134013 },
		regions = { },
		triggers = { "GROUP_LOAD_134038" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 134001, 134003, 134005, 134006, 134007 },
		gadgets = { 134014, 134015, 134016, 134017, 134018, 134019, 134022, 134024, 134025, 134027, 134029, 134045, 134046, 134047 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_134031", "CHALLENGE_FAIL_134032", "GROUP_REFRESH_134034", "BLOSSOM_CHEST_DIE_134035", "BLOSSOM_PROGRESS_FINISH_134037", "ANY_MONSTER_DIE_134041", "ANY_MONSTER_DIE_134043", "ANY_GADGET_DIE_134044" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 134002, 134004, 134008, 134009, 134010, 134020 },
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
function action_EVENT_CHALLENGE_SUCCESS_134031(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101134)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_134032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101134, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_134034(context, evt)
	-- 创建id为134012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 134012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101134, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101134) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_134035(context, evt)
	if 134013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_134035(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_134037(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101134,134013) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101134, 3) then
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
function action_EVENT_GROUP_LOAD_134038(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134041(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101134) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134041(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101134, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2137.725,y=194.6,z=-1846.356}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_134043(context, evt)
	if 134003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_134043(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_134044(context, evt)
	if 134023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_134044(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 134021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end