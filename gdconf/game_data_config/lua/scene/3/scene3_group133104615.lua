-- 基础信息
local base_info = {
	group_id = 133104615
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 615001, monster_id = 20010501, pos = { x = 441.237, y = 200.401, z = 597.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615002, monster_id = 20010501, pos = { x = 434.395, y = 200.549, z = 595.856 }, rot = { x = 0.000, y = 53.093, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615003, monster_id = 20011001, pos = { x = 439.042, y = 200.292, z = 592.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615018, monster_id = 20010601, pos = { x = 439.765, y = 200.338, z = 593.566 }, rot = { x = 0.000, y = 316.947, z = 0.000 }, level = 3, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 615019, monster_id = 20010601, pos = { x = 442.524, y = 200.356, z = 595.226 }, rot = { x = 0.000, y = 311.351, z = 0.000 }, level = 3, drop_tag = "大史莱姆", isElite = true, area_id = 6 },
	{ config_id = 615020, monster_id = 20010701, pos = { x = 433.832, y = 200.450, z = 593.435 }, rot = { x = 0.000, y = 31.793, z = 0.000 }, level = 3, drop_tag = "大史莱姆", isElite = true, area_id = 6 },
	{ config_id = 615021, monster_id = 20011001, pos = { x = 439.010, y = 200.137, z = 590.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615022, monster_id = 20011001, pos = { x = 441.366, y = 200.137, z = 589.216 }, rot = { x = 0.000, y = 336.069, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615024, monster_id = 20011001, pos = { x = 445.085, y = 200.356, z = 596.445 }, rot = { x = 0.000, y = 271.168, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615025, monster_id = 20010501, pos = { x = 435.546, y = 200.742, z = 600.228 }, rot = { x = 0.000, y = 120.053, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615026, monster_id = 20010501, pos = { x = 443.379, y = 200.407, z = 599.080 }, rot = { x = 0.000, y = 120.053, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615027, monster_id = 20010501, pos = { x = 433.088, y = 200.628, z = 596.475 }, rot = { x = 0.000, y = 120.053, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 615028, monster_id = 20010501, pos = { x = 436.153, y = 200.415, z = 592.054 }, rot = { x = 0.000, y = 120.053, z = 0.000 }, level = 2, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 615004, gadget_id = 70360056, pos = { x = 438.337, y = 200.356, z = 595.420 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, persistent = true, area_id = 6 },
	-- 武器机关
	{ config_id = 615005, gadget_id = 70360057, pos = { x = 438.337, y = 200.356, z = 595.420 }, rot = { x = 6.264, y = 85.696, z = 2.596 }, level = 1, persistent = true, area_id = 6 },
	-- 地脉之花通用
	{ config_id = 615006, gadget_id = 70210106, pos = { x = 435.129, y = 200.465, z = 598.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1615007, name = "GADGET_STATE_CHANGE_615007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_615007", action = "action_EVENT_GADGET_STATE_CHANGE_615007", trigger_count = 0 },
	{ config_id = 1615008, name = "GADGET_STATE_CHANGE_615008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_615008", action = "action_EVENT_GADGET_STATE_CHANGE_615008", trigger_count = 0 },
	{ config_id = 1615009, name = "GADGET_CREATE_615009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_615009", action = "action_EVENT_GADGET_CREATE_615009", trigger_count = 0 },
	{ config_id = 1615010, name = "GROUP_REFRESH_615010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_615010" },
	{ config_id = 1615011, name = "BLOSSOM_CHEST_DIE_615011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_615011", action = "action_EVENT_BLOSSOM_CHEST_DIE_615011", trigger_count = 0 },
	{ config_id = 1615012, name = "GADGET_CREATE_615012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_615012", action = "action_EVENT_GADGET_CREATE_615012", trigger_count = 0 },
	{ config_id = 1615013, name = "SELECT_OPTION_615013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_615013", action = "action_EVENT_SELECT_OPTION_615013", trigger_count = 0 },
	{ config_id = 1615014, name = "SELECT_OPTION_615014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_615014", action = "action_EVENT_SELECT_OPTION_615014", trigger_count = 0 },
	{ config_id = 1615015, name = "ANY_MONSTER_DIE_615015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_615015", trigger_count = 0 },
	{ config_id = 1615016, name = "BLOSSOM_PROGRESS_FINISH_615016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_615016" },
	{ config_id = 1615017, name = "GROUP_LOAD_615017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_615017" },
	{ config_id = 1615023, name = "ANY_MONSTER_DIE_615023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_615023", action = "action_EVENT_ANY_MONSTER_DIE_615023" }
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
		triggers = { "GROUP_LOAD_615017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_615007", "GADGET_STATE_CHANGE_615008", "GADGET_CREATE_615009", "GROUP_REFRESH_615010", "BLOSSOM_CHEST_DIE_615011", "GADGET_CREATE_615012", "SELECT_OPTION_615013", "SELECT_OPTION_615014", "ANY_MONSTER_DIE_615015", "BLOSSOM_PROGRESS_FINISH_615016", "ANY_MONSTER_DIE_615023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 615001, 615002, 615003, 615018, 615024, 615025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 615019, 615020, 615021, 615022, 615026, 615027, 615028 },
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
function condition_EVENT_GADGET_STATE_CHANGE_615007(context, evt)
	if 615004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_615007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_615008(context, evt)
	if 615005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_615008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_615009(context, evt)
	if 615004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_615009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_615010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=615004,[2]=nil,[3]=615005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133104615)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104615, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_615011(context, evt)
	if 615006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_615011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_615012(context, evt)
	if 615005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_615012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_615013(context, evt)
	-- 判断是gadgetid 615004 option_id 187
	if 615004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_615013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104615, 3)
	
	-- 删除指定group： 133104615 ；指定config：615004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104615, 615004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 615004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 615004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104615, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_615014(context, evt)
	-- 判断是gadgetid 615005 option_id 187
	if 615005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_615014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104615, 3)
	
	-- 删除指定group： 133104615 ；指定config：615005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133104615, 615005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 615005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 615005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104615, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133104615) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_615015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133104615)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_615016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133104615,615006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104615, 3) then
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
function action_EVENT_GROUP_LOAD_615017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_615023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_615023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104615, 4)
	
	return 0
end