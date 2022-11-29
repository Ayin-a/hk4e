-- 基础信息
local base_info = {
	group_id = 133008564
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 564001, monster_id = 21030501, pos = { x = 823.678, y = 290.551, z = -934.082 }, rot = { x = 0.000, y = 309.202, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564002, monster_id = 21011301, pos = { x = 821.773, y = 290.822, z = -934.656 }, rot = { x = 0.000, y = 309.202, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564003, monster_id = 21010901, pos = { x = 834.882, y = 293.362, z = -949.933 }, rot = { x = 0.000, y = 9.187, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564004, monster_id = 21011401, pos = { x = 837.405, y = 292.954, z = -945.556 }, rot = { x = 0.000, y = 336.358, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564005, monster_id = 21020601, pos = { x = 843.382, y = 292.923, z = -964.798 }, rot = { x = 0.000, y = 348.338, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564007, monster_id = 21010901, pos = { x = 839.505, y = 293.281, z = -948.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 564030, monster_id = 21011301, pos = { x = 824.263, y = 290.106, z = -932.104 }, rot = { x = 0.000, y = 309.202, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开关
	{ config_id = 564006, gadget_id = 70360128, pos = { x = 805.581, y = 287.329, z = -919.507 }, rot = { x = 0.000, y = 231.032, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	{ config_id = 564008, gadget_id = 70360105, pos = { x = 840.269, y = 294.120, z = -942.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 564009, gadget_id = 70720214, pos = { x = 808.226, y = 287.567, z = -920.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300800104, area_id = 10 },
	{ config_id = 564010, gadget_id = 70720215, pos = { x = 846.457, y = 292.820, z = -971.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 564011, gadget_id = 70360127, pos = { x = 814.993, y = 284.282, z = -928.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 564012, gadget_id = 70360127, pos = { x = 799.459, y = 285.541, z = -929.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 564013, gadget_id = 70360127, pos = { x = 804.264, y = 289.355, z = -913.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 火仙灵在路点3停驻后创建龙血结晶创生器
	{ config_id = 1564014, name = "PLATFORM_REACH_POINT_564014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_564014", action = "action_EVENT_PLATFORM_REACH_POINT_564014", trigger_count = 0 },
	-- 火仙灵在路点1停驻后创建龙血结晶创生器
	{ config_id = 1564015, name = "PLATFORM_REACH_POINT_564015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_564015", action = "action_EVENT_PLATFORM_REACH_POINT_564015" },
	-- 消灭最后一波怪物后更改火仙灵Route+销毁冰风暴
	{ config_id = 1564016, name = "ANY_MONSTER_DIE_564016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564016", action = "action_EVENT_ANY_MONSTER_DIE_564016" },
	{ config_id = 1564017, name = "GADGET_CREATE_564017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_564017", action = "action_EVENT_GADGET_CREATE_564017", trigger_count = 0 },
	-- 创建机关
	{ config_id = 1564018, name = "GROUP_REFRESH_564018", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_564018" },
	{ config_id = 1564019, name = "BLOSSOM_CHEST_DIE_564019", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_564019", action = "action_EVENT_BLOSSOM_CHEST_DIE_564019", trigger_count = 0 },
	-- 选择龙之挑战开关
	{ config_id = 1564020, name = "SELECT_OPTION_564020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_564020", action = "action_EVENT_SELECT_OPTION_564020", trigger_count = 0 },
	{ config_id = 1564021, name = "BLOSSOM_PROGRESS_FINISH_564021", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_564021" },
	{ config_id = 1564022, name = "GROUP_LOAD_564022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_564022" },
	-- 创建怪物增援提示
	{ config_id = 1564023, name = "ANY_MONSTER_DIE_564023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564023", action = "action_EVENT_ANY_MONSTER_DIE_564023" },
	-- 创建怪物增援提示
	{ config_id = 1564024, name = "ANY_MONSTER_DIE_564024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564024", action = "action_EVENT_ANY_MONSTER_DIE_564024" },
	-- 火仙灵到达底座后创建领奖台
	{ config_id = 1564025, name = "PLATFORM_REACH_POINT_564025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_564025", action = "action_EVENT_PLATFORM_REACH_POINT_564025" },
	-- 创建冰风暴出现提示
	{ config_id = 1564026, name = "GADGET_CREATE_564026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_564026", action = "action_EVENT_GADGET_CREATE_564026" },
	-- 火仙灵在路点3停驻后创建龙血结晶创生器
	{ config_id = 1564027, name = "PLATFORM_REACH_POINT_564027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_564027", action = "action_EVENT_PLATFORM_REACH_POINT_564027", trigger_count = 0 },
	-- 挑战成功将此营地的进度加1
	{ config_id = 1564028, name = "CHALLENGE_SUCCESS_564028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_564028" },
	-- 挑战失败将Group刷新至Suite2
	{ config_id = 1564029, name = "CHALLENGE_FAIL_564029", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_564029", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_564022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { 564009 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_564014", "PLATFORM_REACH_POINT_564015", "GADGET_CREATE_564017", "GROUP_REFRESH_564018", "BLOSSOM_CHEST_DIE_564019", "SELECT_OPTION_564020", "BLOSSOM_PROGRESS_FINISH_564021", "PLATFORM_REACH_POINT_564025", "PLATFORM_REACH_POINT_564027", "CHALLENGE_SUCCESS_564028", "CHALLENGE_FAIL_564029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 564001, 564002, 564030 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 564008, 564010 },
		regions = { },
		triggers = { "GADGET_CREATE_564026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 564003, 564004, 564007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564024" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 564005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_564014(context, evt)
	-- 判断是gadgetid 为 564009的移动平台，是否到达了300800105 的路线中的 22 点
	
	if 564009 ~= evt.param1 then
	  return false
	end
	
	if 300800105 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_564014(context, evt)
	-- 创建id为564013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 564013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_564015(context, evt)
	-- 判断是gadgetid 为 564009的移动平台，是否到达了300800105 的路线中的 7 点
	
	if 564009 ~= evt.param1 then
	  return false
	end
	
	if 300800105 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_564015(context, evt)
	-- 创建id为564011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 564011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564016(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133008564) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564016(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 564009, 300800106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 564008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121214") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_564017(context, evt)
	if 564006 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_564017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008564, 564006, {37}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133008564) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_564018(context, evt)
	-- 创建id为564006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 564006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133008564, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133008564) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发条件
function condition_EVENT_BLOSSOM_CHEST_DIE_564019(context, evt)
	if 564007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_BLOSSOM_CHEST_DIE_564019(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_564020(context, evt)
	-- 判断是gadgetid 564006 option_id 37
	if 564006 ~= evt.param1 then
		return false	
	end
	
	if 37 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_564020(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为58的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 58, 133008564, 7, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008564, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008564, 4)
	
	-- 删除指定group： 133008564 ；指定config：564006；物件身上指定option：37；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008564, 564006, 37) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 564006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 564009, 300800105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133008564, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 刷新循环营地的掉落奖励
	if 0 ~= ScriptLib.RefreshBlossomDropRewardByGroupId(context, 133008564) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		return -1
	end 
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_564021(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133008564, 3) then
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
function action_EVENT_GROUP_LOAD_564022(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133008564) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564023(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008564, 5)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=840,y=294,z=-942}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133008564) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564024(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008564, 6)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=840,y=294,z=-942}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_564025(context, evt)
	-- 判断是gadgetid 为 564009的移动平台，是否到达了300800106 的路线中的 2 点
	
	if 564009 ~= evt.param1 then
	  return false
	end
	
	if 300800106 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_564025(context, evt)
	-- 将configid为 564010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 564009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_564026(context, evt)
	if 564008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_564026(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=840,y=200,z=-942}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400010, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_564027(context, evt)
	-- 判断是gadgetid 为 564009的移动平台，是否到达了300800105 的路线中的 27 点
	
	if 564009 ~= evt.param1 then
	  return false
	end
	
	if 300800105 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_564027(context, evt)
	-- 创建id为564013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 564013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 564009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_564028(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133008564)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_564029(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008564, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121288") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end