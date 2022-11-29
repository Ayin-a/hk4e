-- 基础信息
local base_info = {
	group_id = 133107928
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 928004, monster_id = 26010201, pos = { x = -785.216, y = 227.473, z = 245.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 928001, gadget_id = 70500000, pos = { x = -784.606, y = 227.633, z = 243.649 }, rot = { x = 7.823, y = 359.153, z = 347.660 }, level = 18, point_type = 9125, area_id = 7 },
	{ config_id = 928005, gadget_id = 70300118, pos = { x = -784.606, y = 227.633, z = 243.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 928006, gadget_id = 70500000, pos = { x = -788.275, y = 228.212, z = 246.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9125, area_id = 7 },
	{ config_id = 928007, gadget_id = 70500000, pos = { x = -783.484, y = 227.084, z = 246.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9125, area_id = 7 },
	{ config_id = 928009, gadget_id = 70300118, pos = { x = -788.275, y = 228.212, z = 246.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 928010, gadget_id = 70300118, pos = { x = -783.484, y = 227.084, z = 246.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 928014, gadget_id = 70710207, pos = { x = -788.272, y = 228.518, z = 244.739 }, rot = { x = 7.617, y = 357.075, z = 336.202 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 928003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -788.272, y = 228.518, z = 244.739 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1928002, name = "VARIABLE_CHANGE_928002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_928002", action = "action_EVENT_VARIABLE_CHANGE_928002" },
	{ config_id = 1928003, name = "ENTER_REGION_928003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_928003", action = "action_EVENT_ENTER_REGION_928003" },
	{ config_id = 1928008, name = "GATHER_928008", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_928008", trigger_count = 0 },
	{ config_id = 1928011, name = "GATHER_928011", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_928011", action = "action_EVENT_GATHER_928011" },
	{ config_id = 1928012, name = "GATHER_928012", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_928012", action = "action_EVENT_GATHER_928012" },
	{ config_id = 1928013, name = "GATHER_928013", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_928013", action = "action_EVENT_GATHER_928013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "pickedPlants", value = 0, no_refresh = true }
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
		gadgets = { 928001, 928005, 928006, 928007, 928009, 928010, 928014 },
		regions = { 928003 },
		triggers = { "VARIABLE_CHANGE_928002", "ENTER_REGION_928003", "GATHER_928008", "GATHER_928011", "GATHER_928012", "GATHER_928013" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_928002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"pickedPlants"为3
	if ScriptLib.GetGroupVariableValue(context, "pickedPlants") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_928002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 928004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 31070103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_928003(context, evt)
	if evt.param1 ~= 928003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_928003(context, evt)
	-- 调用提示id为 31070101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_928008(context, evt)
	-- 针对当前group内变量名为 "pickedPlants" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "pickedPlants", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_928011(context, evt)
	if 928001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_928011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 928005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113116") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_928012(context, evt)
	if 928006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_928012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 928009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113117") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_928013(context, evt)
	if 928007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_928013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 928010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4113118") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end