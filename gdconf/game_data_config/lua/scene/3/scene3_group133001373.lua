-- 基础信息
local base_info = {
	group_id = 133001373
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 373001, monster_id = 21020201, pos = { x = 1698.940, y = 264.205, z = -1315.305 }, rot = { x = 0.000, y = 229.300, z = 0.000 }, level = 3, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 373002, monster_id = 21011001, pos = { x = 1697.324, y = 264.836, z = -1325.604 }, rot = { x = 0.000, y = 344.400, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 373003, monster_id = 21011001, pos = { x = 1689.692, y = 263.728, z = -1310.838 }, rot = { x = 0.000, y = 141.000, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 373018, monster_id = 21010501, pos = { x = 1699.912, y = 265.255, z = -1319.752 }, rot = { x = 0.000, y = 259.856, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 2 },
	{ config_id = 373019, monster_id = 21010501, pos = { x = 1687.801, y = 264.352, z = -1319.813 }, rot = { x = 0.000, y = 66.027, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 2 },
	{ config_id = 373020, monster_id = 21030201, pos = { x = 1698.781, y = 264.204, z = -1315.321 }, rot = { x = 0.000, y = 229.300, z = 0.000 }, level = 3, drop_tag = "丘丘萨满", isElite = true, area_id = 2 },
	{ config_id = 373021, monster_id = 21010501, pos = { x = 1691.771, y = 264.907, z = -1328.176 }, rot = { x = 0.000, y = 17.000, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", pose_id = 32, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 373004, gadget_id = 70360056, pos = { x = 1693.700, y = 264.338, z = -1318.554 }, rot = { x = 3.819, y = 359.862, z = 0.775 }, level = 1, persistent = true, area_id = 2 },
	-- 武器机关
	{ config_id = 373005, gadget_id = 70360057, pos = { x = 1693.700, y = 264.338, z = -1318.554 }, rot = { x = 3.819, y = 359.862, z = 0.775 }, level = 1, persistent = true, area_id = 2 },
	-- 地脉之花通用
	{ config_id = 373006, gadget_id = 70210106, pos = { x = 1694.353, y = 264.411, z = -1319.509 }, rot = { x = 0.000, y = 228.664, z = 0.000 }, level = 6, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1373007, name = "GADGET_STATE_CHANGE_373007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373007", action = "action_EVENT_GADGET_STATE_CHANGE_373007", trigger_count = 0 },
	{ config_id = 1373008, name = "GADGET_STATE_CHANGE_373008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373008", action = "action_EVENT_GADGET_STATE_CHANGE_373008", trigger_count = 0 },
	{ config_id = 1373009, name = "GADGET_CREATE_373009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_373009", action = "action_EVENT_GADGET_CREATE_373009", trigger_count = 0 },
	{ config_id = 1373010, name = "GROUP_REFRESH_373010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_373010" },
	{ config_id = 1373011, name = "BLOSSOM_CHEST_DIE_373011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_373011", action = "action_EVENT_BLOSSOM_CHEST_DIE_373011", trigger_count = 0 },
	{ config_id = 1373012, name = "GADGET_CREATE_373012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_373012", action = "action_EVENT_GADGET_CREATE_373012", trigger_count = 0 },
	{ config_id = 1373013, name = "SELECT_OPTION_373013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_373013", action = "action_EVENT_SELECT_OPTION_373013", trigger_count = 0 },
	{ config_id = 1373014, name = "SELECT_OPTION_373014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_373014", action = "action_EVENT_SELECT_OPTION_373014", trigger_count = 0 },
	{ config_id = 1373015, name = "ANY_MONSTER_DIE_373015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_373015", trigger_count = 0 },
	{ config_id = 1373016, name = "BLOSSOM_PROGRESS_FINISH_373016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_373016" },
	{ config_id = 1373017, name = "GROUP_LOAD_373017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_373017" },
	{ config_id = 1373022, name = "ANY_MONSTER_DIE_373022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_373022", action = "action_EVENT_ANY_MONSTER_DIE_373022" }
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
		triggers = { "GROUP_LOAD_373017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_373007", "GADGET_STATE_CHANGE_373008", "GADGET_CREATE_373009", "GROUP_REFRESH_373010", "BLOSSOM_CHEST_DIE_373011", "GADGET_CREATE_373012", "SELECT_OPTION_373013", "SELECT_OPTION_373014", "ANY_MONSTER_DIE_373015", "BLOSSOM_PROGRESS_FINISH_373016", "ANY_MONSTER_DIE_373022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 373001, 373002, 373003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 373018, 373019, 373020, 373021 },
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
function condition_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	if 373004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373008(context, evt)
	if 373005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_373009(context, evt)
	if 373004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_373009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_373010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=373004,[2]=nil,[3]=373005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133001373)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133001373, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_373011(context, evt)
	if 373006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_373011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_373012(context, evt)
	if 373005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_373012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_373013(context, evt)
	-- 判断是gadgetid 373004 option_id 187
	if 373004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_373013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001373, 3)
	
	-- 删除指定group： 133001373 ；指定config：373004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133001373, 373004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 373004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 373004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133001373, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_373014(context, evt)
	-- 判断是gadgetid 373005 option_id 187
	if 373005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_373014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001373, 3)
	
	-- 删除指定group： 133001373 ；指定config：373005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133001373, 373005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 373005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 373005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133001373, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133001373)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_373016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133001373,373006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133001373, 3) then
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
function action_EVENT_GROUP_LOAD_373017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_373022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_373022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001373, 4)
	
	return 0
end