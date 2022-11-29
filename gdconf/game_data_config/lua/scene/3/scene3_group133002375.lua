-- 基础信息
local base_info = {
	group_id = 133002375
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 21010501, pos = { x = 1999.796, y = 252.828, z = -427.366 }, rot = { x = 0.000, y = 347.620, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 375002, monster_id = 21010501, pos = { x = 2002.254, y = 252.237, z = -426.297 }, rot = { x = 0.000, y = 316.300, z = 0.000 }, level = 2, drop_tag = "远程丘丘人", area_id = 3 },
	{ config_id = 375003, monster_id = 20011301, pos = { x = 1994.092, y = 253.451, z = -410.034 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 2, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 375005, monster_id = 21030301, pos = { x = 2003.861, y = 251.752, z = -419.023 }, rot = { x = 0.000, y = 259.140, z = 0.000 }, level = 3, drop_tag = "丘丘萨满", isElite = true, area_id = 3 },
	{ config_id = 375007, monster_id = 21030301, pos = { x = 2003.811, y = 251.768, z = -419.129 }, rot = { x = 0.000, y = 254.900, z = 0.000 }, level = 3, drop_tag = "丘丘萨满", isElite = true, area_id = 3 },
	{ config_id = 375008, monster_id = 21010601, pos = { x = 2002.909, y = 251.716, z = -413.735 }, rot = { x = 0.000, y = 223.300, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 375010, monster_id = 21010601, pos = { x = 2005.069, y = 251.547, z = -422.843 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 375011, monster_id = 20011301, pos = { x = 1993.073, y = 254.296, z = -424.665 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 3, drop_tag = "大史莱姆", area_id = 3 },
	{ config_id = 375012, monster_id = 20011301, pos = { x = 1991.889, y = 254.128, z = -415.276 }, rot = { x = 0.000, y = 289.619, z = 0.000 }, level = 3, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 375019, gadget_id = 70360056, pos = { x = 1998.198, y = 253.008, z = -420.575 }, rot = { x = 3.249, y = 359.836, z = 2.276 }, level = 1, persistent = true, area_id = 3 },
	-- 武器机关
	{ config_id = 375020, gadget_id = 70360057, pos = { x = 1998.198, y = 253.008, z = -420.575 }, rot = { x = 358.247, y = 85.263, z = 3.207 }, level = 1, persistent = true, area_id = 3 },
	-- 地脉之花通用
	{ config_id = 375021, gadget_id = 70210106, pos = { x = 1998.230, y = 253.002, z = -420.597 }, rot = { x = 0.000, y = 288.235, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1375022, name = "ANY_MONSTER_DIE_375022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_375022", action = "action_EVENT_ANY_MONSTER_DIE_375022" },
	{ config_id = 1375024, name = "GADGET_STATE_CHANGE_375024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375024", action = "action_EVENT_GADGET_STATE_CHANGE_375024", trigger_count = 0 },
	{ config_id = 1375025, name = "GADGET_STATE_CHANGE_375025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375025", action = "action_EVENT_GADGET_STATE_CHANGE_375025", trigger_count = 0 },
	{ config_id = 1375026, name = "GADGET_CREATE_375026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_375026", action = "action_EVENT_GADGET_CREATE_375026", trigger_count = 0 },
	{ config_id = 1375027, name = "GROUP_REFRESH_375027", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_375027" },
	{ config_id = 1375028, name = "BLOSSOM_CHEST_DIE_375028", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_375028", action = "action_EVENT_BLOSSOM_CHEST_DIE_375028", trigger_count = 0 },
	{ config_id = 1375029, name = "GADGET_CREATE_375029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_375029", action = "action_EVENT_GADGET_CREATE_375029", trigger_count = 0 },
	{ config_id = 1375030, name = "SELECT_OPTION_375030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_375030", action = "action_EVENT_SELECT_OPTION_375030", trigger_count = 0 },
	{ config_id = 1375031, name = "SELECT_OPTION_375031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_375031", action = "action_EVENT_SELECT_OPTION_375031", trigger_count = 0 },
	{ config_id = 1375032, name = "ANY_MONSTER_DIE_375032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_375032", trigger_count = 0 },
	{ config_id = 1375033, name = "BLOSSOM_PROGRESS_FINISH_375033", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_375033" },
	{ config_id = 1375034, name = "GROUP_LOAD_375034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_375034" }
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
		triggers = { "GROUP_LOAD_375034" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_375022", "GADGET_STATE_CHANGE_375024", "GADGET_STATE_CHANGE_375025", "GADGET_CREATE_375026", "GROUP_REFRESH_375027", "BLOSSOM_CHEST_DIE_375028", "GADGET_CREATE_375029", "SELECT_OPTION_375030", "SELECT_OPTION_375031", "ANY_MONSTER_DIE_375032", "BLOSSOM_PROGRESS_FINISH_375033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 375001, 375002, 375003, 375005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 375007, 375008, 375010, 375011, 375012 },
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
function condition_EVENT_ANY_MONSTER_DIE_375022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002375, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375024(context, evt)
	if 375019 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375024(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375025(context, evt)
	if 375020 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375025(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_375026(context, evt)
	if 375019 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_375026(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_375027(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=375019,[2]=nil,[3]=375020}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133002375)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002375, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_375028(context, evt)
	if 375021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_375028(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_375029(context, evt)
	if 375020 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_375029(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_375030(context, evt)
	-- 判断是gadgetid 375019 option_id 187
	if 375019 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_375030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002375, 3)
	
	-- 删除指定group： 133002375 ；指定config：375019；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002375, 375019, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 375019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002375, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_375031(context, evt)
	-- 判断是gadgetid 375020 option_id 187
	if 375020 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_375031(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002375, 3)
	
	-- 删除指定group： 133002375 ；指定config：375020；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002375, 375020, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 375020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002375, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133002375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375032(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133002375)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_375033(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133002375,375021) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002375, 3) then
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
function action_EVENT_GROUP_LOAD_375034(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end