-- 基础信息
local base_info = {
	group_id = 133101196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196001, monster_id = 21010701, pos = { x = 1181.021, y = 203.063, z = 839.234 }, rot = { x = 0.000, y = 106.107, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196002, monster_id = 21011201, pos = { x = 1181.599, y = 202.262, z = 835.510 }, rot = { x = 0.000, y = 106.670, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196003, monster_id = 21010701, pos = { x = 1178.468, y = 202.442, z = 833.501 }, rot = { x = 0.000, y = 98.612, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196019, monster_id = 20010501, pos = { x = 1183.886, y = 200.951, z = 829.200 }, rot = { x = 0.000, y = 285.700, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 196020, monster_id = 20010501, pos = { x = 1187.467, y = 201.307, z = 838.034 }, rot = { x = 0.000, y = 285.700, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 196021, monster_id = 20010501, pos = { x = 1190.010, y = 200.562, z = 831.403 }, rot = { x = 0.000, y = 285.700, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 196022, monster_id = 21011201, pos = { x = 1187.598, y = 200.716, z = 829.249 }, rot = { x = 0.000, y = 293.733, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196023, monster_id = 21011201, pos = { x = 1190.365, y = 200.657, z = 835.323 }, rot = { x = 0.000, y = 293.733, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196024, monster_id = 21010601, pos = { x = 1187.686, y = 200.803, z = 825.844 }, rot = { x = 0.000, y = 293.733, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196025, monster_id = 21010601, pos = { x = 1193.263, y = 200.841, z = 837.472 }, rot = { x = 0.000, y = 293.733, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 196026, monster_id = 20011201, pos = { x = 1181.664, y = 201.292, z = 830.554 }, rot = { x = 0.000, y = 134.488, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 196027, monster_id = 20011201, pos = { x = 1184.259, y = 201.926, z = 837.548 }, rot = { x = 0.000, y = 134.488, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 196004, gadget_id = 70360056, pos = { x = 1180.951, y = 201.801, z = 833.103 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, persistent = true, area_id = 6 },
	-- 武器机关
	{ config_id = 196005, gadget_id = 70360057, pos = { x = 1180.951, y = 201.801, z = 833.103 }, rot = { x = 6.264, y = 85.696, z = 2.596 }, level = 1, persistent = true, area_id = 6 },
	-- 地脉之花通用
	{ config_id = 196006, gadget_id = 70210106, pos = { x = 1180.487, y = 201.567, z = 831.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196007, name = "GADGET_STATE_CHANGE_196007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196007", action = "action_EVENT_GADGET_STATE_CHANGE_196007", trigger_count = 0 },
	{ config_id = 1196008, name = "GADGET_STATE_CHANGE_196008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196008", action = "action_EVENT_GADGET_STATE_CHANGE_196008", trigger_count = 0 },
	{ config_id = 1196009, name = "GADGET_CREATE_196009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_196009", action = "action_EVENT_GADGET_CREATE_196009", trigger_count = 0 },
	{ config_id = 1196010, name = "GROUP_REFRESH_196010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_196010" },
	{ config_id = 1196011, name = "BLOSSOM_CHEST_DIE_196011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_196011", action = "action_EVENT_BLOSSOM_CHEST_DIE_196011", trigger_count = 0 },
	{ config_id = 1196012, name = "GADGET_CREATE_196012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_196012", action = "action_EVENT_GADGET_CREATE_196012", trigger_count = 0 },
	{ config_id = 1196013, name = "SELECT_OPTION_196013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196013", action = "action_EVENT_SELECT_OPTION_196013", trigger_count = 0 },
	{ config_id = 1196014, name = "SELECT_OPTION_196014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196014", action = "action_EVENT_SELECT_OPTION_196014", trigger_count = 0 },
	{ config_id = 1196015, name = "ANY_MONSTER_DIE_196015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_196015", trigger_count = 0 },
	{ config_id = 1196016, name = "BLOSSOM_PROGRESS_FINISH_196016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_196016" },
	{ config_id = 1196017, name = "GROUP_LOAD_196017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_196017" },
	{ config_id = 1196018, name = "ANY_MONSTER_DIE_196018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_196018", action = "action_EVENT_ANY_MONSTER_DIE_196018" }
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
		triggers = { "GROUP_LOAD_196017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_196007", "GADGET_STATE_CHANGE_196008", "GADGET_CREATE_196009", "GROUP_REFRESH_196010", "BLOSSOM_CHEST_DIE_196011", "GADGET_CREATE_196012", "SELECT_OPTION_196013", "SELECT_OPTION_196014", "ANY_MONSTER_DIE_196015", "BLOSSOM_PROGRESS_FINISH_196016", "ANY_MONSTER_DIE_196018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 196001, 196003, 196019, 196020, 196021, 196022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 196002, 196023, 196024, 196025, 196026, 196027 },
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
function condition_EVENT_GADGET_STATE_CHANGE_196007(context, evt)
	if 196004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_196008(context, evt)
	if 196005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_196009(context, evt)
	if 196004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_196009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_196010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=196004,[2]=nil,[3]=196005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133101196)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101196, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_196011(context, evt)
	if 196006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_196011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_196012(context, evt)
	if 196005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_196012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196013(context, evt)
	-- 判断是gadgetid 196004 option_id 187
	if 196004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101196, 3)
	
	-- 删除指定group： 133101196 ；指定config：196004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101196, 196004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 196004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101196, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196014(context, evt)
	-- 判断是gadgetid 196005 option_id 187
	if 196005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101196, 3)
	
	-- 删除指定group： 133101196 ；指定config：196005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101196, 196005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 196005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101196, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133101196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133101196)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_196016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133101196,196006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101196, 3) then
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
function action_EVENT_GROUP_LOAD_196017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_196018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101196, 4)
	
	return 0
end