-- 基础信息
local base_info = {
	group_id = 220140012
}

-- DEFS_MISCS
local   defs = {  serve_items = {12025,12026}}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12005, monster_id = 25050301, pos = { x = 40.698, y = 53.099, z = 336.200 }, rot = { x = 0.000, y = 256.222, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true },
	{ config_id = 12006, monster_id = 25050301, pos = { x = 42.194, y = 52.884, z = 331.055 }, rot = { x = 0.000, y = 303.648, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true },
	{ config_id = 12011, monster_id = 25050301, pos = { x = 59.972, y = 56.850, z = 401.222 }, rot = { x = 0.000, y = 179.188, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true },
	{ config_id = 12014, monster_id = 25050301, pos = { x = 63.982, y = 56.850, z = 400.451 }, rot = { x = 0.000, y = 196.230, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, isOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70310297, pos = { x = 42.895, y = 46.127, z = 366.440 }, rot = { x = 320.673, y = 35.624, z = 295.401 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12003, gadget_id = 70290373, pos = { x = 36.547, y = 70.752, z = 470.920 }, rot = { x = 0.000, y = 164.894, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12004, gadget_id = 70310296, pos = { x = 46.390, y = 39.000, z = 353.810 }, rot = { x = 347.784, y = 42.740, z = 5.293 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12007, gadget_id = 70310297, pos = { x = 49.850, y = 55.941, z = 411.734 }, rot = { x = 333.854, y = 337.657, z = 41.102 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12009, gadget_id = 70310297, pos = { x = 76.865, y = 66.174, z = 457.258 }, rot = { x = 325.482, y = 85.069, z = 260.034 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12010, gadget_id = 70310296, pos = { x = 46.830, y = 40.941, z = 403.377 }, rot = { x = 357.416, y = 325.617, z = 0.953 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 12013, gadget_id = 70310296, pos = { x = 23.090, y = 55.980, z = 453.490 }, rot = { x = 349.493, y = 286.198, z = 11.470 }, level = 1, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 12016, gadget_id = 70690029, pos = { x = 41.857, y = 61.875, z = 476.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12017, gadget_id = 70690001, pos = { x = 39.365, y = 80.922, z = 484.915 }, rot = { x = 336.124, y = 339.650, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12018, gadget_id = 70690001, pos = { x = 36.185, y = 84.970, z = 493.488 }, rot = { x = 329.382, y = 339.650, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12019, gadget_id = 70690001, pos = { x = 33.005, y = 89.017, z = 502.062 }, rot = { x = 350.059, y = 355.471, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12020, gadget_id = 70690001, pos = { x = 32.262, y = 90.666, z = 511.440 }, rot = { x = 350.059, y = 355.471, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12021, gadget_id = 70290373, pos = { x = 44.612, y = 70.717, z = 472.883 }, rot = { x = 0.000, y = 164.894, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12022, gadget_id = 70360001, pos = { x = -7.284, y = 38.335, z = 312.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 12025, gadget_id = 70290374, pos = { x = 42.669, y = 70.866, z = 463.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 12026, gadget_id = 70290374, pos = { x = 50.627, y = 70.218, z = 466.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 12027, gadget_id = 70690029, pos = { x = 31.409, y = 71.842, z = 519.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 12023, shape = RegionShape.SPHERE, radius = 20, pos = { x = 40.880, y = 70.817, z = 465.342 } },
	{ config_id = 12029, shape = RegionShape.SPHERE, radius = 15, pos = { x = 46.874, y = 53.557, z = 333.571 } }
}

-- 触发器
triggers = {
	{ config_id = 1012002, name = "LEVEL_TAG_CHANGE_12002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_12002", trigger_count = 0 },
	{ config_id = 1012008, name = "ANY_MONSTER_DIE_12008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12008", action = "action_EVENT_ANY_MONSTER_DIE_12008" },
	{ config_id = 1012012, name = "ANY_MONSTER_DIE_12012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12012", action = "action_EVENT_ANY_MONSTER_DIE_12012" },
	{ config_id = 1012015, name = "GADGET_STATE_CHANGE_12015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_12015", trigger_count = 0 },
	{ config_id = 1012023, name = "ENTER_REGION_12023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_12023", trigger_count = 0 },
	{ config_id = 1012024, name = "GROUP_LOAD_12024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_12024", trigger_count = 0 },
	{ config_id = 1012029, name = "ENTER_REGION_12029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12029", action = "action_EVENT_ENTER_REGION_12029" },
	{ config_id = 1012030, name = "TIME_AXIS_PASS_12030", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "condition_EVENT_TIME_AXIS_PASS_12030", action = "action_EVENT_TIME_AXIS_PASS_12030" },
	{ config_id = 1012031, name = "TIME_AXIS_PASS_12031", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp1", condition = "condition_EVENT_TIME_AXIS_PASS_12031", action = "action_EVENT_TIME_AXIS_PASS_12031" }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "change", value = 0, no_refresh = true }
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
		gadgets = { 12022 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_12002", "GROUP_LOAD_12024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12001, 12007, 12009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 12005, 12006 },
		gadgets = { 12004 },
		regions = { 12029 },
		triggers = { "ANY_MONSTER_DIE_12008", "ENTER_REGION_12029", "TIME_AXIS_PASS_12030" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 12011, 12014 },
		gadgets = { 12010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12012", "TIME_AXIS_PASS_12031" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 12003, 12013, 12021, 12025, 12026 },
		regions = { 12023 },
		triggers = { "GADGET_STATE_CHANGE_12015", "ENTER_REGION_12023" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 12016, 12017, 12018, 12019, 12020, 12027 },
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

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_12002(context, evt)
	if evt.param2 == 31 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12008(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 5, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"temp"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12012(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "plat" 的变量设置为 6
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 6, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"temp1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp1", {2}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12015(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 12003) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 12021) == 201 and ScriptLib.GetGroupVariableValue(context, "temp") == 3 then
		ScriptLib.SetGroupVariableValueByGroup(context, "plat", 7, 220140004)
		
		ScriptLib.SetGroupVariableValue(context, "temp", 4)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "monster", 1, 220140019)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
		
		ScriptLib.AddExtraGroupSuite(context, 220140019, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_12023(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "change") == 0 and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 then
		ScriptLib.SetGroupVariableValue(context, "change", 1)
		
		ScriptLib.ChangeToTargetLevelTag(context, 32)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12024(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 2 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 3 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 5)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 4 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 5)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 6)
	end
	
	if ScriptLib.CheckSceneTag(context, 20140,1070 ) or ScriptLib.GetGroupVariableValue(context, "temp") == 0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12029(context, evt)
	if evt.param1 ~= 12029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12029(context, evt)
	-- 调用提示id为 60010363 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010363) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_12030(context, evt)
	if "temp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_12030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140012, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_12031(context, evt)
	if "temp1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_12031(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140012, 5)
	
	return 0
end

require "V2_8/KazuhaServeItem"