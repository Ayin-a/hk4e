-- 基础信息
local base_info = {
	group_id = 133007235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 25010201, pos = { x = 2700.117, y = 238.393, z = 228.322 }, rot = { x = 0.000, y = 42.762, z = 0.000 }, level = 2, drop_tag = "盗宝团", pose_id = 9006, area_id = 4 },
	{ config_id = 235003, monster_id = 25010201, pos = { x = 2702.010, y = 238.282, z = 229.239 }, rot = { x = 0.000, y = 250.956, z = 0.000 }, level = 2, drop_tag = "盗宝团", pose_id = 9006, area_id = 4 },
	{ config_id = 235018, monster_id = 25010201, pos = { x = 2689.074, y = 238.131, z = 244.692 }, rot = { x = 0.000, y = 125.400, z = 0.000 }, level = 3, drop_tag = "盗宝团", area_id = 4 },
	{ config_id = 235019, monster_id = 25070101, pos = { x = 2709.096, y = 239.443, z = 239.604 }, rot = { x = 0.000, y = 308.600, z = 0.000 }, level = 3, drop_tag = "盗宝团", area_id = 4 },
	{ config_id = 235021, monster_id = 25020201, pos = { x = 2700.522, y = 238.197, z = 236.089 }, rot = { x = 0.000, y = 359.800, z = 0.000 }, level = 2, drop_tag = "盗宝团", pose_id = 9003, area_id = 4 },
	{ config_id = 235022, monster_id = 25010701, pos = { x = 2689.179, y = 238.244, z = 240.990 }, rot = { x = 0.000, y = 117.000, z = 0.000 }, level = 2, drop_tag = "盗宝团", area_id = 4 },
	{ config_id = 235024, monster_id = 25010201, pos = { x = 2711.749, y = 238.180, z = 256.366 }, rot = { x = 0.000, y = 204.000, z = 0.000 }, level = 2, drop_tag = "盗宝团", pose_id = 9003, area_id = 4 },
	{ config_id = 235025, monster_id = 25010501, pos = { x = 2695.396, y = 238.522, z = 246.520 }, rot = { x = 0.000, y = 179.547, z = 0.000 }, level = 2, drop_tag = "盗宝团", pose_id = 9006, area_id = 4 },
	{ config_id = 235026, monster_id = 25010301, pos = { x = 2695.604, y = 238.535, z = 244.472 }, rot = { x = 358.779, y = 4.683, z = 2.099 }, level = 2, drop_tag = "盗宝团", pose_id = 9006, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 摩拉机关
	{ config_id = 235004, gadget_id = 70360056, pos = { x = 2703.045, y = 239.331, z = 242.055 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, persistent = true, area_id = 4 },
	-- 武器机关
	{ config_id = 235005, gadget_id = 70360057, pos = { x = 2703.045, y = 239.331, z = 242.055 }, rot = { x = 6.264, y = 85.696, z = 2.596 }, level = 1, persistent = true, area_id = 4 },
	-- 地脉之花通用
	{ config_id = 235006, gadget_id = 70210106, pos = { x = 2700.025, y = 238.252, z = 234.215 }, rot = { x = 0.000, y = 23.093, z = 0.000 }, level = 21, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235007, name = "GADGET_STATE_CHANGE_235007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235007", action = "action_EVENT_GADGET_STATE_CHANGE_235007", trigger_count = 0 },
	{ config_id = 1235008, name = "GADGET_STATE_CHANGE_235008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235008", action = "action_EVENT_GADGET_STATE_CHANGE_235008", trigger_count = 0 },
	{ config_id = 1235009, name = "GADGET_CREATE_235009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_235009", action = "action_EVENT_GADGET_CREATE_235009", trigger_count = 0 },
	{ config_id = 1235010, name = "GROUP_REFRESH_235010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_235010" },
	{ config_id = 1235011, name = "BLOSSOM_CHEST_DIE_235011", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_235011", action = "action_EVENT_BLOSSOM_CHEST_DIE_235011", trigger_count = 0 },
	{ config_id = 1235012, name = "GADGET_CREATE_235012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_235012", action = "action_EVENT_GADGET_CREATE_235012", trigger_count = 0 },
	{ config_id = 1235013, name = "SELECT_OPTION_235013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_235013", action = "action_EVENT_SELECT_OPTION_235013", trigger_count = 0 },
	{ config_id = 1235014, name = "SELECT_OPTION_235014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_235014", action = "action_EVENT_SELECT_OPTION_235014", trigger_count = 0 },
	{ config_id = 1235015, name = "ANY_MONSTER_DIE_235015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_235015", trigger_count = 0 },
	{ config_id = 1235016, name = "BLOSSOM_PROGRESS_FINISH_235016", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_235016" },
	{ config_id = 1235017, name = "GROUP_LOAD_235017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_235017" },
	{ config_id = 1235020, name = "ANY_MONSTER_DIE_235020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235020", action = "action_EVENT_ANY_MONSTER_DIE_235020" }
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
		triggers = { "GROUP_LOAD_235017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235007", "GADGET_STATE_CHANGE_235008", "GADGET_CREATE_235009", "GROUP_REFRESH_235010", "BLOSSOM_CHEST_DIE_235011", "GADGET_CREATE_235012", "SELECT_OPTION_235013", "SELECT_OPTION_235014", "ANY_MONSTER_DIE_235015", "BLOSSOM_PROGRESS_FINISH_235016", "ANY_MONSTER_DIE_235020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { 235001, 235003, 235021, 235022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 235018, 235019, 235024, 235025, 235026 },
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
function condition_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	if 235004 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235007(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235008(context, evt)
	if 235005 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235008(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_235009(context, evt)
	if 235004 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_235009(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_235010(context, evt)
	-- 指定group的循环玩法进度加1
	  local operator = {[1]=235004,[2]=nil,[3]=235005}
	  local r_Type = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 133007235)
		if r_Type == nil then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomOperator_byGroupId")
	    return -1
	  else
	    ScriptLib.CreateGadget(context, {config_id = operator[r_Type]})
	  end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007235, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_235011(context, evt)
	if 235006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_235011(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_235012(context, evt)
	if 235005 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_235012(context, evt)
	-- 设置操作台选项
	local schedule = ScriptLib.GetBlossomScheduleStateByGroupId(context, 0)
	if 0 == schedule or 1 == schedule then
		  ScriptLib.SetWorktopOptions(context, {187})
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_235013(context, evt)
	-- 判断是gadgetid 235004 option_id 187
	if 235004 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_235013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007235, 3)
	
	-- 删除指定group： 133007235 ；指定config：235004；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133007235, 235004, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 235004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007235, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_235014(context, evt)
	-- 判断是gadgetid 235005 option_id 187
	if 235005 ~= evt.param1 then
		return false	
	end
	
	if 187 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_235014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007235, 3)
	
	-- 删除指定group： 133007235 ；指定config：235005；物件身上指定option：187；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133007235, 235005, 187) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 235005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007235, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133007235) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235015(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007235)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_235016(context, evt)
	-- 创建循环玩法的地脉之花奖励
	if 0 ~= ScriptLib.CreateBlossomChestByGroupId(context, 133007235,235006) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_blossomChest_bygroupid")
			return -1
		end 
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007235, 3) then
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
function action_EVENT_GROUP_LOAD_235017(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007235, 4)
	
	return 0
end