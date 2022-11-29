-- 基础信息
local base_info = {
	group_id = 133002259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913, monster_id = 29020101, pos = { x = 1981.685, y = 250.080, z = -238.965 }, rot = { x = 0.000, y = 155.057, z = 0.000 }, level = 26, drop_id = 1000100, title_id = 111, special_name_id = 3, area_id = 3 },
	{ config_id = 954, monster_id = 29020102, pos = { x = 1981.685, y = 250.080, z = -238.965 }, rot = { x = 0.000, y = 155.057, z = 0.000 }, level = 38, drop_id = 1000100, title_id = 112, special_name_id = 4, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2222, gadget_id = 42902003, pos = { x = 1984.200, y = 250.080, z = -244.400 }, rot = { x = 0.000, y = 155.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2223, gadget_id = 42902004, pos = { x = 1976.400, y = 250.080, z = -217.363 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2238, gadget_id = 42902005, pos = { x = 1994.000, y = 250.080, z = -260.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 2299, gadget_id = 70360004, pos = { x = 1999.600, y = 250.080, z = -280.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 259005, gadget_id = 70210106, pos = { x = 1984.880, y = 250.190, z = -246.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "北风狼", showcutscene = true, persistent = true, boss_chest = {monster_config_id=954, resin=60, life_time=600, take_num=1}, area_id = 3 },
	{ config_id = 259009, gadget_id = 70360001, pos = { x = 1984.235, y = 250.190, z = -248.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 320, shape = RegionShape.SPHERE, radius = 48, pos = { x = 1994.000, y = 250.080, z = -260.500 }, area_id = 3 },
	{ config_id = 259002, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1992.947, y = 250.080, z = -262.157 }, area_id = 3 },
	{ config_id = 259007, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1992.904, y = 250.190, z = -260.618 }, area_id = 3 },
	{ config_id = 259008, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1993.433, y = 250.190, z = -261.053 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1000320, name = "ENTER_REGION_320", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_320", action = "action_EVENT_ENTER_REGION_320" },
	{ config_id = 1000337, name = "GADGET_CREATE_337", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_337", action = "action_EVENT_GADGET_CREATE_337", trigger_count = 0 },
	{ config_id = 1000338, name = "ANY_MONSTER_DIE_338", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_338", action = "action_EVENT_ANY_MONSTER_DIE_338" },
	{ config_id = 1000343, name = "GADGET_CREATE_343", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_343", action = "action_EVENT_GADGET_CREATE_343" },
	{ config_id = 1000344, name = "ANY_MONSTER_DIE_344", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_344", action = "action_EVENT_ANY_MONSTER_DIE_344", trigger_count = 0 },
	{ config_id = 1000345, name = "TIMER_EVENT_345", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_EVENT_TIMER_EVENT_345" },
	{ config_id = 1000359, name = "SELECT_OPTION_359", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_359", action = "action_EVENT_SELECT_OPTION_359", trigger_count = 0 },
	{ config_id = 1000401, name = "QUEST_FINISH_401", event = EventType.EVENT_QUEST_FINISH, source = "45405", condition = "", action = "action_EVENT_QUEST_FINISH_401", trigger_count = 0 },
	{ config_id = 1000402, name = "GROUP_REFRESH_402", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_402", trigger_count = 0 },
	{ config_id = 1259002, name = "ENTER_REGION_259002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_259002", action = "action_EVENT_ENTER_REGION_259002", trigger_count = 0 },
	{ config_id = 1259003, name = "GROUP_LOAD_259003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_259003", trigger_count = 0 },
	{ config_id = 1259004, name = "GROUP_REFRESH_259004", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_259004", trigger_count = 0 },
	{ config_id = 1259007, name = "ENTER_REGION_259007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_259007", action = "action_EVENT_ENTER_REGION_259007", trigger_count = 0, forbid_guest = false },
	{ config_id = 1259008, name = "LEAVE_REGION_259008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_259008", action = "action_EVENT_LEAVE_REGION_259008", trigger_count = 0, forbid_guest = false },
	{ config_id = 1259010, name = "GROUP_WILL_UNLOAD_259010", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_259010", trigger_count = 0 },
	{ config_id = 1259011, name = "TIME_AXIS_PASS_259011", event = EventType.EVENT_TIME_AXIS_PASS, source = "CreateMonster", condition = "", action = "action_EVENT_TIME_AXIS_PASS_259011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "boss_exist", value = 1, no_refresh = false },
	{ config_id = 2, name = "auth_uid_p1", value = 0, no_refresh = false },
	{ config_id = 3, name = "auth_uid_p2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 259006, gadget_id = 71000007, pos = { x = 1989.673, y = 250.190, z = -264.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
	},
	triggers = {
		{ config_id = 1259001, name = "CLIENT_EXECUTE_259001", event = EventType.EVENT_CLIENT_EXECUTE, source = "LupiBoreas_Recycle", condition = "condition_EVENT_CLIENT_EXECUTE_259001", action = "action_EVENT_CLIENT_EXECUTE_259001", trigger_count = 0 }
	}
}

-- 视野组
sight_groups = {
	{ 913, 954, 2222, 2223, 2238, 259009 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 4,
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
		-- description = LupiBoreas,
		monsters = { },
		gadgets = { },
		regions = { 320, 259007, 259008 },
		triggers = { "ENTER_REGION_320", "ANY_MONSTER_DIE_338", "TIMER_EVENT_345", "QUEST_FINISH_401", "GROUP_REFRESH_402", "ENTER_REGION_259007", "LEAVE_REGION_259008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = Empty,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Recycle,
		monsters = { },
		gadgets = { 2222, 2223, 2238 },
		regions = { },
		triggers = { "GADGET_CREATE_343", "ANY_MONSTER_DIE_344", "TIME_AXIS_PASS_259011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = end_suite,
		monsters = { },
		gadgets = { 259009 },
		regions = { 259002, 259007, 259008 },
		triggers = { "ENTER_REGION_259002", "GROUP_LOAD_259003", "GROUP_REFRESH_259004", "ENTER_REGION_259007", "LEAVE_REGION_259008", "GROUP_WILL_UNLOAD_259010", "TIME_AXIS_PASS_259011" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Operator,
		monsters = { },
		gadgets = { 2299 },
		regions = { },
		triggers = { "GADGET_CREATE_337", "SELECT_OPTION_359" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 954 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 259008 },
		triggers = { "LEAVE_REGION_259008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_320(context, evt)
	if evt.param1 ~= 320 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_320(context, evt)
	-- 调用提示id为 30020101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30020101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为2238的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2238 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133002259的对象,请求一次调用,并将string参数："Prepare" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002259, "Prepare", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_337(context, evt)
	if 2299 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_337(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002259, 2299, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_338(context, evt)
	--判断死亡怪物的configid是否为 913
	if evt.param1 ~= 913 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_338(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2222 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2223 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2238 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_343(context, evt)
	if 2222 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_343(context, evt)
	-- 延迟4秒刷怪
	ScriptLib.InitTimeAxis(context, "CreateMonster", {4}, false)
	
	-- 调用提示id为 30020121 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30020121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "boss_killself" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boss_killself", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_344(context, evt)
	--判断死亡怪物的configid是否为 954
	if evt.param1 ~= 954 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_344(context, evt)
	if evt.param2 == 2 then
		ScriptLib.AddExtraGroupSuite(context, 133002259,5)
	else
		ScriptLib.SetGroupVariableValue(context, "boss_exist", 0)
		ScriptLib.CreateGadget(context, {config_id = 259005})
		ScriptLib.SetWeatherAreaState(context, 4, 0)
		ScriptLib.AddQuestProgress(context, "133002259")
	end
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_345(context, evt)
	-- 创建id为2222的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2222 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2223的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2223 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟4秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 913, delay_time = 4 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_359(context, evt)
	-- 判断是gadgetid 2299 option_id 2902
	if 2299 ~= evt.param1 then
		return false	
	end
	
	if 2902 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_359(context, evt)
	ScriptLib.ForceRefreshAuthorityByConfigId(context, 259009, context.uid)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p1", context.uid//10000)
	ScriptLib.SetGroupVariableValue(context, "auth_uid_p2", context.uid%10000)
	-- 删除指定group： 133002259 ；指定config：2299；物件身上指定option：2902；
	ScriptLib.DelWorktopOptionByGroupId(context, 133002259, 2299, 2902)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002259, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002259, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_401(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002259, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002259, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_402(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133002259, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133002259, "Prepare") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 延迟20秒后,向groupId为：133002259的对象,请求一次调用,并将string参数："Prepare" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133002259, "Prepare", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_259002(context, evt)
	if evt.param1 ~= 259002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"boss_exist"为1
	if ScriptLib.GetGroupVariableValue(context, "boss_exist") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259002(context, evt)
	ScriptLib.SetWeatherAreaState(context, 4, 1)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259003(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 5)
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		ScriptLib.AddExtraGroupSuite(context, 133002259, 5)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_259004(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 133002259, 5)
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "boss_exist") then
		ScriptLib.AddExtraGroupSuite(context, 133002259, 5)
	end
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_259007(context, evt)
	if evt.param1 ~= 259007 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_259007(context, evt)
	    --ScriptLib.SetPlayerEyePoint(context, 259007)
		local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==259007 then
					small_region=regions[i]
				end
				if regions[i].config_id==259008 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_259008(context, evt)
	if evt.param1 ~=259008 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_259008(context, evt)
	ScriptLib.ClearPlayerEyePoint(context, 259007)
	if 0 == ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) then
		ScriptLib.SetWeatherAreaState(context, 4, 0)
		local x = ScriptLib.GetGroupVariableValue(context, "boss_exist")
		if x == 1 then
			ScriptLib.AddExtraGroupSuite(context, 133002259,5)
		end
		ScriptLib.RemoveExtraGroupSuite(context, 133002259, 6)
		ScriptLib.RemoveExtraGroupSuite(context, 133002259, 3)
	else
		ScriptLib.TryReallocateEntityAuthority(context, context.uid, 259009, 259008)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_259010(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002259, 7)
	
	    ScriptLib.EndTimeAxis(context,"CreateMonster")
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_259011(context, evt)
	ScriptLib.CreateMonster(context, { config_id =954,delay_time = 0 })
	return 0
end

require "TD_Lib"