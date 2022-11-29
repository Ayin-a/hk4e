-- 基础信息
local base_info = {
	group_id = 220111004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 25050401, pos = { x = 3.388, y = 12.590, z = 100.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4023, monster_id = 25050301, pos = { x = 13.337, y = 15.660, z = 126.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4024, monster_id = 25050301, pos = { x = 17.805, y = 15.660, z = 128.698 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70211011, pos = { x = 5.944, y = 16.540, z = 136.165 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 4003, gadget_id = 70220071, pos = { x = 2.088, y = 12.590, z = 111.206 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70220070, pos = { x = 4.186, y = 12.590, z = 111.988 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70220071, pos = { x = 2.791, y = 12.590, z = 97.817 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 4007, gadget_id = 70220070, pos = { x = 4.752, y = 12.590, z = 96.736 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 4009, gadget_id = 70290136, pos = { x = 22.910, y = 16.081, z = 128.699 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70350293, pos = { x = 3.449, y = 15.694, z = 124.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, interact_id = 43, is_use_point_array = true },
	{ config_id = 4013, gadget_id = 70360280, pos = { x = 8.013, y = 14.015, z = 94.836 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70360280, pos = { x = 8.016, y = 14.015, z = 105.971 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4015, gadget_id = 70360291, pos = { x = -1.795, y = 14.015, z = 94.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70360291, pos = { x = -1.597, y = 14.015, z = 105.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70360283, pos = { x = 4.349, y = 21.439, z = 101.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70360283, pos = { x = 4.349, y = 21.394, z = 110.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70360001, pos = { x = 22.581, y = 17.463, z = 128.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4005, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 5.000 }, pos = { x = 4.153, y = 16.604, z = 89.513 } },
	{ config_id = 4008, shape = RegionShape.SPHERE, radius = 4, pos = { x = 5.791, y = 17.572, z = 128.369 } },
	{ config_id = 4010, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 5.000 }, pos = { x = 4.153, y = 16.604, z = 116.406 } },
	{ config_id = 4016, shape = RegionShape.CUBIC, size = { x = 10.000, y = 4.000, z = 5.500 }, pos = { x = 3.886, y = 13.985, z = 94.830 } },
	{ config_id = 4017, shape = RegionShape.CUBIC, size = { x = 10.000, y = 4.000, z = 5.500 }, pos = { x = 3.886, y = 13.998, z = 105.961 } },
	{ config_id = 4021, shape = RegionShape.CUBIC, size = { x = 5.500, y = 10.000, z = 5.500 }, pos = { x = 4.303, y = 16.523, z = 101.362 } },
	{ config_id = 4022, shape = RegionShape.CUBIC, size = { x = 5.500, y = 10.000, z = 5.500 }, pos = { x = 4.303, y = 17.142, z = 109.853 } },
	{ config_id = 4028, shape = RegionShape.SPHERE, radius = 5, pos = { x = 31.223, y = 18.841, z = 138.743 } }
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "ENTER_REGION_4005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4005", action = "action_EVENT_ENTER_REGION_4005" },
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008" },
	{ config_id = 1004010, name = "ENTER_REGION_4010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4010", action = "action_EVENT_ENTER_REGION_4010" },
	{ config_id = 1004012, name = "GADGET_STATE_CHANGE_4012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4012", action = "action_EVENT_GADGET_STATE_CHANGE_4012", trigger_count = 0 },
	{ config_id = 1004016, name = "ENTER_REGION_4016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4016", action = "action_EVENT_ENTER_REGION_4016", trigger_count = 0, forbid_guest = false },
	{ config_id = 1004017, name = "ENTER_REGION_4017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4017", action = "action_EVENT_ENTER_REGION_4017", trigger_count = 0, forbid_guest = false },
	{ config_id = 1004021, name = "ENTER_REGION_4021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4021", action = "action_EVENT_ENTER_REGION_4021", forbid_guest = false },
	{ config_id = 1004022, name = "ENTER_REGION_4022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4022", action = "action_EVENT_ENTER_REGION_4022", forbid_guest = false },
	{ config_id = 1004025, name = "GADGET_STATE_CHANGE_4025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4025", action = "action_EVENT_GADGET_STATE_CHANGE_4025", trigger_count = 0 },
	{ config_id = 1004026, name = "SELECT_OPTION_4026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4026", action = "action_EVENT_SELECT_OPTION_4026" },
	{ config_id = 1004028, name = "ENTER_REGION_4028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4028", action = "action_EVENT_ENTER_REGION_4028" },
	{ config_id = 1004029, name = "SELECT_OPTION_4029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4029", action = "action_EVENT_SELECT_OPTION_4029" },
	{ config_id = 1004030, name = "SELECT_OPTION_4030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4030", action = "action_EVENT_SELECT_OPTION_4030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wall5", value = 0, no_refresh = false },
	{ config_id = 2, name = "point", value = 0, no_refresh = false }
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
		monsters = { 4002, 4023, 4024 },
		gadgets = { 4001, 4003, 4004, 4006, 4007, 4009, 4011, 4013, 4014, 4015, 4018, 4019, 4020, 4027 },
		regions = { 4005, 4008, 4010, 4016, 4017, 4021, 4022, 4028 },
		triggers = { "ENTER_REGION_4005", "ENTER_REGION_4008", "ENTER_REGION_4010", "GADGET_STATE_CHANGE_4012", "ENTER_REGION_4016", "ENTER_REGION_4017", "ENTER_REGION_4021", "ENTER_REGION_4022", "GADGET_STATE_CHANGE_4025", "SELECT_OPTION_4026", "ENTER_REGION_4028", "SELECT_OPTION_4029", "SELECT_OPTION_4030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4005(context, evt)
	if evt.param1 ~= 4005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4005(context, evt)
	-- 改变指定group组220111004中， configid为4009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111004, 4027, {72}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
	-- 调用提示id为 201110301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4010(context, evt)
	if evt.param1 ~= 4010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4010(context, evt)
	-- 触发镜头注目，注目位置为坐标（4.7，18.15，125.5），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=4.7, y=18.15, z=125.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201110201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201110201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	-- 检测config_id为4011的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为0
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4012(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4011, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4016(context, evt)
	if evt.param1 ~= 4016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4016(context, evt)
	-- 改变指定group组220111004中， configid为4013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4013, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4017(context, evt)
	if evt.param1 ~= 4017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4017(context, evt)
	-- 改变指定group组220111004中， configid为4014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4021(context, evt)
	if evt.param1 ~= 4021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4021(context, evt)
	-- 改变指定group组220111004中， configid为4019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4019, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4022(context, evt)
	if evt.param1 ~= 4022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4022(context, evt)
	-- 改变指定group组220111004中， configid为4020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4025(context, evt)
	-- 检测config_id为4011的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 4011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	-- 判断变量"wall5"为1
	if ScriptLib.GetGroupVariableValue(context, "wall5") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 4011, 2, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "wall5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wall5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4026(context, evt)
	-- 判断是gadgetid 4027 option_id 72
	if 4027 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4026(context, evt)
	-- 改变指定group组220111004中， configid为4009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111004, 4009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220111004 ；指定config：4027；物件身上指定option：72；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111004, 4027, 72) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4028(context, evt)
	if evt.param1 ~= 4028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"point"为0
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4028(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 8)
	
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4029(context, evt)
	-- 判断是gadgetid 4027 option_id 72
	if 4027 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"point"为0
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4029(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 8)
	
	-- 将本组内变量名为 "point" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "point", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4030(context, evt)
	-- 判断是gadgetid 4027 option_id 72
	if 4027 ~= evt.param1 then
		return false	
	end
	
	if 72 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"point"为1
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4030(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 6)
	
	return 0
end