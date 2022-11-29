-- 基础信息
local base_info = {
	group_id = 133003569
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 569001, monster_id = 21010301, pos = { x = 1937.781, y = 240.922, z = -1041.364 }, rot = { x = 0.000, y = 253.480, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569002, monster_id = 21010301, pos = { x = 1924.535, y = 241.378, z = -1039.488 }, rot = { x = 0.000, y = 145.260, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569003, monster_id = 21010301, pos = { x = 1928.072, y = 240.048, z = -1047.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569004, monster_id = 21010601, pos = { x = 1937.611, y = 241.057, z = -1045.363 }, rot = { x = 0.000, y = 315.170, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569005, monster_id = 21010701, pos = { x = 1929.680, y = 239.353, z = -1051.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569006, monster_id = 21010701, pos = { x = 1931.021, y = 241.778, z = -1036.705 }, rot = { x = 0.000, y = 172.420, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569007, monster_id = 21010701, pos = { x = 1937.246, y = 240.064, z = -1046.854 }, rot = { x = 0.000, y = 321.660, z = 0.000 }, level = 3, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569008, monster_id = 21010701, pos = { x = 1932.292, y = 241.062, z = -1041.518 }, rot = { x = 0.000, y = 272.440, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 569024, monster_id = 20011201, pos = { x = 1931.964, y = 240.358, z = -1045.638 }, rot = { x = 0.000, y = 314.592, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 569025, monster_id = 20011201, pos = { x = 1929.230, y = 241.469, z = -1039.370 }, rot = { x = 0.000, y = 147.709, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 569009, gadget_id = 70360056, pos = { x = 1927.949, y = 241.081, z = -1041.520 }, rot = { x = 348.528, y = 357.486, z = 0.500 }, level = 1, persistent = true, area_id = 3 },
	-- 武器机关
	{ config_id = 569010, gadget_id = 70360057, pos = { x = 1927.949, y = 241.081, z = -1041.520 }, rot = { x = 358.621, y = 83.193, z = 348.599 }, level = 1, persistent = true, area_id = 3 },
	-- 地脉之花通用
	{ config_id = 569011, gadget_id = 70210106, pos = { x = 1927.593, y = 241.120, z = -1041.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1569012, name = "GADGET_STATE_CHANGE_569012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_569012", action = "action_EVENT_GADGET_STATE_CHANGE_569012", trigger_count = 0 },
	{ config_id = 1569013, name = "GADGET_STATE_CHANGE_569013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_569013", action = "action_EVENT_GADGET_STATE_CHANGE_569013", trigger_count = 0 },
	{ config_id = 1569014, name = "GADGET_CREATE_569014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_569014", action = "action_EVENT_GADGET_CREATE_569014", trigger_count = 0 },
	{ config_id = 1569015, name = "GROUP_REFRESH_569015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_569015" },
	{ config_id = 1569016, name = "BLOSSOM_CHEST_DIE_569016", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_569016", action = "action_EVENT_BLOSSOM_CHEST_DIE_569016", trigger_count = 0 },
	{ config_id = 1569017, name = "GADGET_CREATE_569017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_569017", action = "action_EVENT_GADGET_CREATE_569017", trigger_count = 0 },
	{ config_id = 1569018, name = "SELECT_OPTION_569018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_569018", action = "action_EVENT_SELECT_OPTION_569018", trigger_count = 0 },
	{ config_id = 1569019, name = "SELECT_OPTION_569019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_569019", action = "action_EVENT_SELECT_OPTION_569019", trigger_count = 0 },
	{ config_id = 1569020, name = "ANY_MONSTER_DIE_569020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_569020", trigger_count = 0 },
	{ config_id = 1569021, name = "BLOSSOM_PROGRESS_FINISH_569021", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_569021" },
	{ config_id = 1569022, name = "GROUP_LOAD_569022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_569022" },
	{ config_id = 1569023, name = "ANY_MONSTER_DIE_569023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_569023", action = "action_EVENT_ANY_MONSTER_DIE_569023" }
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
		triggers = { "GROUP_LOAD_569022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_569012", "GADGET_STATE_CHANGE_569013", "GADGET_CREATE_569014", "GROUP_REFRESH_569015", "BLOSSOM_CHEST_DIE_569016", "GADGET_CREATE_569017", "SELECT_OPTION_569018", "SELECT_OPTION_569019", "ANY_MONSTER_DIE_569020", "BLOSSOM_PROGRESS_FINISH_569021", "ANY_MONSTER_DIE_569023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 569001, 569002, 569003, 569004, 569024, 569025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 569005, 569006, 569007, 569008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_569012(context, evt)
	if 569009 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_569012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_569013(context, evt)
	if 569010 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_569013(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_569014(context, evt)
	if 569009 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_569014(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_569015(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=569009,[2]=nil,[3]=569010}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133003569)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003569, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_569016(context, evt)
	if 569011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_569016(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_569017(context, evt)
	if 569010 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_569017(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_569018(context, evt)
	-- 判断是gadgetid 569009 option_id 187
	if 569009 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_569018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003569, 3)
	
	-- 删除指定group： 133003569 ；指定config：569009；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003569, 569009, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 569009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 569009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003569, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_569019(context, evt)
	-- 判断是gadgetid 569010 option_id 187
	if 569010 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_569019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003569, 3)
	
	-- 删除指定group： 133003569 ；指定config：569010；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133003569, 569010, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 569010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 569010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003569, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133003569) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_569020(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133003569)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_569021(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133003569,569011) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003569, 3) then
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
function action_EVENT_GROUP_LOAD_569022(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_569023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_569023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003569, 4)
	
	return 0
end