-- 基础信息
local base_info = {
	group_id = 199002167
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
	{ config_id = 167001, gadget_id = 70310175, pos = { x = 459.714, y = 112.109, z = -453.768 }, rot = { x = 343.715, y = 157.734, z = 15.729 }, level = 1, state = GadgetState.GearStop, is_use_point_array = true, area_id = 401 },
	{ config_id = 167003, gadget_id = 70360001, pos = { x = 463.602, y = 115.016, z = -452.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 424 } }, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 167002, shape = RegionShape.SPHERE, radius = 7, pos = { x = 463.036, y = 111.154, z = -452.954 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1167002, name = "ENTER_REGION_167002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_167002", action = "action_EVENT_ENTER_REGION_167002", trigger_count = 0 },
	{ config_id = 1167004, name = "SELECT_OPTION_167004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_167004", action = "action_EVENT_SELECT_OPTION_167004", trigger_count = 0 },
	{ config_id = 1167005, name = "TIME_AXIS_PASS_167005", event = EventType.EVENT_TIME_AXIS_PASS, source = "1", condition = "condition_EVENT_TIME_AXIS_PASS_167005", action = "action_EVENT_TIME_AXIS_PASS_167005", trigger_count = 0 },
	{ config_id = 1167006, name = "TIME_AXIS_PASS_167006", event = EventType.EVENT_TIME_AXIS_PASS, source = "2", condition = "condition_EVENT_TIME_AXIS_PASS_167006", action = "action_EVENT_TIME_AXIS_PASS_167006", trigger_count = 0 },
	{ config_id = 1167007, name = "GROUP_LOAD_167007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167007", action = "action_EVENT_GROUP_LOAD_167007", trigger_count = 0 },
	{ config_id = 1167008, name = "GROUP_LOAD_167008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167008", action = "action_EVENT_GROUP_LOAD_167008", trigger_count = 0 },
	{ config_id = 1167009, name = "GROUP_LOAD_167009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167009", action = "action_EVENT_GROUP_LOAD_167009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "reminder1", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder2", value = 0, no_refresh = true }
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
		gadgets = { 167001, 167003 },
		regions = { 167002 },
		triggers = { "ENTER_REGION_167002", "SELECT_OPTION_167004", "TIME_AXIS_PASS_167005", "TIME_AXIS_PASS_167006", "GROUP_LOAD_167007", "GROUP_LOAD_167008", "GROUP_LOAD_167009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_167002(context, evt)
	if evt.param1 ~= 167002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"reminder2"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 0 then
			return false
	end
	
	-- 判断变量"reminder1"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_167002(context, evt)
	-- 将本组内变量名为 "reminder1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 1111344 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111344) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 167001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_167004(context, evt)
	-- 判断是gadgetid 167003 option_id 424
	if 167003 ~= evt.param1 then
		return false	
	end
	
	if 424 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_167004(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 199002101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组199002116中， configid为116003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002116, 116003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "reminder2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 167001, 900200132, {2,3,4,5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002167, EntityType.GADGET, 167003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将configid为 167001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1111346 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111346) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"2"，时间节点为{4}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "2", {4}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167005(context, evt)
	if "1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_167005(context, evt)
	-- 将本组内变量名为 "reminder1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 167001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_167006(context, evt)
	if "2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_167006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 167001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_167007(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167007(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 199002101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "reminder2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002167, EntityType.GADGET, 167001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_167008(context, evt)
	-- 判断变量"reminder2"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167008(context, evt)
	-- 将本组内变量名为 "reminder1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_167009(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002167, EntityType.GADGET, 167003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end