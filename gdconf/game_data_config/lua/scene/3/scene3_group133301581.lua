-- 基础信息
local base_info = {
	group_id = 133301581
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581003, monster_id = 22010101, pos = { x = -759.191, y = 155.241, z = 4039.001 }, rot = { x = 0.000, y = 4.230, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581006, monster_id = 22010101, pos = { x = -590.261, y = 163.558, z = 4052.669 }, rot = { x = 0.000, y = 346.321, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581009, monster_id = 22010101, pos = { x = -688.597, y = 134.706, z = 4079.804 }, rot = { x = 0.000, y = 348.934, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581012, monster_id = 22030202, pos = { x = -722.758, y = 118.169, z = 4034.926 }, rot = { x = 0.000, y = 341.029, z = 0.000 }, level = 33, drop_tag = "深渊使徒", disableWander = true, isOneoff = true, pose_id = 101, area_id = 25 },
	{ config_id = 581022, monster_id = 22010101, pos = { x = -688.966, y = 137.099, z = 3754.013 }, rot = { x = 0.000, y = 217.386, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581023, monster_id = 22010101, pos = { x = -621.129, y = 127.869, z = 3773.364 }, rot = { x = 0.000, y = 89.069, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581024, monster_id = 22010101, pos = { x = -560.134, y = 152.548, z = 3839.675 }, rot = { x = 0.000, y = 54.799, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 },
	{ config_id = 581025, monster_id = 22010101, pos = { x = -651.522, y = 141.689, z = 3946.477 }, rot = { x = 0.000, y = 92.500, z = 0.000 }, level = 33, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 581001, gadget_id = 70300085, pos = { x = -759.010, y = 154.967, z = 4042.018 }, rot = { x = 358.418, y = 110.151, z = 358.812 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581002, gadget_id = 70300107, pos = { x = -758.726, y = 155.440, z = 4042.587 }, rot = { x = 358.637, y = 106.629, z = 353.970 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581004, gadget_id = 70300085, pos = { x = -690.075, y = 136.931, z = 3752.469 }, rot = { x = 0.759, y = 257.681, z = 0.867 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581005, gadget_id = 70300107, pos = { x = -690.131, y = 137.375, z = 3752.044 }, rot = { x = 9.857, y = 105.270, z = 20.223 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581007, gadget_id = 70300085, pos = { x = -688.531, y = 134.464, z = 4081.516 }, rot = { x = 359.759, y = 62.311, z = 351.834 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581008, gadget_id = 70300107, pos = { x = -688.628, y = 134.999, z = 4082.033 }, rot = { x = 357.472, y = 263.708, z = 7.498 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581013, gadget_id = 70300107, pos = { x = -558.426, y = 153.270, z = 3840.701 }, rot = { x = 354.691, y = 155.029, z = 339.723 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581014, gadget_id = 70300085, pos = { x = -558.486, y = 152.731, z = 3840.372 }, rot = { x = 343.187, y = 116.157, z = 347.299 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581015, gadget_id = 70300107, pos = { x = -589.846, y = 163.777, z = 4054.765 }, rot = { x = 3.383, y = 152.539, z = 354.752 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581016, gadget_id = 70300085, pos = { x = -589.930, y = 163.279, z = 4054.440 }, rot = { x = 357.539, y = 95.120, z = 354.066 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581018, gadget_id = 70300085, pos = { x = -619.585, y = 127.830, z = 3773.226 }, rot = { x = 1.747, y = 179.854, z = 343.467 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581019, gadget_id = 70300107, pos = { x = -619.233, y = 128.408, z = 3773.104 }, rot = { x = 343.658, y = 84.691, z = 359.929 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581020, gadget_id = 70300085, pos = { x = -649.822, y = 141.358, z = 3946.060 }, rot = { x = 1.034, y = 175.546, z = 349.605 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 581021, gadget_id = 70300107, pos = { x = -649.398, y = 141.893, z = 3945.997 }, rot = { x = 1.694, y = 181.523, z = 348.509 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581026, gadget_id = 70211031, pos = { x = -723.852, y = 118.168, z = 4039.904 }, rot = { x = 1.344, y = 158.730, z = 358.517 }, level = 26, drop_tag = "战斗超级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 581027, gadget_id = 70300107, pos = { x = -758.726, y = 155.440, z = 4042.587 }, rot = { x = 358.637, y = 106.629, z = 353.970 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581028, gadget_id = 70300107, pos = { x = -690.131, y = 137.375, z = 3752.044 }, rot = { x = 9.857, y = 105.270, z = 20.223 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581029, gadget_id = 70300107, pos = { x = -688.628, y = 134.999, z = 4082.033 }, rot = { x = 357.472, y = 263.708, z = 7.498 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581030, gadget_id = 70300107, pos = { x = -558.426, y = 153.270, z = 3840.701 }, rot = { x = 354.691, y = 155.029, z = 339.723 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581031, gadget_id = 70300107, pos = { x = -589.846, y = 163.777, z = 4054.765 }, rot = { x = 3.383, y = 152.539, z = 354.752 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581032, gadget_id = 70300107, pos = { x = -619.233, y = 128.408, z = 3773.104 }, rot = { x = 343.658, y = 84.691, z = 359.929 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 581033, gadget_id = 70300107, pos = { x = -649.398, y = 141.893, z = 3945.997 }, rot = { x = 1.694, y = 181.523, z = 348.509 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1581010, name = "QUEST_FINISH_581010", event = EventType.EVENT_QUEST_FINISH, source = "7303709", condition = "", action = "action_EVENT_QUEST_FINISH_581010", trigger_count = 0 },
	{ config_id = 1581011, name = "ANY_MONSTER_DIE_581011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_581011", action = "action_EVENT_ANY_MONSTER_DIE_581011", trigger_count = 0 },
	-- 变量=1
	{ config_id = 1581034, name = "VARIABLE_CHANGE_581034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581034", action = "action_EVENT_VARIABLE_CHANGE_581034" },
	-- 变量=2
	{ config_id = 1581035, name = "VARIABLE_CHANGE_581035", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581035", action = "action_EVENT_VARIABLE_CHANGE_581035" },
	-- 变量=3
	{ config_id = 1581036, name = "VARIABLE_CHANGE_581036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581036", action = "action_EVENT_VARIABLE_CHANGE_581036" },
	-- 变量=4
	{ config_id = 1581037, name = "VARIABLE_CHANGE_581037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581037", action = "action_EVENT_VARIABLE_CHANGE_581037" },
	-- 变量=5
	{ config_id = 1581038, name = "VARIABLE_CHANGE_581038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581038", action = "action_EVENT_VARIABLE_CHANGE_581038" },
	-- 变量=6
	{ config_id = 1581039, name = "VARIABLE_CHANGE_581039", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581039", action = "action_EVENT_VARIABLE_CHANGE_581039" },
	-- 变量=7
	{ config_id = 1581040, name = "VARIABLE_CHANGE_581040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_581040", action = "action_EVENT_VARIABLE_CHANGE_581040" },
	-- 灭火1
	{ config_id = 1581041, name = "GADGET_STATE_CHANGE_581041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581041", action = "action_EVENT_GADGET_STATE_CHANGE_581041" },
	-- 灭火2
	{ config_id = 1581042, name = "GADGET_STATE_CHANGE_581042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581042", action = "action_EVENT_GADGET_STATE_CHANGE_581042" },
	-- 灭火3
	{ config_id = 1581043, name = "GADGET_STATE_CHANGE_581043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581043", action = "action_EVENT_GADGET_STATE_CHANGE_581043" },
	-- 灭火4
	{ config_id = 1581044, name = "GADGET_STATE_CHANGE_581044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581044", action = "action_EVENT_GADGET_STATE_CHANGE_581044" },
	-- 灭火5
	{ config_id = 1581045, name = "GADGET_STATE_CHANGE_581045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581045", action = "action_EVENT_GADGET_STATE_CHANGE_581045" },
	-- 灭火6
	{ config_id = 1581046, name = "GADGET_STATE_CHANGE_581046", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581046", action = "action_EVENT_GADGET_STATE_CHANGE_581046" },
	-- 灭火7
	{ config_id = 1581047, name = "GADGET_STATE_CHANGE_581047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581047", action = "action_EVENT_GADGET_STATE_CHANGE_581047" },
	{ config_id = 1581048, name = "GROUP_LOAD_581048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581048", action = "action_EVENT_GROUP_LOAD_581048", trigger_count = 0 },
	{ config_id = 1581049, name = "GROUP_LOAD_581049", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_581049", action = "action_EVENT_GROUP_LOAD_581049", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1581017, name = "GADGET_STATE_CHANGE_581017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_581017", action = "action_EVENT_GADGET_STATE_CHANGE_581017" }
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
	end_suite = 2,
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
		gadgets = { 581001, 581004, 581007, 581014, 581016, 581018, 581020, 581027, 581028, 581029, 581030, 581031, 581032, 581033 },
		regions = { },
		triggers = { "QUEST_FINISH_581010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 581003, 581006, 581009, 581022, 581023, 581024, 581025 },
		gadgets = { 581001, 581002, 581004, 581005, 581007, 581008, 581013, 581014, 581015, 581016, 581018, 581019, 581020, 581021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_581011", "VARIABLE_CHANGE_581034", "VARIABLE_CHANGE_581035", "VARIABLE_CHANGE_581036", "VARIABLE_CHANGE_581037", "VARIABLE_CHANGE_581038", "VARIABLE_CHANGE_581039", "VARIABLE_CHANGE_581040", "GADGET_STATE_CHANGE_581041", "GADGET_STATE_CHANGE_581042", "GADGET_STATE_CHANGE_581043", "GADGET_STATE_CHANGE_581044", "GADGET_STATE_CHANGE_581045", "GADGET_STATE_CHANGE_581046", "GADGET_STATE_CHANGE_581047", "GROUP_LOAD_581048", "GROUP_LOAD_581049" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_581010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301581, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_581011(context, evt)
	--判断死亡怪物的configid是否为 581012
	if evt.param1 ~= 581012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_581011(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为581026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6089, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 调用提示id为 33010214 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581034(context, evt)
	-- 调用提示id为 33010200 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010200) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581035(context, evt)
	-- 调用提示id为 -993947195 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -993947195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581036(context, evt)
	-- 调用提示id为 33010202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581037(context, evt)
	-- 调用提示id为 33010206 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010206) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为5
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581038(context, evt)
	-- 调用提示id为 33010208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为6
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581039(context, evt)
	-- 调用提示id为 33010209 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_581040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为7
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_581040(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 581012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 33010211 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581041(context, evt)
	if 581002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581041(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581042(context, evt)
	if 581005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581042(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581043(context, evt)
	if 581008 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581043(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581044(context, evt)
	if 581013 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581044(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581045(context, evt)
	if 581015 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581045(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581046(context, evt)
	if 581019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581046(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_581047(context, evt)
	if 581021 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_581047(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581048(context, evt)
	-- 判断变量"count"为7
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581048(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 581012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_581049(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_581049(context, evt)
	-- 创建id为581026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 581026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6089, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end