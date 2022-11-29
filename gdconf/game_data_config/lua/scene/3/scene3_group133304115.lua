-- 基础信息
local base_info = {
	group_id = 133304115
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
	{ config_id = 115002, gadget_id = 70210102, pos = { x = -1756.468, y = 250.246, z = 2756.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115003, gadget_id = 70210102, pos = { x = -1755.173, y = 252.453, z = 2758.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115004, gadget_id = 70210102, pos = { x = -1759.499, y = 247.068, z = 2757.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115005, gadget_id = 70210102, pos = { x = -1758.725, y = 246.997, z = 2757.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115006, gadget_id = 70210102, pos = { x = -1756.540, y = 251.997, z = 2755.038 }, rot = { x = 0.000, y = 135.880, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115007, gadget_id = 70210102, pos = { x = -1755.173, y = 252.453, z = 2758.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115013, gadget_id = 70210102, pos = { x = -1761.568, y = 250.550, z = 2756.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115014, gadget_id = 70210102, pos = { x = -1759.482, y = 247.112, z = 2757.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115015, gadget_id = 70210102, pos = { x = -1756.366, y = 250.215, z = 2756.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 115031, gadget_id = 70290003, pos = { x = -1756.468, y = 250.246, z = 2756.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115032, gadget_id = 70290003, pos = { x = -1755.173, y = 252.453, z = 2758.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115033, gadget_id = 70290003, pos = { x = -1759.499, y = 247.068, z = 2757.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115034, gadget_id = 70290003, pos = { x = -1758.725, y = 246.997, z = 2757.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115035, gadget_id = 70290003, pos = { x = -1756.540, y = 251.997, z = 2755.038 }, rot = { x = 0.000, y = 135.880, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115036, gadget_id = 70290003, pos = { x = -1755.173, y = 252.453, z = 2758.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115037, gadget_id = 70290003, pos = { x = -1761.568, y = 250.550, z = 2756.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115038, gadget_id = 70290003, pos = { x = -1759.482, y = 247.112, z = 2757.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 115039, gadget_id = 70290003, pos = { x = -1756.366, y = 250.215, z = 2756.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1115001, name = "GADGET_STATE_CHANGE_115001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115001", action = "action_EVENT_GADGET_STATE_CHANGE_115001" },
	{ config_id = 1115008, name = "GADGET_STATE_CHANGE_115008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115008", action = "action_EVENT_GADGET_STATE_CHANGE_115008" },
	{ config_id = 1115009, name = "GADGET_STATE_CHANGE_115009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115009", action = "action_EVENT_GADGET_STATE_CHANGE_115009" },
	{ config_id = 1115010, name = "GADGET_STATE_CHANGE_115010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115010", action = "action_EVENT_GADGET_STATE_CHANGE_115010" },
	{ config_id = 1115011, name = "GADGET_STATE_CHANGE_115011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115011", action = "action_EVENT_GADGET_STATE_CHANGE_115011" },
	{ config_id = 1115012, name = "GADGET_STATE_CHANGE_115012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115012", action = "action_EVENT_GADGET_STATE_CHANGE_115012" },
	{ config_id = 1115016, name = "VARIABLE_CHANGE_115016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115016", action = "action_EVENT_VARIABLE_CHANGE_115016" },
	{ config_id = 1115017, name = "VARIABLE_CHANGE_115017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115017", action = "action_EVENT_VARIABLE_CHANGE_115017" },
	{ config_id = 1115018, name = "VARIABLE_CHANGE_115018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115018", action = "action_EVENT_VARIABLE_CHANGE_115018" },
	{ config_id = 1115019, name = "VARIABLE_CHANGE_115019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115019", action = "action_EVENT_VARIABLE_CHANGE_115019" },
	{ config_id = 1115020, name = "VARIABLE_CHANGE_115020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115020", action = "action_EVENT_VARIABLE_CHANGE_115020" },
	{ config_id = 1115021, name = "VARIABLE_CHANGE_115021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115021", action = "action_EVENT_VARIABLE_CHANGE_115021" },
	{ config_id = 1115022, name = "GADGET_STATE_CHANGE_115022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115022", action = "action_EVENT_GADGET_STATE_CHANGE_115022" },
	{ config_id = 1115023, name = "GADGET_STATE_CHANGE_115023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115023", action = "action_EVENT_GADGET_STATE_CHANGE_115023" },
	{ config_id = 1115024, name = "GADGET_STATE_CHANGE_115024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115024", action = "action_EVENT_GADGET_STATE_CHANGE_115024" },
	{ config_id = 1115025, name = "VARIABLE_CHANGE_115025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115025", action = "action_EVENT_VARIABLE_CHANGE_115025" },
	{ config_id = 1115026, name = "VARIABLE_CHANGE_115026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115026", action = "action_EVENT_VARIABLE_CHANGE_115026" },
	{ config_id = 1115027, name = "VARIABLE_CHANGE_115027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115027", action = "action_EVENT_VARIABLE_CHANGE_115027" },
	{ config_id = 1115028, name = "VARIABLE_CHANGE_115028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115028", action = "action_EVENT_VARIABLE_CHANGE_115028", trigger_count = 0 },
	{ config_id = 1115029, name = "VARIABLE_CHANGE_115029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115029", action = "action_EVENT_VARIABLE_CHANGE_115029", trigger_count = 0 },
	{ config_id = 1115030, name = "VARIABLE_CHANGE_115030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_115030", action = "action_EVENT_VARIABLE_CHANGE_115030", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FOOD", value = 0, no_refresh = false }
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
		gadgets = { 115002, 115003, 115004, 115031, 115032, 115033 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_115001", "GADGET_STATE_CHANGE_115008", "GADGET_STATE_CHANGE_115009", "VARIABLE_CHANGE_115016", "VARIABLE_CHANGE_115017", "VARIABLE_CHANGE_115018", "VARIABLE_CHANGE_115028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 115005, 115006, 115007, 115034, 115035, 115036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_115022", "GADGET_STATE_CHANGE_115023", "GADGET_STATE_CHANGE_115024", "VARIABLE_CHANGE_115025", "VARIABLE_CHANGE_115026", "VARIABLE_CHANGE_115027", "VARIABLE_CHANGE_115029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 115013, 115014, 115015, 115037, 115038, 115039 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_115010", "GADGET_STATE_CHANGE_115011", "GADGET_STATE_CHANGE_115012", "VARIABLE_CHANGE_115019", "VARIABLE_CHANGE_115020", "VARIABLE_CHANGE_115021", "VARIABLE_CHANGE_115030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115001(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115001(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115009(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115009(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115010(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115010(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115011(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115011(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115012(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115012(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为1
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115016(context, evt)
	-- 调用提示id为 400192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为2
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115017(context, evt)
	-- 调用提示id为 400193 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115018(context, evt)
	-- 调用提示id为 400194 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400194) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为1
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115019(context, evt)
	-- 调用提示id为 400192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为2
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115020(context, evt)
	-- 调用提示id为 400193 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115021(context, evt)
	-- 调用提示id为 400194 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400194) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115022(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115022(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115023(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115023(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115024(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304115, 115007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115024(context, evt)
	-- 针对当前group内变量名为 "FOOD" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FOOD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为1
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115025(context, evt)
	-- 调用提示id为 400192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为2
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115026(context, evt)
	-- 调用提示id为 400193 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400193) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115027(context, evt)
	-- 调用提示id为 400194 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400194) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_115030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FOOD"为3
	if ScriptLib.GetGroupVariableValue(context, "FOOD") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_115030(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300406") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end