-- 基础信息
local base_info = {
	group_id = 133102249
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249012, monster_id = 21011201, pos = { x = 1524.168, y = 241.667, z = 640.451 }, rot = { x = 0.000, y = 5.326, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 },
	{ config_id = 249013, monster_id = 21011201, pos = { x = 1522.153, y = 242.937, z = 643.739 }, rot = { x = 0.000, y = 120.713, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 },
	{ config_id = 249014, monster_id = 21011201, pos = { x = 1527.676, y = 242.994, z = 647.285 }, rot = { x = 0.000, y = 182.717, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 },
	{ config_id = 249015, monster_id = 21011201, pos = { x = 1527.472, y = 241.282, z = 642.593 }, rot = { x = 0.000, y = 288.435, z = 0.000 }, level = 18, drop_tag = "丘丘人", pose_id = 9012, area_id = 5 },
	{ config_id = 249017, monster_id = 20011501, pos = { x = 1513.958, y = 233.074, z = 538.836 }, rot = { x = 0.000, y = 133.869, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 5 },
	{ config_id = 249018, monster_id = 20011401, pos = { x = 1512.113, y = 233.090, z = 537.506 }, rot = { x = 0.000, y = 74.354, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 249019, monster_id = 20011401, pos = { x = 1514.798, y = 233.237, z = 540.968 }, rot = { x = 0.000, y = 124.651, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 249020, monster_id = 20011401, pos = { x = 1515.497, y = 233.076, z = 537.576 }, rot = { x = 0.000, y = 96.799, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 249001, gadget_id = 70710094, pos = { x = 1524.837, y = 243.212, z = 648.196 }, rot = { x = 356.932, y = 155.911, z = 2.871 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 249002, gadget_id = 70710094, pos = { x = 1513.718, y = 233.211, z = 535.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 249003, gadget_id = 70710094, pos = { x = 1446.222, y = 227.893, z = 580.849 }, rot = { x = 0.000, y = 125.836, z = 0.000 }, level = 18, persistent = true, area_id = 5 },
	{ config_id = 249024, gadget_id = 70211121, pos = { x = 1504.754, y = 221.769, z = 587.798 }, rot = { x = 0.000, y = 224.150, z = 0.000 }, level = 16, chest_drop_id = 1011600, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 249016, shape = RegionShape.SPHERE, radius = 4.7, pos = { x = 1514.124, y = 234.031, z = 538.764 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1249004, name = "GADGET_CREATE_249004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_249004", action = "action_EVENT_GADGET_CREATE_249004", trigger_count = 0 },
	{ config_id = 1249005, name = "GADGET_CREATE_249005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_249005", action = "action_EVENT_GADGET_CREATE_249005", trigger_count = 0 },
	{ config_id = 1249006, name = "GADGET_CREATE_249006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_249006", action = "action_EVENT_GADGET_CREATE_249006", trigger_count = 0 },
	{ config_id = 1249007, name = "GADGET_STATE_CHANGE_249007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249007", action = "action_EVENT_GADGET_STATE_CHANGE_249007" },
	{ config_id = 1249008, name = "GADGET_STATE_CHANGE_249008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249008", action = "action_EVENT_GADGET_STATE_CHANGE_249008" },
	{ config_id = 1249009, name = "GADGET_STATE_CHANGE_249009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_249009", action = "action_EVENT_GADGET_STATE_CHANGE_249009" },
	{ config_id = 1249010, name = "VARIABLE_CHANGE_249010", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_249010", action = "action_EVENT_VARIABLE_CHANGE_249010" },
	{ config_id = 1249011, name = "SELECT_OPTION_249011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_249011", action = "action_EVENT_SELECT_OPTION_249011", trigger_count = 0 },
	{ config_id = 1249016, name = "ENTER_REGION_249016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_249016", action = "action_EVENT_ENTER_REGION_249016" },
	{ config_id = 1249021, name = "ANY_MONSTER_DIE_249021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_249021", action = "action_EVENT_ANY_MONSTER_DIE_249021", trigger_count = 4 },
	{ config_id = 1249022, name = "VARIABLE_CHANGE_249022", event = EventType.EVENT_VARIABLE_CHANGE, source = "count_2", condition = "condition_EVENT_VARIABLE_CHANGE_249022", action = "action_EVENT_VARIABLE_CHANGE_249022" },
	{ config_id = 1249023, name = "SELECT_OPTION_249023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_249023", action = "action_EVENT_SELECT_OPTION_249023", trigger_count = 0 },
	{ config_id = 1249025, name = "SELECT_OPTION_249025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_249025", action = "action_EVENT_SELECT_OPTION_249025", trigger_count = 0 },
	{ config_id = 1249029, name = "VARIABLE_CHANGE_249029", event = EventType.EVENT_VARIABLE_CHANGE, source = "sequence", condition = "condition_EVENT_VARIABLE_CHANGE_249029", action = "action_EVENT_VARIABLE_CHANGE_249029" },
	{ config_id = 1249030, name = "VARIABLE_CHANGE_249030", event = EventType.EVENT_VARIABLE_CHANGE, source = "sequence", condition = "condition_EVENT_VARIABLE_CHANGE_249030", action = "action_EVENT_VARIABLE_CHANGE_249030" },
	{ config_id = 1249031, name = "VARIABLE_CHANGE_249031", event = EventType.EVENT_VARIABLE_CHANGE, source = "sequence", condition = "condition_EVENT_VARIABLE_CHANGE_249031", action = "action_EVENT_VARIABLE_CHANGE_249031" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true },
	{ config_id = 2, name = "count_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "open", value = 0, no_refresh = true },
	{ config_id = 4, name = "end", value = 0, no_refresh = true },
	{ config_id = 5, name = "sequence", value = 0, no_refresh = true }
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
		monsters = { 249012, 249013, 249014, 249015 },
		gadgets = { 249001, 249002, 249003 },
		regions = { 249016 },
		triggers = { "GADGET_CREATE_249004", "GADGET_CREATE_249005", "GADGET_CREATE_249006", "GADGET_STATE_CHANGE_249007", "GADGET_STATE_CHANGE_249008", "GADGET_STATE_CHANGE_249009", "VARIABLE_CHANGE_249010", "SELECT_OPTION_249011", "ENTER_REGION_249016", "ANY_MONSTER_DIE_249021", "VARIABLE_CHANGE_249022", "SELECT_OPTION_249023", "SELECT_OPTION_249025", "VARIABLE_CHANGE_249029", "VARIABLE_CHANGE_249030", "VARIABLE_CHANGE_249031" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_GADGET_CREATE_249004(context, evt)
	if 249001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_249004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_249005(context, evt)
	if 249002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_249005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_249006(context, evt)
	if 249003 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"end"为0
	if ScriptLib.GetGroupVariableValue(context, "end") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_249006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249007(context, evt)
	if 249001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249007(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249008(context, evt)
	if 249002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249008(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_249009(context, evt)
	if 249003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_249009(context, evt)
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249010(context, evt)
	-- 创建id为249024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1505，222，588），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1505, y=222, z=588}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 4,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 针对当前group内变量名为 "end" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "end", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_249011(context, evt)
	-- 判断是gadgetid 249001 option_id 7
	if 249001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_249011(context, evt)
	-- 将configid为 249001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102249 ；指定config：249001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102249, 249001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "sequence" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sequence", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_249016(context, evt)
	if evt.param1 ~= 249016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_249016(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 249020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 249006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_249021(context, evt)
	if evt.param1 == 249017 or evt.param1 == 249018 or evt.param1 == 249019 or evt.param1 == 249020 then
	    return true
	else
		return false
	end
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_249021(context, evt)
	-- 针对当前group内变量名为 "count_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count_2"为4
	if ScriptLib.GetGroupVariableValue(context, "count_2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249022(context, evt)
	-- 将configid为 249006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_249023(context, evt)
	-- 判断是gadgetid 249002 option_id 7
	if 249002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_249023(context, evt)
	-- 将configid为 249002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102249 ；指定config：249002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102249, 249002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "sequence" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sequence", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_249025(context, evt)
	-- 判断是gadgetid 249003 option_id 7
	if 249003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_249025(context, evt)
	-- 将configid为 249003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 249003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133102249 ；指定config：249003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102249, 249003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "sequence" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "sequence", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sequence"为1
	if ScriptLib.GetGroupVariableValue(context, "sequence") ~= 1 then
			return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249029(context, evt)
	-- 调用提示id为 31020851 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020851) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sequence"为2
	if ScriptLib.GetGroupVariableValue(context, "sequence") ~= 2 then
			return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249030(context, evt)
	-- 调用提示id为 31020852 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020852) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sequence"为3
	if ScriptLib.GetGroupVariableValue(context, "sequence") ~= 3 then
			return false
	end
	
	-- 判断变量"open"为0
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_249031(context, evt)
	-- 调用提示id为 31020853 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31020853) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end