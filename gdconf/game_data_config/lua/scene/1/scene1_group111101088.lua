-- 基础信息
local base_info = {
	group_id = 111101088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 21010401, pos = { x = 2665.291, y = 198.333, z = -1757.222 }, rot = { x = 0.000, y = 20.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 88002, monster_id = 21010901, pos = { x = 2687.421, y = 198.354, z = -1755.963 }, rot = { x = 0.000, y = 353.810, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 88004, monster_id = 22010201, pos = { x = 2676.483, y = 200.767, z = -1744.958 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 88006, monster_id = 21020101, pos = { x = 2676.594, y = 200.804, z = -1745.978 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 88008, monster_id = 21030301, pos = { x = 2676.267, y = 200.799, z = -1745.486 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88005, gadget_id = 70950087, pos = { x = 2664.044, y = 194.988, z = -1753.513 }, rot = { x = 0.000, y = 49.032, z = 0.000 }, level = 1 },
	{ config_id = 88007, gadget_id = 70950087, pos = { x = 2690.216, y = 194.600, z = -1751.760 }, rot = { x = 0.000, y = 196.466, z = 0.000 }, level = 1 },
	-- 雪山活动开启机关
	{ config_id = 88009, gadget_id = 70360128, pos = { x = 2677.279, y = 194.305, z = -1745.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 领奖台
	{ config_id = 88010, gadget_id = 70210113, pos = { x = 2677.279, y = 194.305, z = -1745.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true },
	-- 哨塔保护罩A
	{ config_id = 88011, gadget_id = 70290058, pos = { x = 2665.609, y = 194.600, z = -1757.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 可摧毁小哨塔A
	{ config_id = 88012, gadget_id = 70950092, pos = { x = 2665.609, y = 194.600, z = -1757.164 }, rot = { x = 0.000, y = 314.149, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 可摧毁小哨塔B
	{ config_id = 88013, gadget_id = 70950092, pos = { x = 2688.205, y = 194.631, z = -1756.378 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 哨塔保护罩B
	{ config_id = 88015, gadget_id = 70290058, pos = { x = 2688.205, y = 197.285, z = -1756.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 不可摧毁大哨塔A
	{ config_id = 88032, gadget_id = 70290059, pos = { x = 2677.042, y = 194.600, z = -1745.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 小哨塔A连接梯子A
	{ config_id = 88035, gadget_id = 70290060, pos = { x = 2670.290, y = 198.882, z = -1751.972 }, rot = { x = 0.000, y = 313.734, z = 0.000 }, level = 1 },
	-- 小哨塔B连接梯子B
	{ config_id = 88036, gadget_id = 70290060, pos = { x = 2683.347, y = 198.800, z = -1752.045 }, rot = { x = 0.000, y = 221.702, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 消灭了风丘丘萨满后销毁在场全部风护罩
	{ config_id = 1088003, name = "ANY_MONSTER_DIE_88003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88003", action = "action_EVENT_ANY_MONSTER_DIE_88003" },
	{ config_id = 1088019, name = "CHALLENGE_SUCCESS_88019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_88019" },
	{ config_id = 1088020, name = "CHALLENGE_FAIL_88020", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_88020", trigger_count = 0 },
	{ config_id = 1088022, name = "GROUP_REFRESH_88022", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_88022" },
	{ config_id = 1088023, name = "BLOSSOM_CHEST_DIE_88023", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_88023", action = "action_EVENT_BLOSSOM_CHEST_DIE_88023", trigger_count = 0 },
	{ config_id = 1088025, name = "BLOSSOM_PROGRESS_FINISH_88025", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_88025" },
	{ config_id = 1088026, name = "GROUP_LOAD_88026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_88026" },
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1088027, name = "ANY_GADGET_DIE_88027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_88027", action = "action_EVENT_ANY_GADGET_DIE_88027" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1088028, name = "ANY_GADGET_DIE_88028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_88028", action = "action_EVENT_ANY_GADGET_DIE_88028" },
	{ config_id = 1088030, name = "ANY_MONSTER_DIE_88030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88030", action = "action_EVENT_ANY_MONSTER_DIE_88030" },
	{ config_id = 1088031, name = "ANY_MONSTER_DIE_88031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88031", action = "action_EVENT_ANY_MONSTER_DIE_88031" }
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
		{ config_id = 1088021, name = "GADGET_CREATE_88021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_88021", action = "action_EVENT_GADGET_CREATE_88021", trigger_count = 0 },
		{ config_id = 1088024, name = "SELECT_OPTION_88024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_88024", action = "action_EVENT_SELECT_OPTION_88024", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_88026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 88001, 88002, 88008 },
		gadgets = { 88005, 88007, 88011, 88012, 88013, 88015, 88032, 88035, 88036 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88003", "CHALLENGE_SUCCESS_88019", "CHALLENGE_FAIL_88020", "GROUP_REFRESH_88022", "BLOSSOM_CHEST_DIE_88023", "BLOSSOM_PROGRESS_FINISH_88025", "ANY_GADGET_DIE_88027", "ANY_GADGET_DIE_88028", "ANY_MONSTER_DIE_88030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 88006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 88004 },
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
function condition_EVENT_ANY_MONSTER_DIE_88003(context, evt)
	if 88008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 88011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 88015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_88019(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 111101088)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_88020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101088, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_88022(context, evt)
	-- 创建id为88009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 88009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101088, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 111101088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_88023(context, evt)
	if 88010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_88023(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_88025(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 111101088,88010) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 111101088, 3) then
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
function action_EVENT_GROUP_LOAD_88026(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_88027(context, evt)
	if 88012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_88027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 88035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_88028(context, evt)
	if 88013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_88028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 88036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101088) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为0
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88030(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101088, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101088) ~= 0 then
		return false
	end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88031(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101088, 4)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2677,y=194,z=-1745}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end