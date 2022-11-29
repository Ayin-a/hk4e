-- 基础信息
local base_info = {
	group_id = 111101128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 21010401, pos = { x = 2278.770, y = 198.230, z = -1910.047 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128003, monster_id = 21020101, pos = { x = 2294.395, y = 201.253, z = -1898.725 }, rot = { x = 0.000, y = 287.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	-- 绑定保护罩的风萨满
	{ config_id = 128004, monster_id = 21030301, pos = { x = 2290.186, y = 201.157, z = -1897.623 }, rot = { x = 0.000, y = 316.065, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128005, monster_id = 22010201, pos = { x = 2293.058, y = 201.159, z = -1901.061 }, rot = { x = 0.000, y = 317.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128021, monster_id = 21010401, pos = { x = 2280.440, y = 198.343, z = -1908.691 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128039, monster_id = 21010401, pos = { x = 2300.344, y = 198.264, z = -1889.003 }, rot = { x = 0.000, y = 313.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128040, monster_id = 21010401, pos = { x = 2302.300, y = 198.305, z = -1888.347 }, rot = { x = 0.000, y = 313.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 128041, monster_id = 21010201, pos = { x = 2291.267, y = 201.290, z = -1899.245 }, rot = { x = 0.000, y = 313.600, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 128042, monster_id = 21020201, pos = { x = 2291.068, y = 201.152, z = -1902.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 128043, monster_id = 21010201, pos = { x = 2292.701, y = 201.158, z = -1897.732 }, rot = { x = 0.000, y = 283.800, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 128044, monster_id = 21010201, pos = { x = 2289.694, y = 201.118, z = -1900.852 }, rot = { x = 0.000, y = 357.900, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128002, gadget_id = 70290056, pos = { x = 2305.295, y = 194.600, z = -1898.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 雪山活动开启机关
	{ config_id = 128006, gadget_id = 70360128, pos = { x = 2292.343, y = 195.391, z = -1899.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 128007, gadget_id = 70210113, pos = { x = 2292.343, y = 195.391, z = -1899.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 哨塔保护罩A
	{ config_id = 128008, gadget_id = 70290058, pos = { x = 2280.672, y = 194.600, z = -1910.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 可摧毁小哨塔A
	{ config_id = 128009, gadget_id = 70950092, pos = { x = 2280.672, y = 194.600, z = -1910.737 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 128010, gadget_id = 70290056, pos = { x = 2286.377, y = 194.600, z = -1916.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 哨塔保护罩B
	{ config_id = 128011, gadget_id = 70290058, pos = { x = 2301.985, y = 194.600, z = -1889.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 不可摧毁大哨塔A
	{ config_id = 128012, gadget_id = 70290059, pos = { x = 2292.106, y = 195.095, z = -1898.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 128013, gadget_id = 70950087, pos = { x = 2281.124, y = 194.600, z = -1905.033 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 128014, gadget_id = 70950087, pos = { x = 2295.448, y = 194.600, z = -1889.787 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	-- 小哨塔A连接梯子A
	{ config_id = 128015, gadget_id = 70290060, pos = { x = 2285.354, y = 198.900, z = -1905.545 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1 },
	{ config_id = 128016, gadget_id = 70950087, pos = { x = 2274.829, y = 194.600, z = -1911.158 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	-- 小哨塔B连接梯子B
	{ config_id = 128017, gadget_id = 70290060, pos = { x = 2297.368, y = 198.930, z = -1893.630 }, rot = { x = 0.000, y = 134.771, z = 0.000 }, level = 1 },
	{ config_id = 128018, gadget_id = 70290057, pos = { x = 2296.826, y = 194.600, z = -1904.438 }, rot = { x = 0.000, y = 318.500, z = 0.000 }, level = 1 },
	{ config_id = 128019, gadget_id = 70950087, pos = { x = 2302.316, y = 194.600, z = -1883.681 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	-- 可摧毁的哨塔B
	{ config_id = 128020, gadget_id = 70950092, pos = { x = 2301.985, y = 194.600, z = -1889.640 }, rot = { x = 0.000, y = 314.450, z = 0.000 }, level = 1 },
	{ config_id = 128022, gadget_id = 70290057, pos = { x = 2284.051, y = 194.600, z = -1901.633 }, rot = { x = 0.000, y = 87.800, z = 0.000 }, level = 1 },
	{ config_id = 128023, gadget_id = 70690011, pos = { x = 2283.735, y = 194.600, z = -1903.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 128038, gadget_id = 70290057, pos = { x = 2293.699, y = 194.600, z = -1892.805 }, rot = { x = 0.000, y = 195.400, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128024, name = "CHALLENGE_SUCCESS_128024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_128024" },
	{ config_id = 1128025, name = "CHALLENGE_FAIL_128025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_128025", trigger_count = 0 },
	{ config_id = 1128027, name = "GROUP_REFRESH_128027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_128027" },
	{ config_id = 1128028, name = "BLOSSOM_CHEST_DIE_128028", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_128028", action = "action_EVENT_BLOSSOM_CHEST_DIE_128028", trigger_count = 0 },
	{ config_id = 1128030, name = "BLOSSOM_PROGRESS_FINISH_128030", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_128030" },
	{ config_id = 1128031, name = "GROUP_LOAD_128031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_128031" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1128032, name = "ANY_GADGET_DIE_128032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_128032", action = "action_EVENT_ANY_GADGET_DIE_128032" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1128033, name = "ANY_GADGET_DIE_128033", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_128033", action = "action_EVENT_ANY_GADGET_DIE_128033" },
	{ config_id = 1128034, name = "ANY_MONSTER_DIE_128034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128034", action = "action_EVENT_ANY_MONSTER_DIE_128034" },
	{ config_id = 1128035, name = "ANY_MONSTER_DIE_128035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128035", action = "action_EVENT_ANY_MONSTER_DIE_128035" },
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1128036, name = "ANY_MONSTER_DIE_128036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128036", action = "action_EVENT_ANY_MONSTER_DIE_128036" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1128037, name = "ANY_GADGET_DIE_128037", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_128037", action = "action_EVENT_ANY_GADGET_DIE_128037" }
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
		{ config_id = 1128026, name = "GADGET_CREATE_128026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_128026", action = "action_EVENT_GADGET_CREATE_128026", trigger_count = 0 },
		{ config_id = 1128029, name = "SELECT_OPTION_128029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_128029", action = "action_EVENT_SELECT_OPTION_128029", trigger_count = 0 }
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
		gadgets = { 128006, 128007 },
		regions = { },
		triggers = { "GROUP_LOAD_128031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 128001, 128004, 128021, 128039, 128040 },
		gadgets = { 128002, 128008, 128009, 128010, 128011, 128012, 128013, 128014, 128015, 128016, 128017, 128018, 128019, 128020, 128022, 128023, 128038 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_128024", "CHALLENGE_FAIL_128025", "GROUP_REFRESH_128027", "BLOSSOM_CHEST_DIE_128028", "BLOSSOM_PROGRESS_FINISH_128030", "ANY_GADGET_DIE_128032", "ANY_GADGET_DIE_128033", "ANY_MONSTER_DIE_128034", "ANY_MONSTER_DIE_128036", "ANY_GADGET_DIE_128037" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 128003, 128041, 128042 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 128005, 128043, 128044 },
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
function action_EVENT_CHALLENGE_SUCCESS_128024(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101128)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_128025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101128, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_128027(context, evt)
	-- 创建id为128006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 128006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101128, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_128028(context, evt)
	if 128007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_128028(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_128030(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101128,128007) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101128, 3) then
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
function action_EVENT_GROUP_LOAD_128031(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_128032(context, evt)
	if 128009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_128032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_128033(context, evt)
	if 128020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_128033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101128) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128034(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101128, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2292.106,y=195.0951,z=-1898.855}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101128) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128035(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101128, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2292.106,y=195.0951,z=-1898.855}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128036(context, evt)
	if 128004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_128037(context, evt)
	if 128020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_128037(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end