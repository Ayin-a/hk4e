-- 基础信息
local base_info = {
	group_id = 133210302
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
	{ config_id = 302002, gadget_id = 70211131, pos = { x = -3845.175, y = 255.613, z = -511.142 }, rot = { x = 8.672, y = 167.373, z = 359.340 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1302001, name = "VARIABLE_CHANGE_302001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302001", action = "action_EVENT_VARIABLE_CHANGE_302001", trigger_count = 0 },
	{ config_id = 1302003, name = "GROUP_LOAD_302003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_302003", action = "action_EVENT_GROUP_LOAD_302003", trigger_count = 0 },
	-- 完成reminder+注目
	{ config_id = 1302004, name = "VARIABLE_CHANGE_302004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302004", action = "action_EVENT_VARIABLE_CHANGE_302004", trigger_count = 0 },
	-- 完成reminder+注目（Backup）
	{ config_id = 1302005, name = "GROUP_LOAD_302005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_302005", action = "action_EVENT_GROUP_LOAD_302005", trigger_count = 0 },
	{ config_id = 1302006, name = "GADGET_STATE_CHANGE_302006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_302006", action = "action_EVENT_GADGET_STATE_CHANGE_302006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetArrive1", value = 0, no_refresh = true },
	{ config_id = 2, name = "GadgetArrive2", value = 0, no_refresh = true },
	{ config_id = 3, name = "Talked", value = 0, no_refresh = true },
	{ config_id = 4, name = "RemindTalked", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 302007, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3845.433, y = 255.541, z = -510.821 }, area_id = 17 },
		{ config_id = 302009, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3845.433, y = 255.541, z = -510.821 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1302007, name = "ENTER_REGION_302007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302007", action = "action_EVENT_ENTER_REGION_302007" },
		{ config_id = 1302008, name = "VARIABLE_CHANGE_302008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302008", action = "action_EVENT_VARIABLE_CHANGE_302008" },
		{ config_id = 1302009, name = "ENTER_REGION_302009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302009", action = "action_EVENT_ENTER_REGION_302009" },
		{ config_id = 1302010, name = "VARIABLE_CHANGE_302010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302010", action = "action_EVENT_VARIABLE_CHANGE_302010" },
		{ config_id = 1302011, name = "VARIABLE_CHANGE_302011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_302011", action = "action_EVENT_VARIABLE_CHANGE_302011" }
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
	end_suite = 3,
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_302001", "GROUP_LOAD_302003", "VARIABLE_CHANGE_302004", "GROUP_LOAD_302005", "GADGET_STATE_CHANGE_302006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 302002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_VARIABLE_CHANGE_302001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetArrive1"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive1") ~= 1 then
			return false
	end
	
	-- 判断变量"GadgetArrive2"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_302001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210302, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_302003(context, evt)
	-- 判断变量"GadgetArrive1"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive1") ~= 1 then
			return false
	end
	
	-- 判断变量"GadgetArrive2"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_302003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210302, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_302004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetArrive1"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive1") ~= 1 then
			return false
	end
	
	-- 判断变量"GadgetArrive2"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive2") ~= 1 then
			return false
	end
	
	-- 判断变量"Talked"为0
	if ScriptLib.GetGroupVariableValue(context, "Talked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_302004(context, evt)
	-- 将本组内变量名为 "Talked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Talked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3845.176，255.6137，-511.1426），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3845.176, y=255.6137, z=-511.1426}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 32100192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_302005(context, evt)
	-- 判断变量"GadgetArrive1"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive1") ~= 1 then
			return false
	end
	
	-- 判断变量"GadgetArrive2"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetArrive2") ~= 1 then
			return false
	end
	
	-- 判断变量"Talked"为0
	if ScriptLib.GetGroupVariableValue(context, "Talked") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_302005(context, evt)
	-- 将本组内变量名为 "Talked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Talked", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3845.176，255.6137，-511.1426），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3845.176, y=255.6137, z=-511.1426}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 32100192 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100192) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_302006(context, evt)
	if 302002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_302006(context, evt)
	-- 将本组内变量名为 "AllSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AllSuccess", 1, 133210485) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "AllSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AllSuccess", 1, 133210300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "AllSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "AllSuccess", 1, 133210301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133210302, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end