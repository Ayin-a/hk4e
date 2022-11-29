-- 基础信息
local base_info = {
	group_id = 133102906
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 906015, monster_id = 21010101, pos = { x = 1470.220, y = 208.561, z = 739.997 }, rot = { x = 0.000, y = 263.192, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9010, area_id = 5 },
	{ config_id = 906016, monster_id = 21010101, pos = { x = 1468.027, y = 208.236, z = 739.336 }, rot = { x = 0.000, y = 69.970, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9010, area_id = 5 },
	{ config_id = 906017, monster_id = 21020201, pos = { x = 1459.129, y = 207.100, z = 735.211 }, rot = { x = 0.000, y = 14.246, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 906001, gadget_id = 70300083, pos = { x = 1468.261, y = 207.809, z = 725.629 }, rot = { x = 5.127, y = 1.135, z = 13.104 }, level = 18, area_id = 5 },
	{ config_id = 906002, gadget_id = 70300083, pos = { x = 1459.629, y = 207.069, z = 727.706 }, rot = { x = 0.466, y = 27.208, z = 355.036 }, level = 18, area_id = 5 },
	{ config_id = 906003, gadget_id = 70300101, pos = { x = 1471.791, y = 208.349, z = 735.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 906004, gadget_id = 70300083, pos = { x = 1467.995, y = 207.261, z = 746.134 }, rot = { x = 0.000, y = 21.484, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 906007, gadget_id = 70300118, pos = { x = 1468.261, y = 207.809, z = 725.629 }, rot = { x = 5.127, y = 1.135, z = 13.104 }, level = 18, area_id = 5 },
	{ config_id = 906008, gadget_id = 70300118, pos = { x = 1459.629, y = 207.069, z = 727.706 }, rot = { x = 0.466, y = 27.208, z = 355.036 }, level = 18, area_id = 5 },
	{ config_id = 906009, gadget_id = 70300118, pos = { x = 1471.791, y = 208.349, z = 735.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 906010, gadget_id = 70300118, pos = { x = 1467.995, y = 207.261, z = 746.134 }, rot = { x = 0.000, y = 21.484, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 906005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1465.217, y = 207.256, z = 736.783 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1906005, name = "ENTER_REGION_906005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_906005", action = "action_EVENT_ENTER_REGION_906005" },
	{ config_id = 1906006, name = "ANY_GADGET_DIE_906006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_906006", action = "action_EVENT_ANY_GADGET_DIE_906006" },
	{ config_id = 1906011, name = "ANY_GADGET_DIE_906011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_906011", action = "action_EVENT_ANY_GADGET_DIE_906011" },
	{ config_id = 1906012, name = "ANY_GADGET_DIE_906012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_906012", action = "action_EVENT_ANY_GADGET_DIE_906012" },
	{ config_id = 1906013, name = "ANY_GADGET_DIE_906013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_906013", action = "action_EVENT_ANY_GADGET_DIE_906013" },
	{ config_id = 1906014, name = "ANY_GADGET_DIE_906014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_906014", action = "action_EVENT_ANY_GADGET_DIE_906014" },
	{ config_id = 1906018, name = "ANY_MONSTER_DIE_906018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_906018", action = "action_EVENT_ANY_MONSTER_DIE_906018" },
	{ config_id = 1906019, name = "VARIABLE_CHANGE_906019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_906019", action = "action_EVENT_VARIABLE_CHANGE_906019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "allMonstersDead", value = 0, no_refresh = false },
	{ config_id = 2, name = "allGadgetsDead", value = 0, no_refresh = false }
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
		monsters = { 906015, 906016, 906017 },
		gadgets = { 906001, 906002, 906003, 906004 },
		regions = { 906005 },
		triggers = { "ENTER_REGION_906005", "ANY_GADGET_DIE_906006", "ANY_MONSTER_DIE_906018", "VARIABLE_CHANGE_906019" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 906007, 906008, 906009, 906010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_906011", "ANY_GADGET_DIE_906012", "ANY_GADGET_DIE_906013", "ANY_GADGET_DIE_906014" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_906005(context, evt)
	if evt.param1 ~= 906005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_906005(context, evt)
	-- 调用提示id为 31020901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102906, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_906006(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133102906}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906006(context, evt)
	-- 将本组内变量名为 "allGadgetsDead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "allGadgetsDead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_906011(context, evt)
	if 906001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 906007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_906012(context, evt)
	if 906002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 906008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_906013(context, evt)
	if 906003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 906009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_906014(context, evt)
	if 906004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_906014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 906010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_906018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_906018(context, evt)
	-- 将本组内变量名为 "allMonstersDead" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "allMonstersDead", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_906019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"allMonstersDead"为1
	if ScriptLib.GetGroupVariableValue(context, "allMonstersDead") ~= 1 then
			return false
	end
	
	-- 判断变量"allGadgetsDead"为1
	if ScriptLib.GetGroupVariableValue(context, "allGadgetsDead") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_906019(context, evt)
	-- 调用提示id为 31020906 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020906) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end