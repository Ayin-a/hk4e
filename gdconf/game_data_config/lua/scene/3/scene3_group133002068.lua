-- 基础信息
local base_info = {
	group_id = 133002068
}

-- Trigger变量
local defs = {
	target_group = 133002145,
	Active_Trap_Time = 30
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 28020315, pos = { x = 1086.188, y = 285.861, z = -439.111 }, rot = { x = 0.000, y = 87.473, z = 0.000 }, level = 80, drop_id = 1000100, title_id = 10003, special_name_id = 10181, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68002, gadget_id = 70800232, pos = { x = 1095.581, y = 286.500, z = -435.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68003, gadget_id = 70800232, pos = { x = 1095.108, y = 286.500, z = -446.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68006, gadget_id = 70800232, pos = { x = 1085.782, y = 286.500, z = -427.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68007, gadget_id = 70800232, pos = { x = 1074.106, y = 286.500, z = -432.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68008, gadget_id = 70800232, pos = { x = 1076.842, y = 286.500, z = -447.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68010, gadget_id = 70310017, pos = { x = 1100.552, y = 285.861, z = -449.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68011, gadget_id = 70310017, pos = { x = 1100.697, y = 285.861, z = -425.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68012, gadget_id = 70310017, pos = { x = 1080.639, y = 285.861, z = -459.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68013, gadget_id = 70310017, pos = { x = 1064.203, y = 285.861, z = -449.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68014, gadget_id = 70310017, pos = { x = 1063.488, y = 285.861, z = -426.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68015, gadget_id = 70310017, pos = { x = 1081.791, y = 285.861, z = -415.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 68017, gadget_id = 70800235, pos = { x = 1079.700, y = 285.861, z = -439.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- trap_3
	{ config_id = 68018, gadget_id = 70800230, pos = { x = 1090.939, y = 285.861, z = -422.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- trap_5
	{ config_id = 68024, gadget_id = 70800230, pos = { x = 1088.731, y = 285.861, z = -451.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- trap_1
	{ config_id = 68098, gadget_id = 70800230, pos = { x = 1066.339, y = 285.861, z = -438.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 68104, gadget_id = 70270004, pos = { x = 1081.647, y = 285.861, z = -437.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 挑战开启后，创建四八陷阱时间轴trap1
	{ config_id = 68004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1103.241, y = 285.861, z = -439.331 }, area_id = 10 },
	-- 护盾、温度值调控等角色能力的生效范围
	{ config_id = 68101, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1079.314, y = 285.861, z = -439.569 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 挑战开启后，创建四八陷阱时间轴trap1
	{ config_id = 1068004, name = "ENTER_REGION_68004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68004", action = "action_EVENT_ENTER_REGION_68004" },
	-- buff_2到15s，播reminder
	{ config_id = 1068009, name = "TIME_AXIS_PASS_68009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68009", action = "action_EVENT_TIME_AXIS_PASS_68009", trigger_count = 0 },
	-- 68002,时间轴buff_1
	{ config_id = 1068028, name = "ANY_GADGET_DIE_68028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68028", action = "action_EVENT_ANY_GADGET_DIE_68028", trigger_count = 0 },
	-- 68003,时间轴buff_2
	{ config_id = 1068029, name = "ANY_GADGET_DIE_68029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68029", action = "action_EVENT_ANY_GADGET_DIE_68029", trigger_count = 0 },
	-- 68006,时间轴buff_3
	{ config_id = 1068030, name = "ANY_GADGET_DIE_68030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68030", action = "action_EVENT_ANY_GADGET_DIE_68030", trigger_count = 0 },
	-- 68007,时间轴buff_4
	{ config_id = 1068031, name = "ANY_GADGET_DIE_68031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68031", action = "action_EVENT_ANY_GADGET_DIE_68031", trigger_count = 0 },
	-- 68008,时间轴buff_5
	{ config_id = 1068032, name = "ANY_GADGET_DIE_68032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68032", action = "action_EVENT_ANY_GADGET_DIE_68032", trigger_count = 0 },
	-- buff_1到15s，播reminder
	{ config_id = 1068033, name = "TIME_AXIS_PASS_68033", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68033", action = "action_EVENT_TIME_AXIS_PASS_68033", trigger_count = 0 },
	-- buff_2到15s，播reminder
	{ config_id = 1068034, name = "TIME_AXIS_PASS_68034", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68034", action = "action_EVENT_TIME_AXIS_PASS_68034", trigger_count = 0 },
	-- buff_3到15s，播reminder
	{ config_id = 1068035, name = "TIME_AXIS_PASS_68035", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68035", action = "action_EVENT_TIME_AXIS_PASS_68035", trigger_count = 0 },
	-- buff_4到15s，播reminder
	{ config_id = 1068036, name = "TIME_AXIS_PASS_68036", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68036", action = "action_EVENT_TIME_AXIS_PASS_68036", trigger_count = 0 },
	-- buff_5到15s，播reminder
	{ config_id = 1068037, name = "TIME_AXIS_PASS_68037", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68037", action = "action_EVENT_TIME_AXIS_PASS_68037", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 68106, pos = { x = 1103.240, y = 285.861, z = -439.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1068005, name = "SPECIFIC_MONSTER_HP_CHANGE_68005", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "", condition = "", action = "" },
		{ config_id = 1068038, name = "TIME_AXIS_PASS_68038", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68038", action = "action_EVENT_TIME_AXIS_PASS_68038", trigger_count = 0 },
		{ config_id = 1068039, name = "TIME_AXIS_PASS_68039", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68039", action = "action_EVENT_TIME_AXIS_PASS_68039", trigger_count = 0 },
		{ config_id = 1068040, name = "TIME_AXIS_PASS_68040", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68040", action = "action_EVENT_TIME_AXIS_PASS_68040", trigger_count = 0 },
		{ config_id = 1068041, name = "TIME_AXIS_PASS_68041", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68041", action = "action_EVENT_TIME_AXIS_PASS_68041", trigger_count = 0 },
		{ config_id = 1068042, name = "TIME_AXIS_PASS_68042", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_68042", action = "action_EVENT_TIME_AXIS_PASS_68042", trigger_count = 0 }
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
		-- description = 挑战机关,
		monsters = { },
		gadgets = { 68010, 68011, 68012, 68013, 68014, 68015, 68018, 68024, 68098, 68104 },
		regions = { 68004, 68101 },
		triggers = { "ENTER_REGION_68004", "TIME_AXIS_PASS_68009", "ANY_GADGET_DIE_68028", "ANY_GADGET_DIE_68029", "ANY_GADGET_DIE_68030", "ANY_GADGET_DIE_68031", "ANY_GADGET_DIE_68032", "TIME_AXIS_PASS_68033", "TIME_AXIS_PASS_68035", "TIME_AXIS_PASS_68036", "TIME_AXIS_PASS_68037" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雪猪王、烟雾装置,
		monsters = { 68001 },
		gadgets = { 68017 },
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
function condition_EVENT_ENTER_REGION_68004(context, evt)
	if evt.param1 ~= 68004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002068, 2)
	
	-- 调用提示id为 400172 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"trap_1"，时间节点为{1,60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "trap_1", {1,60}, false)
	
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68009(context, evt)
	if "buff_2" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68009(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68028(context, evt)
	if 68002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68028(context, evt)
	-- 创建标识为"buff_1"，时间节点为{1,15,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "buff_1", {1,15,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68029(context, evt)
	if 68003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68029(context, evt)
	-- 创建标识为"buff_2"，时间节点为{1,15,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "buff_2", {1,15,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68030(context, evt)
	if 68006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68030(context, evt)
	-- 创建标识为"buff_3"，时间节点为{1,15,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "buff_3", {1,15,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68031(context, evt)
	if 68007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68031(context, evt)
	-- 创建标识为"buff_4"，时间节点为{1,15,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "buff_4", {1,15,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68032(context, evt)
	if 68008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68032(context, evt)
	-- 创建标识为"buff_5"，时间节点为{1,15,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "buff_5", {1,15,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68033(context, evt)
	if "buff_1" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68033(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68034(context, evt)
	if "buff_2" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68034(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68035(context, evt)
	if "buff_3" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68035(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68036(context, evt)
	if "buff_4" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68036(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_68037(context, evt)
	if "buff_5" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68037(context, evt)
	-- 调用提示id为 400188 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400188) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "create_random_shield_orb" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "create_random_shield_orb", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/Activity_Hunt_Stage_2"