-- 基础信息
local base_info = {
	group_id = 133003074
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 74001, monster_id = 21010501, pos = { x = 2178.446, y = 226.097, z = -1214.978 }, rot = { x = 0.000, y = 251.787, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 1 },
	{ config_id = 74002, monster_id = 21010501, pos = { x = 2179.456, y = 226.097, z = -1217.442 }, rot = { x = 0.000, y = 249.536, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 1 },
	{ config_id = 74003, monster_id = 21010501, pos = { x = 2180.533, y = 226.097, z = -1220.281 }, rot = { x = 0.000, y = 252.716, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 1 },
	{ config_id = 74019, monster_id = 21010101, pos = { x = 2183.098, y = 226.387, z = -1207.807 }, rot = { x = 0.000, y = 314.790, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 74020, monster_id = 21010101, pos = { x = 2181.845, y = 225.790, z = -1205.184 }, rot = { x = 0.000, y = 196.383, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 74021, monster_id = 21010101, pos = { x = 2179.527, y = 226.020, z = -1207.679 }, rot = { x = 0.000, y = 62.107, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 9012, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 74012, gadget_id = 70300089, pos = { x = 2176.340, y = 225.417, z = -1210.203 }, rot = { x = 0.000, y = 216.799, z = 0.000 }, level = 19, area_id = 1 },
	{ config_id = 74013, gadget_id = 70300089, pos = { x = 2181.474, y = 226.096, z = -1206.771 }, rot = { x = 0.000, y = 239.829, z = 0.000 }, level = 19, area_id = 1 },
	{ config_id = 74014, gadget_id = 70300088, pos = { x = 2172.666, y = 224.488, z = -1217.201 }, rot = { x = 359.488, y = 338.271, z = 0.000 }, level = 19, area_id = 1 },
	{ config_id = 74015, gadget_id = 70300088, pos = { x = 2174.182, y = 224.977, z = -1219.826 }, rot = { x = 0.000, y = 329.122, z = 0.000 }, level = 19, area_id = 1 },
	{ config_id = 74016, gadget_id = 70300088, pos = { x = 2175.717, y = 225.568, z = -1222.305 }, rot = { x = 0.000, y = 324.576, z = 0.000 }, level = 19, area_id = 1 },
	{ config_id = 74022, gadget_id = 70220005, pos = { x = 2168.194, y = 223.566, z = -1214.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74023, gadget_id = 70220005, pos = { x = 2188.964, y = 226.779, z = -1214.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74024, gadget_id = 70220005, pos = { x = 2173.778, y = 225.124, z = -1222.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74025, gadget_id = 70220005, pos = { x = 2169.308, y = 223.968, z = -1219.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74026, gadget_id = 70220005, pos = { x = 2177.551, y = 226.558, z = -1224.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 74027, gadget_id = 70220010, pos = { x = 2180.493, y = 226.265, z = -1210.208 }, rot = { x = 0.000, y = 55.098, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 74030, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2178.831, y = 225.947, z = -1208.057 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1074006, name = "ANY_GADGET_DIE_74006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74006", action = "action_EVENT_ANY_GADGET_DIE_74006" },
	{ config_id = 1074007, name = "ANY_GADGET_DIE_74007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74007", action = "action_EVENT_ANY_GADGET_DIE_74007" },
	{ config_id = 1074008, name = "ANY_GADGET_DIE_74008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74008", action = "action_EVENT_ANY_GADGET_DIE_74008" },
	{ config_id = 1074017, name = "ANY_MONSTER_DIE_74017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74017", action = "action_EVENT_ANY_MONSTER_DIE_74017" },
	{ config_id = 1074018, name = "ANY_GADGET_DIE_74018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74018", action = "action_EVENT_ANY_GADGET_DIE_74018" },
	{ config_id = 1074028, name = "ANY_GADGET_DIE_74028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74028", action = "action_EVENT_ANY_GADGET_DIE_74028" },
	{ config_id = 1074029, name = "ANY_GADGET_DIE_74029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74029", action = "action_EVENT_ANY_GADGET_DIE_74029" },
	{ config_id = 1074030, name = "ENTER_REGION_74030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_74030", action = "action_EVENT_ENTER_REGION_74030" },
	{ config_id = 1074031, name = "VARIABLE_CHANGE_74031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74031", action = "action_EVENT_VARIABLE_CHANGE_74031" },
	{ config_id = 1074032, name = "ANY_MONSTER_DIE_74032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74032", action = "action_EVENT_ANY_MONSTER_DIE_74032" }
}

-- 变量
variables = {
	{ config_id = 1, name = "boom", value = 0, no_refresh = false },
	{ config_id = 2, name = "alive", value = 0, no_refresh = false }
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
		monsters = { 74001, 74002, 74003, 74019, 74020, 74021 },
		gadgets = { 74012, 74013, 74014, 74015, 74016, 74022, 74023, 74024, 74025, 74026, 74027 },
		regions = { 74030 },
		triggers = { "ANY_GADGET_DIE_74006", "ANY_GADGET_DIE_74007", "ANY_GADGET_DIE_74008", "ANY_MONSTER_DIE_74017", "ANY_GADGET_DIE_74018", "ANY_GADGET_DIE_74028", "ANY_GADGET_DIE_74029", "ENTER_REGION_74030", "VARIABLE_CHANGE_74031", "ANY_MONSTER_DIE_74032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_74006(context, evt)
	if 74027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2180.845,y=226.26,z=-1211.189}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110434, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_74007(context, evt)
	if 74023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "boom" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boom", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_74008(context, evt)
	if 74024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "boom" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boom", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030741") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_74018(context, evt)
	if 74025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "boom" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boom", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_74028(context, evt)
	if 74022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "boom" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boom", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_74029(context, evt)
	if 74026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_74029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030742") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "boom" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "boom", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "alive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_74030(context, evt)
	if evt.param1 ~= 74030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_74030(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2178.831,y=225.9473,z=-1208.057}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110431, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"boom"为1
	if ScriptLib.GetGroupVariableValue(context, "boom") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74031(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2178.191,y=225.8513,z=-1210.174}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110446, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74032(context, evt)
	-- 判断变量"alive"为0
	if ScriptLib.GetGroupVariableValue(context, "alive") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74032(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2180.045,y=226.2048,z=-1209.445}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110448, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end