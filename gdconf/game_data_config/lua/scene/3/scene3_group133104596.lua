-- 基础信息
local base_info = {
	group_id = 133104596
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 596001, monster_id = 21010901, pos = { x = 551.639, y = 199.508, z = 276.865 }, rot = { x = 0.000, y = 287.919, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 596002, monster_id = 21010901, pos = { x = 549.848, y = 200.253, z = 269.346 }, rot = { x = 0.000, y = 311.471, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 596003, monster_id = 21011001, pos = { x = 550.769, y = 199.418, z = 273.025 }, rot = { x = 0.000, y = 273.893, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 596018, monster_id = 22010201, pos = { x = 543.440, y = 196.345, z = 272.701 }, rot = { x = 0.000, y = 320.403, z = 0.000 }, level = 3, drop_tag = "深渊法师", isElite = true, area_id = 9 },
	{ config_id = 596020, monster_id = 21030101, pos = { x = 545.390, y = 197.057, z = 266.436 }, rot = { x = 0.000, y = 33.579, z = 0.000 }, level = 2, drop_tag = "丘丘萨满", area_id = 9 },
	{ config_id = 596021, monster_id = 21011001, pos = { x = 542.330, y = 196.645, z = 269.094 }, rot = { x = 0.000, y = 57.323, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 596004, gadget_id = 70360056, pos = { x = 542.893, y = 196.000, z = 276.406 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, persistent = true, area_id = 9 },
	-- 武器机关
	{ config_id = 596005, gadget_id = 70360057, pos = { x = 542.893, y = 196.000, z = 276.406 }, rot = { x = 6.264, y = 85.696, z = 2.596 }, level = 1, persistent = true, area_id = 9 },
	-- 地脉之花通用
	{ config_id = 596006, gadget_id = 70210106, pos = { x = 544.804, y = 196.244, z = 274.299 }, rot = { x = 0.000, y = 167.746, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1596007, name = "GADGET_STATE_CHANGE_596007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596007", action = "action_EVENT_GADGET_STATE_CHANGE_596007", trigger_count = 0 },
	{ config_id = 1596008, name = "GADGET_STATE_CHANGE_596008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_596008", action = "action_EVENT_GADGET_STATE_CHANGE_596008", trigger_count = 0 },
	{ config_id = 1596009, name = "GADGET_CREATE_596009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_596009", action = "action_EVENT_GADGET_CREATE_596009", trigger_count = 0 },
	{ config_id = 1596010, name = "GROUP_REFRESH_596010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_596010" },
	{ config_id = 1596011, name = "BLOSSOM_CHEST_DIE_596011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_596011", action = "action_EVENT_BLOSSOM_CHEST_DIE_596011", trigger_count = 0 },
	{ config_id = 1596012, name = "GADGET_CREATE_596012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_596012", action = "action_EVENT_GADGET_CREATE_596012", trigger_count = 0 },
	{ config_id = 1596013, name = "SELECT_OPTION_596013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_596013", action = "action_EVENT_SELECT_OPTION_596013", trigger_count = 0 },
	{ config_id = 1596014, name = "SELECT_OPTION_596014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_596014", action = "action_EVENT_SELECT_OPTION_596014", trigger_count = 0 },
	{ config_id = 1596015, name = "ANY_MONSTER_DIE_596015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_596015", trigger_count = 0 },
	{ config_id = 1596016, name = "BLOSSOM_PROGRESS_FINISH_596016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_596016" },
	{ config_id = 1596017, name = "GROUP_LOAD_596017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_596017" },
	{ config_id = 1596019, name = "ANY_MONSTER_DIE_596019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_596019", action = "action_EVENT_ANY_MONSTER_DIE_596019" }
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
		triggers = { "GROUP_LOAD_596017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_596007", "GADGET_STATE_CHANGE_596008", "GADGET_CREATE_596009", "GROUP_REFRESH_596010", "BLOSSOM_CHEST_DIE_596011", "GADGET_CREATE_596012", "SELECT_OPTION_596013", "SELECT_OPTION_596014", "ANY_MONSTER_DIE_596015", "BLOSSOM_PROGRESS_FINISH_596016", "ANY_MONSTER_DIE_596019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 596001, 596002, 596003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 596018, 596020, 596021 },
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
function condition_EVENT_GADGET_STATE_CHANGE_596007(context, evt)
	if 596004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_596008(context, evt)
	if 596005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_596008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_596009(context, evt)
	if 596004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_596009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_596010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=596004,[2]=nil,[3]=596005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133104596)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104596, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_596011(context, evt)
	if 596006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_596011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_596012(context, evt)
	if 596005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_596012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_596013(context, evt)
	-- 判断是gadgetid 596004 option_id 187
	if 596004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_596013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104596, 3)
	
	-- 删除指定group： 133104596 ；指定config：596004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104596, 596004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 596004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104596, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_596014(context, evt)
	-- 判断是gadgetid 596005 option_id 187
	if 596005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_596014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104596, 3)
	
	-- 删除指定group： 133104596 ；指定config：596005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104596, 596005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 596005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104596, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104596) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_596015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133104596)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_596016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133104596,596006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104596, 3) then
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
function action_EVENT_GROUP_LOAD_596017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_596019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_596019(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104596, 4)
	
	return 0
end