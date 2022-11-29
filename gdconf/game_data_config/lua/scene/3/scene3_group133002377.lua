-- 基础信息
local base_info = {
	group_id = 133002377
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 377001, monster_id = 21010601, pos = { x = 1909.838, y = 240.146, z = -348.221 }, rot = { x = 0.000, y = 260.949, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 377002, monster_id = 20011201, pos = { x = 1911.509, y = 240.186, z = -347.408 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 377003, monster_id = 20011201, pos = { x = 1898.458, y = 240.228, z = -354.539 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 377004, monster_id = 21010601, pos = { x = 1898.753, y = 239.975, z = -352.616 }, rot = { x = 0.000, y = 357.063, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 377005, monster_id = 21011001, pos = { x = 1901.525, y = 238.588, z = -342.341 }, rot = { x = 0.000, y = 216.900, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 377007, monster_id = 21011001, pos = { x = 1895.201, y = 238.018, z = -343.839 }, rot = { x = 0.000, y = 144.200, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 377008, monster_id = 22010101, pos = { x = 1892.375, y = 238.299, z = -347.246 }, rot = { x = 0.000, y = 79.900, z = 0.000 }, level = 3, drop_tag = "深渊法师", area_id = 3 },
	{ config_id = 377010, monster_id = 21011001, pos = { x = 1909.552, y = 239.162, z = -340.510 }, rot = { x = 0.000, y = 216.900, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 377012, gadget_id = 70360056, pos = { x = 1903.027, y = 239.627, z = -347.769 }, rot = { x = 8.489, y = 0.032, z = 1.995 }, level = 1, persistent = true, area_id = 3 },
	-- 武器机关
	{ config_id = 377013, gadget_id = 70360057, pos = { x = 1903.027, y = 239.627, z = -347.769 }, rot = { x = 358.693, y = 85.309, z = 8.621 }, level = 1, persistent = true, area_id = 3 },
	-- 地脉之花通用
	{ config_id = 377014, gadget_id = 70210106, pos = { x = 1903.031, y = 239.923, z = -349.748 }, rot = { x = 8.223, y = 6.309, z = 2.908 }, level = 6, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1377015, name = "ANY_MONSTER_DIE_377015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_377015", action = "action_EVENT_ANY_MONSTER_DIE_377015" },
	{ config_id = 1377016, name = "GADGET_STATE_CHANGE_377016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377016", action = "action_EVENT_GADGET_STATE_CHANGE_377016", trigger_count = 0 },
	{ config_id = 1377017, name = "GADGET_STATE_CHANGE_377017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_377017", action = "action_EVENT_GADGET_STATE_CHANGE_377017", trigger_count = 0 },
	{ config_id = 1377018, name = "GADGET_CREATE_377018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377018", action = "action_EVENT_GADGET_CREATE_377018", trigger_count = 0 },
	{ config_id = 1377019, name = "GROUP_REFRESH_377019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_377019" },
	{ config_id = 1377020, name = "BLOSSOM_CHEST_DIE_377020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_377020", action = "action_EVENT_BLOSSOM_CHEST_DIE_377020", trigger_count = 0 },
	{ config_id = 1377021, name = "GADGET_CREATE_377021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_377021", action = "action_EVENT_GADGET_CREATE_377021", trigger_count = 0 },
	{ config_id = 1377022, name = "SELECT_OPTION_377022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377022", action = "action_EVENT_SELECT_OPTION_377022", trigger_count = 0 },
	{ config_id = 1377023, name = "SELECT_OPTION_377023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_377023", action = "action_EVENT_SELECT_OPTION_377023", trigger_count = 0 },
	{ config_id = 1377024, name = "ANY_MONSTER_DIE_377024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_377024", trigger_count = 0 },
	{ config_id = 1377025, name = "BLOSSOM_PROGRESS_FINISH_377025", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_377025" },
	{ config_id = 1377026, name = "GROUP_LOAD_377026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_377026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_377026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_377015", "GADGET_STATE_CHANGE_377016", "GADGET_STATE_CHANGE_377017", "GADGET_CREATE_377018", "GROUP_REFRESH_377019", "BLOSSOM_CHEST_DIE_377020", "GADGET_CREATE_377021", "SELECT_OPTION_377022", "SELECT_OPTION_377023", "ANY_MONSTER_DIE_377024", "BLOSSOM_PROGRESS_FINISH_377025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 377001, 377002, 377003, 377004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 377005, 377007, 377008, 377010 },
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
function condition_EVENT_ANY_MONSTER_DIE_377015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_377015(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002377, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377016(context, evt)
	if 377012 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377016(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_377017(context, evt)
	if 377013 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_377017(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_377018(context, evt)
	if 377012 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_377018(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_377019(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=377012,[2]=nil,[3]=377013}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133002377)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002377, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_377020(context, evt)
	if 377014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_377020(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_377021(context, evt)
	if 377013 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_377021(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_377022(context, evt)
	-- 判断是gadgetid 377012 option_id 187
	if 377012 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_377022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002377, 3)
	
	-- 删除指定group： 133002377 ；指定config：377012；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002377, 377012, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 377012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002377, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_377023(context, evt)
	-- 判断是gadgetid 377013 option_id 187
	if 377013 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_377023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002377, 3)
	
	-- 删除指定group： 133002377 ；指定config：377013；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002377, 377013, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 377013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 377013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002377, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002377) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_377024(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133002377)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_377025(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133002377,377014) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002377, 3) then
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
function action_EVENT_GROUP_LOAD_377026(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end