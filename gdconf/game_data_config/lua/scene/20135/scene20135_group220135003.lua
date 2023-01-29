-- 基础信息
local base_info = {
	group_id = 220135003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3015, gadget_id = 70360001, pos = { x = 95.355, y = 109.175, z = 10.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70950011, pos = { x = 75.815, y = 95.096, z = 10.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70950011, pos = { x = 130.875, y = 90.375, z = 18.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3018, shape = RegionShape.SPHERE, radius = 7, pos = { x = 75.990, y = 100.640, z = 13.007 } },
	{ config_id = 3019, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 75.990, y = 102.363, z = 15.400 } },
	{ config_id = 3020, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 5.000 }, pos = { x = 128.804, y = 91.468, z = 17.849 } },
	{ config_id = 3021, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 130.751, y = 91.468, z = 22.667 } },
	{ config_id = 3022, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 130.751, y = 91.468, z = 22.667 } }
}

-- 触发器
triggers = {
	{ config_id = 1003011, name = "VARIABLE_CHANGE_3011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "GROUP_LOAD_3012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "VARIABLE_CHANGE_3013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3013", trigger_count = 0 },
	{ config_id = 1003014, name = "VARIABLE_CHANGE_3014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3014", trigger_count = 0 },
	{ config_id = 1003018, name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3018", action = "action_EVENT_ENTER_REGION_3018", trigger_count = 0 },
	{ config_id = 1003019, name = "ENTER_REGION_3019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3019", action = "action_EVENT_ENTER_REGION_3019", trigger_count = 0 },
	{ config_id = 1003020, name = "ENTER_REGION_3020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3020", action = "action_EVENT_ENTER_REGION_3020", trigger_count = 0 },
	{ config_id = 1003021, name = "ENTER_REGION_3021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3021", action = "action_EVENT_ENTER_REGION_3021", trigger_count = 0 },
	{ config_id = 1003022, name = "ENTER_REGION_3022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3022", action = "action_EVENT_ENTER_REGION_3022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "room1", value = 1, no_refresh = true },
	{ config_id = 2, name = "room3", value = 1, no_refresh = true },
	{ config_id = 3, name = "room4", value = 1, no_refresh = true },
	{ config_id = 4, name = "room5", value = 1, no_refresh = true },
	{ config_id = 5, name = "reminder1", value = 0, no_refresh = true },
	{ config_id = 6, name = "reminder2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 3010, gadget_id = 70360001, pos = { x = 100.319, y = 101.127, z = 10.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE }
	},
	regions = {
		{ config_id = 3002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 95.124, y = 128.250, z = 69.533 } },
		{ config_id = 3003, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 51.494, y = 126.883, z = 69.166 } },
		{ config_id = 3004, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 59.324, y = 103.866, z = 23.189 } },
		{ config_id = 3005, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 100.318, y = 68.543, z = 73.976 } },
		{ config_id = 3006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 143.874, y = 82.689, z = 73.284 } },
		{ config_id = 3007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 130.521, y = 91.067, z = 22.252 } },
		{ config_id = 3008, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 15.000 }, pos = { x = 102.745, y = 102.147, z = -35.425 } },
		{ config_id = 3009, shape = RegionShape.SPHERE, radius = 8, pos = { x = 99.902, y = 100.640, z = 14.284 } }
	},
	triggers = {
		{ config_id = 1003001, name = "GROUP_LOAD_3001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3001", trigger_count = 0 },
		{ config_id = 1003002, name = "ENTER_REGION_3002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3002", action = "action_EVENT_ENTER_REGION_3002", trigger_count = 0 },
		{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003", trigger_count = 0 },
		{ config_id = 1003004, name = "ENTER_REGION_3004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3004", action = "action_EVENT_ENTER_REGION_3004", trigger_count = 0 },
		{ config_id = 1003005, name = "ENTER_REGION_3005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3005", action = "action_EVENT_ENTER_REGION_3005", trigger_count = 0 },
		{ config_id = 1003006, name = "ENTER_REGION_3006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3006", action = "action_EVENT_ENTER_REGION_3006", trigger_count = 0 },
		{ config_id = 1003007, name = "ENTER_REGION_3007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3007", action = "action_EVENT_ENTER_REGION_3007", trigger_count = 0 },
		{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008" },
		{ config_id = 1003009, name = "ENTER_REGION_3009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3009", action = "action_EVENT_ENTER_REGION_3009", trigger_count = 0 }
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
		gadgets = { 3015 },
		regions = { 3022 },
		triggers = { "VARIABLE_CHANGE_3011", "GROUP_LOAD_3012", "VARIABLE_CHANGE_3013", "VARIABLE_CHANGE_3014", "ENTER_REGION_3022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3016 },
		regions = { 3018, 3019 },
		triggers = { "ENTER_REGION_3018", "ENTER_REGION_3019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3017 },
		regions = { 3020, 3021 },
		triggers = { "ENTER_REGION_3020", "ENTER_REGION_3021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3011(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "room1") == 0 or ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "room1") == 1 or ScriptLib.GetGroupVariableValue(context, "room4") == 0 or ScriptLib.GetGroupVariableValue(context, "room5") == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3012(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "room1") == 0 or ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "room1") == 1 or ScriptLib.GetGroupVariableValue(context, "room4") == 0 or ScriptLib.GetGroupVariableValue(context, "room5") == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	ScriptLib.SetGroupVariableValue(context, "reminder1", 0)
	
	ScriptLib.SetGroupVariableValue(context, "reminder2", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3013(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "room1") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
		ScriptLib.RemoveExtraGroupSuite(context, 220135003, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3014(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "room1") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 and ScriptLib.GetGroupVariableValue(context, "room5") == 1 then
		ScriptLib.RemoveExtraGroupSuite(context, 220135003, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3018(context, evt)
	if evt.param1 ~= 3018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder1"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3018(context, evt)
	-- 将本组内变量名为 "reminder1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 201350105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201350105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3019(context, evt)
	if evt.param1 ~= 3019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220135003, EntityType.GADGET, 3016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3020(context, evt)
	if evt.param1 ~= 3020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder2"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3020(context, evt)
	-- 将本组内变量名为 "reminder2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 201350105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201350105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3021(context, evt)
	if evt.param1 ~= 3021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220135003, EntityType.GADGET, 3017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3022(context, evt)
	if evt.param1 ~= 3022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
			
	-- 判断变量"turn"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "turn", 220135002) ~= 1 then
		return false
	end
			
	if ScriptLib.CheckSceneTag(context, 20135, 1073) ~= true then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3022(context, evt)
	ScriptLib.ChangeToTargetLevelTag(context, 37)
	return 0
end