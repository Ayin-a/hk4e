-- 基础信息
local base_info = {
	group_id = 133220110
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
	-- 沙堆2
	{ config_id = 110002, gadget_id = 70360001, pos = { x = -2343.903, y = 200.249, z = -4166.873 }, rot = { x = 2.226, y = 0.200, z = 5.136 }, level = 27, area_id = 11 },
	-- 沙堆1
	{ config_id = 110005, gadget_id = 70360001, pos = { x = -2342.086, y = 200.131, z = -4160.030 }, rot = { x = 1.873, y = 0.165, z = 5.696 }, level = 27, area_id = 11 },
	-- 沙滩3
	{ config_id = 110007, gadget_id = 70360001, pos = { x = -2348.344, y = 200.041, z = -4173.036 }, rot = { x = 2.226, y = 0.200, z = 5.136 }, level = 27, area_id = 11 },
	-- 沙滩4
	{ config_id = 110011, gadget_id = 70360001, pos = { x = -2350.752, y = 200.000, z = -4163.080 }, rot = { x = 2.226, y = 0.200, z = 5.136 }, level = 27, area_id = 11 },
	-- 沙堆1表现
	{ config_id = 110018, gadget_id = 70710289, pos = { x = -2342.146, y = 200.231, z = -4159.947 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 27, area_id = 11 },
	-- 沙堆2表现
	{ config_id = 110019, gadget_id = 70710289, pos = { x = -2343.853, y = 200.245, z = -4167.039 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 27, area_id = 11 },
	-- 沙堆3表现
	{ config_id = 110020, gadget_id = 70710289, pos = { x = -2348.474, y = 200.012, z = -4173.021 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 27, area_id = 11 },
	-- 沙堆4表现
	{ config_id = 110021, gadget_id = 70710289, pos = { x = -2350.950, y = 199.953, z = -4163.083 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 110010, shape = RegionShape.SPHERE, radius = 18, pos = { x = -2346.949, y = 200.216, z = -4166.207 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 第2个沙堆上选项
	{ config_id = 1110001, name = "GADGET_CREATE_110001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110001", action = "action_EVENT_GADGET_CREATE_110001", trigger_count = 0 },
	-- 第1个沙堆上选项
	{ config_id = 1110003, name = "GADGET_CREATE_110003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110003", action = "action_EVENT_GADGET_CREATE_110003", trigger_count = 0 },
	-- 第2个沙堆上选项
	{ config_id = 1110004, name = "SELECT_OPTION_110004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110004", action = "action_EVENT_SELECT_OPTION_110004" },
	-- 第1个沙堆上选项
	{ config_id = 1110006, name = "SELECT_OPTION_110006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110006", action = "action_EVENT_SELECT_OPTION_110006" },
	-- 第3个沙堆上选项
	{ config_id = 1110008, name = "SELECT_OPTION_110008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110008", action = "action_EVENT_SELECT_OPTION_110008" },
	-- 第3个沙堆上选项
	{ config_id = 1110009, name = "GADGET_CREATE_110009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110009", action = "action_EVENT_GADGET_CREATE_110009", trigger_count = 0 },
	{ config_id = 1110010, name = "ENTER_REGION_110010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110010", action = "action_EVENT_ENTER_REGION_110010" },
	-- 第4个沙堆上选项
	{ config_id = 1110012, name = "GADGET_CREATE_110012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_110012", action = "action_EVENT_GADGET_CREATE_110012", trigger_count = 0 },
	-- 第4个沙堆上选项
	{ config_id = 1110013, name = "SELECT_OPTION_110013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_110013", action = "action_EVENT_SELECT_OPTION_110013" },
	-- 挖了沙堆4
	{ config_id = 1110014, name = "VARIABLE_CHANGE_110014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_110014", action = "action_EVENT_VARIABLE_CHANGE_110014" },
	-- 挖了沙堆1
	{ config_id = 1110015, name = "VARIABLE_CHANGE_110015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_110015", action = "action_EVENT_VARIABLE_CHANGE_110015" },
	-- 挖了沙堆2
	{ config_id = 1110016, name = "VARIABLE_CHANGE_110016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_110016", action = "action_EVENT_VARIABLE_CHANGE_110016" },
	-- 挖了沙堆3
	{ config_id = 1110017, name = "VARIABLE_CHANGE_110017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_110017", action = "action_EVENT_VARIABLE_CHANGE_110017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 110002, 110005, 110007, 110011, 110018, 110019, 110020, 110021 },
		regions = { 110010 },
		triggers = { "GADGET_CREATE_110001", "GADGET_CREATE_110003", "SELECT_OPTION_110004", "SELECT_OPTION_110006", "SELECT_OPTION_110008", "GADGET_CREATE_110009", "ENTER_REGION_110010", "GADGET_CREATE_110012", "SELECT_OPTION_110013", "VARIABLE_CHANGE_110014", "VARIABLE_CHANGE_110015", "VARIABLE_CHANGE_110016", "VARIABLE_CHANGE_110017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_110001(context, evt)
	if 110002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110001(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220110, 110002, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_110003(context, evt)
	if 110005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220110, 110005, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110004(context, evt)
	-- 判断是gadgetid 110002 option_id 169
	if 110002 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110004(context, evt)
	-- 删除指定group： 133220110 ；指定config：110002；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220110, 110002, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 110019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110006(context, evt)
	-- 判断是gadgetid 110005 option_id 169
	if 110005 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110006(context, evt)
	-- 删除指定group： 133220110 ；指定config：110005；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220110, 110005, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 110018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110008(context, evt)
	-- 判断是gadgetid 110007 option_id 169
	if 110007 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110008(context, evt)
	-- 删除指定group： 133220110 ；指定config：110007；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220110, 110007, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 110020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_110009(context, evt)
	if 110007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220110, 110007, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_110010(context, evt)
	if evt.param1 ~= 110010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110010(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2346,y=200,z=-4166}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210902, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_110012(context, evt)
	if 110011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_110012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220110, 110011, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_110013(context, evt)
	-- 判断是gadgetid 110011 option_id 169
	if 110011 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_110013(context, evt)
	-- 删除指定group： 133220110 ；指定config：110011；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220110, 110011, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 110021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 110021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_110014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为4
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_110014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2347,y=200,z=-4163}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210908, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_110015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_110015(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2347,y=200,z=-4163}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210905, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_110016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为2
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_110016(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2347,y=200,z=-4163}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210906, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_110017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_110017(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2347,y=200,z=-4163}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 7210907, pos, 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end