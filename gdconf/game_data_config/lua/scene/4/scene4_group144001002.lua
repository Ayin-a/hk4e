-- 基础信息
local base_info = {
	group_id = 144001002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2021, monster_id = 21020501, pos = { x = 728.285, y = 119.649, z = 260.353 }, rot = { x = 7.063, y = 278.350, z = 359.092 }, level = 20, drop_id = 1000100, area_id = 102, guest_ban_drop = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70211032, pos = { x = 709.590, y = 120.097, z = 260.674 }, rot = { x = 0.000, y = 275.063, z = 0.000 }, level = 16, drop_tag = "战斗超级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	-- “护罩”
	{ config_id = 2012, gadget_id = 70290063, pos = { x = 709.331, y = 120.097, z = 260.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 2002, shape = RegionShape.SPHERE, radius = 9, pos = { x = 709.701, y = 120.132, z = 260.654 }, area_id = 102 },
	{ config_id = 2004, shape = RegionShape.SPHERE, radius = 13, pos = { x = 746.074, y = 203.942, z = 205.954 }, area_id = 102 },
	{ config_id = 2005, shape = RegionShape.SPHERE, radius = 13, pos = { x = 785.953, y = 245.255, z = 290.045 }, area_id = 102 },
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 13, pos = { x = 689.778, y = 189.546, z = 320.308 }, area_id = 102 },
	{ config_id = 2015, shape = RegionShape.SPHERE, radius = 150, pos = { x = 715.273, y = 120.132, z = 260.409 }, area_id = 102 },
	{ config_id = 2022, shape = RegionShape.SPHERE, radius = 12, pos = { x = 709.808, y = 121.325, z = 261.012 }, area_id = 102 },
	{ config_id = 2024, shape = RegionShape.SPHERE, radius = 12, pos = { x = 709.808, y = 121.325, z = 261.012 }, area_id = 102 },
	{ config_id = 2026, shape = RegionShape.SPHERE, radius = 10, pos = { x = 745.446, y = 204.461, z = 205.789 }, area_id = 102 },
	{ config_id = 2027, shape = RegionShape.SPHERE, radius = 10, pos = { x = 785.953, y = 245.255, z = 290.045 }, area_id = 102 },
	{ config_id = 2028, shape = RegionShape.SPHERE, radius = 10, pos = { x = 689.778, y = 189.546, z = 321.758 }, area_id = 102 },
	{ config_id = 2031, shape = RegionShape.SPHERE, radius = 9, pos = { x = 709.701, y = 120.132, z = 260.654 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002", trigger_count = 0 },
	{ config_id = 1002004, name = "ENTER_REGION_2004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2004", action = "action_EVENT_ENTER_REGION_2004" },
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2005", action = "action_EVENT_ENTER_REGION_2005" },
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006" },
	{ config_id = 1002007, name = "VARIABLE_CHANGE_2007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2007", action = "action_EVENT_VARIABLE_CHANGE_2007" },
	-- 监听三萨满死亡更改天气
	{ config_id = 1002008, name = "VARIABLE_CHANGE_2008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2008", action = "action_EVENT_VARIABLE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "TIMER_EVENT_2009", event = EventType.EVENT_TIMER_EVENT, source = "samanchujian", condition = "", action = "action_EVENT_TIMER_EVENT_2009" },
	{ config_id = 1002010, name = "TIMER_EVENT_2010", event = EventType.EVENT_TIMER_EVENT, source = "huzhao1", condition = "", action = "action_EVENT_TIMER_EVENT_2010" },
	{ config_id = 1002011, name = "TIMER_EVENT_2011", event = EventType.EVENT_TIMER_EVENT, source = "huzhao2", condition = "", action = "action_EVENT_TIMER_EVENT_2011" },
	{ config_id = 1002013, name = "TIMER_EVENT_2013", event = EventType.EVENT_TIMER_EVENT, source = "huzhao3", condition = "", action = "action_EVENT_TIMER_EVENT_2013" },
	{ config_id = 1002014, name = "TIMER_EVENT_2014", event = EventType.EVENT_TIMER_EVENT, source = "huzhao4", condition = "", action = "action_EVENT_TIMER_EVENT_2014" },
	{ config_id = 1002015, name = "ENTER_REGION_2015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2015", action = "action_EVENT_ENTER_REGION_2015" },
	{ config_id = 1002016, name = "VARIABLE_CHANGE_2016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2016", action = "action_EVENT_VARIABLE_CHANGE_2016" },
	-- 监听三萨满死亡将天气group刷新至空suit
	{ config_id = 1002017, name = "ANY_MONSTER_DIE_2017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2017", action = "action_EVENT_ANY_MONSTER_DIE_2017", trigger_count = 0 },
	-- 宝箱被打开后刷出风车
	{ config_id = 1002018, name = "GADGET_STATE_CHANGE_2018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2018", action = "action_EVENT_GADGET_STATE_CHANGE_2018" },
	{ config_id = 1002019, name = "VARIABLE_CHANGE_2019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2019", action = "action_EVENT_VARIABLE_CHANGE_2019" },
	{ config_id = 1002020, name = "VARIABLE_CHANGE_2020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2020", action = "action_EVENT_VARIABLE_CHANGE_2020" },
	{ config_id = 1002022, name = "ENTER_REGION_2022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2022", action = "action_EVENT_ENTER_REGION_2022", trigger_count = 0 },
	{ config_id = 1002023, name = "GROUP_LOAD_2023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2023", action = "action_EVENT_GROUP_LOAD_2023", trigger_count = 0 },
	{ config_id = 1002024, name = "ENTER_REGION_2024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2024", action = "action_EVENT_ENTER_REGION_2024" },
	{ config_id = 1002025, name = "VARIABLE_CHANGE_2025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2025", action = "action_EVENT_VARIABLE_CHANGE_2025" },
	{ config_id = 1002026, name = "ENTER_REGION_2026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2026", action = "action_EVENT_ENTER_REGION_2026", trigger_count = 0 },
	{ config_id = 1002027, name = "ENTER_REGION_2027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2027", action = "action_EVENT_ENTER_REGION_2027", trigger_count = 0 },
	{ config_id = 1002028, name = "ENTER_REGION_2028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2028", action = "action_EVENT_ENTER_REGION_2028", trigger_count = 0 },
	{ config_id = 1002029, name = "VARIABLE_CHANGE_2029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2029", action = "action_EVENT_VARIABLE_CHANGE_2029", trigger_count = 0 },
	{ config_id = 1002030, name = "ANY_MONSTER_DIE_2030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2030", action = "action_EVENT_ANY_MONSTER_DIE_2030" },
	{ config_id = 1002031, name = "ENTER_REGION_2031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2031", action = "action_EVENT_ENTER_REGION_2031" }
}

-- 变量
variables = {
	{ config_id = 1, name = "findpoint", value = 0, no_refresh = false },
	{ config_id = 2, name = "samandie", value = 0, no_refresh = false },
	{ config_id = 3, name = "4001002", value = 1, no_refresh = false },
	{ config_id = 4, name = "findpoint2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1002003, name = "VARIABLE_CHANGE_2003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2003", action = "" }
	}
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
		gadgets = { 2001, 2012 },
		regions = { 2002, 2004, 2005, 2006, 2015, 2026, 2027, 2028, 2031 },
		triggers = { "ENTER_REGION_2002", "ENTER_REGION_2004", "ENTER_REGION_2005", "ENTER_REGION_2006", "VARIABLE_CHANGE_2007", "VARIABLE_CHANGE_2008", "TIMER_EVENT_2009", "TIMER_EVENT_2010", "TIMER_EVENT_2011", "TIMER_EVENT_2013", "TIMER_EVENT_2014", "ENTER_REGION_2015", "VARIABLE_CHANGE_2016", "ANY_MONSTER_DIE_2017", "GADGET_STATE_CHANGE_2018", "VARIABLE_CHANGE_2019", "VARIABLE_CHANGE_2020", "GROUP_LOAD_2023", "VARIABLE_CHANGE_2025", "ENTER_REGION_2026", "ENTER_REGION_2027", "ENTER_REGION_2028", "VARIABLE_CHANGE_2029", "ANY_MONSTER_DIE_2030", "ENTER_REGION_2031" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2022, 2024 },
		triggers = { "ENTER_REGION_2022", "ENTER_REGION_2024" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"4001002"为1
	if ScriptLib.GetGroupVariableValue(context, "4001002") ~= 1 then
			return false
	end
	
	-- 判断变量"findpoint"为0
	if ScriptLib.GetGroupVariableValue(context, "findpoint") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2004(context, evt)
	if evt.param1 ~= 2004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2004(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2005(context, evt)
	if evt.param1 ~= 2005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2005(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"findpoint"为1
	if ScriptLib.GetGroupVariableValue(context, "findpoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：144001002的对象,请求一次调用,并将string参数："samanchujian" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001002, "samanchujian", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2008(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2148, 0)
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2009(context, evt)
	-- 调用提示id为 1110231 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110231) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2010(context, evt)
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2011(context, evt)
	-- 将configid为 2012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2014(context, evt)
	-- 调用提示id为 1110264 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110264) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2015(context, evt)
	if evt.param1 ~= 2015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2015(context, evt)
	-- 调用提示id为 1110227 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110227) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"samandie"为1
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2016(context, evt)
	-- 通知场景上的所有玩家播放名字为144001002 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 144001002, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：144001002的对象,请求一次调用,并将string参数："huzhao1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001002, "huzhao1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2017(context, evt)
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001110, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	if 2001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 将本组内变量名为 "baodi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "baodi", 1, 144001118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"samandie"为2
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2019(context, evt)
	-- 通知场景上的所有玩家播放名字为144001002 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 144001002, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：144001002的对象,请求一次调用,并将string参数："huzhao2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001002, "huzhao2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为144001002 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 144001002, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：144001002的对象,请求一次调用,并将string参数："huzhao3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001002, "huzhao3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟6秒后,向groupId为：144001002的对象,请求一次调用,并将string参数："huzhao4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001002, "huzhao4", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2022(context, evt)
	if evt.param1 ~= 2022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001002, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2023(context, evt)
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2024(context, evt)
	if evt.param1 ~= 2024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2024(context, evt)
	-- 调用提示id为 1110253 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110253) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"samandie"为3
	if ScriptLib.GetGroupVariableValue(context, "samandie") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2025(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900204") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2026(context, evt)
	if evt.param1 ~= 2026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2026(context, evt)
	-- 针对当前group内变量名为 "findpoint2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2027(context, evt)
	if evt.param1 ~= 2027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2027(context, evt)
	-- 针对当前group内变量名为 "findpoint2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2028(context, evt)
	if evt.param1 ~= 2028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2028(context, evt)
	-- 针对当前group内变量名为 "findpoint2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "findpoint2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"findpoint2"为1
	if ScriptLib.GetGroupVariableValue(context, "findpoint2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2030(context, evt)
	--判断死亡怪物的configid是否为 2021
	if evt.param1 ~= 2021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900206") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110255 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110255) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "samandie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "samandie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2031(context, evt)
	if evt.param1 ~= 2031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"4001002"为1
	if ScriptLib.GetGroupVariableValue(context, "4001002") ~= 1 then
			return false
	end
	
	-- 判断变量"findpoint"为0
	if ScriptLib.GetGroupVariableValue(context, "findpoint") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2031(context, evt)
	-- 调用提示id为 1110228 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110228) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（709.7058，120.1323，260.708），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=709.7058, y=120.1323, z=260.708}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end