-- 基础信息
local base_info = {
	group_id = 133108138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 23010101, pos = { x = -266.046, y = 202.211, z = -900.512 }, rot = { x = 0.000, y = 114.071, z = 0.000 }, level = 2, drop_tag = "先遣队", area_id = 7 },
	{ config_id = 138002, monster_id = 23010201, pos = { x = -259.727, y = 203.378, z = -909.191 }, rot = { x = 0.000, y = 34.798, z = 0.000 }, level = 2, drop_tag = "先遣队", area_id = 7 },
	{ config_id = 138003, monster_id = 23010501, pos = { x = -255.579, y = 202.122, z = -909.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "先遣队", area_id = 7 },
	{ config_id = 138023, monster_id = 23020101, pos = { x = -251.143, y = 201.287, z = -901.567 }, rot = { x = 0.000, y = 268.592, z = 0.000 }, level = 1, drop_tag = "债务处理人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 138004, gadget_id = 70360056, pos = { x = -254.172, y = 201.658, z = -903.481 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, persistent = true, area_id = 7 },
	-- 武器机关
	{ config_id = 138005, gadget_id = 70360057, pos = { x = -254.172, y = 201.658, z = -903.481 }, rot = { x = 6.264, y = 85.696, z = 2.596 }, level = 1, persistent = true, area_id = 7 },
	-- 地脉之花通用
	{ config_id = 138006, gadget_id = 70210106, pos = { x = -255.215, y = 201.758, z = -903.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138007, name = "GADGET_STATE_CHANGE_138007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138007", action = "action_EVENT_GADGET_STATE_CHANGE_138007", trigger_count = 0 },
	{ config_id = 1138008, name = "GADGET_STATE_CHANGE_138008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_138008", action = "action_EVENT_GADGET_STATE_CHANGE_138008", trigger_count = 0 },
	{ config_id = 1138009, name = "GADGET_CREATE_138009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_138009", action = "action_EVENT_GADGET_CREATE_138009", trigger_count = 0 },
	{ config_id = 1138010, name = "GROUP_REFRESH_138010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_138010" },
	{ config_id = 1138011, name = "BLOSSOM_CHEST_DIE_138011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_138011", action = "action_EVENT_BLOSSOM_CHEST_DIE_138011", trigger_count = 0 },
	{ config_id = 1138012, name = "GADGET_CREATE_138012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_138012", action = "action_EVENT_GADGET_CREATE_138012", trigger_count = 0 },
	{ config_id = 1138013, name = "SELECT_OPTION_138013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_138013", action = "action_EVENT_SELECT_OPTION_138013", trigger_count = 0 },
	{ config_id = 1138014, name = "SELECT_OPTION_138014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_138014", action = "action_EVENT_SELECT_OPTION_138014", trigger_count = 0 },
	{ config_id = 1138015, name = "ANY_MONSTER_DIE_138015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_138015", trigger_count = 0 },
	{ config_id = 1138016, name = "BLOSSOM_PROGRESS_FINISH_138016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_138016" },
	{ config_id = 1138017, name = "GROUP_LOAD_138017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_138017" },
	{ config_id = 1138020, name = "ANY_MONSTER_DIE_138020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138020", action = "action_EVENT_ANY_MONSTER_DIE_138020" }
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
		triggers = { "GROUP_LOAD_138017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_138007", "GADGET_STATE_CHANGE_138008", "GADGET_CREATE_138009", "GROUP_REFRESH_138010", "BLOSSOM_CHEST_DIE_138011", "GADGET_CREATE_138012", "SELECT_OPTION_138013", "SELECT_OPTION_138014", "ANY_MONSTER_DIE_138015", "BLOSSOM_PROGRESS_FINISH_138016", "ANY_MONSTER_DIE_138020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 138001, 138002, 138003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 138023 },
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
function condition_EVENT_GADGET_STATE_CHANGE_138007(context, evt)
	if 138004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_138008(context, evt)
	if 138005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_138008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_138009(context, evt)
	if 138004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_138009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_138010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=138004,[2]=nil,[3]=138005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133108138)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108138, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_138011(context, evt)
	if 138006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_138011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_138012(context, evt)
	if 138005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_138012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_138013(context, evt)
	-- 判断是gadgetid 138004 option_id 187
	if 138004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_138013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108138, 3)
	
	-- 删除指定group： 133108138 ；指定config：138004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108138, 138004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 138004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108138, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_138014(context, evt)
	-- 判断是gadgetid 138005 option_id 187
	if 138005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_138014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108138, 3)
	
	-- 删除指定group： 133108138 ；指定config：138005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108138, 138005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 138005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108138, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133108138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133108138)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_138016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133108138,138006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108138, 3) then
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
function action_EVENT_GROUP_LOAD_138017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_138020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108138, 4)
	
	return 0
end