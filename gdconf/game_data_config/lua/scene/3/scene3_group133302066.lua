-- 基础信息
local base_info = {
	group_id = 133302066
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
	{ config_id = 66001, gadget_id = 70500000, pos = { x = -346.733, y = 120.464, z = 2254.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9300, area_id = 24 },
	{ config_id = 66003, gadget_id = 70310217, pos = { x = -241.470, y = 102.229, z = 2222.638 }, rot = { x = 0.000, y = 269.560, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 66007, gadget_id = 70310217, pos = { x = -264.264, y = 103.041, z = 2214.436 }, rot = { x = 7.112, y = 297.412, z = 345.975 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 66008, gadget_id = 70310217, pos = { x = -266.384, y = 103.751, z = 2219.682 }, rot = { x = 4.364, y = 213.933, z = 9.797 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 66010, gadget_id = 70360365, pos = { x = -346.733, y = 120.464, z = 2254.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 66005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -266.006, y = 103.497, z = 2220.314 }, area_id = 24 },
	{ config_id = 66006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -241.470, y = 102.229, z = 2222.638 }, area_id = 24 },
	{ config_id = 66009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -263.692, y = 102.890, z = 2214.239 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1066005, name = "ENTER_REGION_66005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66005", action = "action_EVENT_ENTER_REGION_66005" },
	{ config_id = 1066006, name = "ENTER_REGION_66006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66006", action = "action_EVENT_ENTER_REGION_66006" },
	{ config_id = 1066009, name = "ENTER_REGION_66009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_66009", action = "action_EVENT_ENTER_REGION_66009" },
	{ config_id = 1066011, name = "GADGET_STATE_CHANGE_66011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66011", action = "action_EVENT_GADGET_STATE_CHANGE_66011" },
	{ config_id = 1066012, name = "GADGET_STATE_CHANGE_66012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66012", action = "action_EVENT_GADGET_STATE_CHANGE_66012" },
	{ config_id = 1066013, name = "GADGET_STATE_CHANGE_66013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66013", action = "action_EVENT_GADGET_STATE_CHANGE_66013" },
	{ config_id = 1066014, name = "VARIABLE_CHANGE_66014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66014", action = "action_EVENT_VARIABLE_CHANGE_66014" },
	{ config_id = 1066015, name = "VARIABLE_CHANGE_66015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66015", action = "action_EVENT_VARIABLE_CHANGE_66015" },
	{ config_id = 1066016, name = "VARIABLE_CHANGE_66016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66016", action = "action_EVENT_VARIABLE_CHANGE_66016" },
	{ config_id = 1066021, name = "QUEST_FINISH_66021", event = EventType.EVENT_QUEST_FINISH, source = "7306117", condition = "", action = "action_EVENT_QUEST_FINISH_66021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
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
		gadgets = { 66001, 66003, 66007, 66008, 66010 },
		regions = { 66005, 66006, 66009 },
		triggers = { "ENTER_REGION_66005", "ENTER_REGION_66006", "ENTER_REGION_66009", "GADGET_STATE_CHANGE_66011", "GADGET_STATE_CHANGE_66012", "GADGET_STATE_CHANGE_66013", "VARIABLE_CHANGE_66014", "VARIABLE_CHANGE_66015", "VARIABLE_CHANGE_66016", "QUEST_FINISH_66021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_66005(context, evt)
	if evt.param1 ~= 66005 then return false end
	
	-- 判断是区域66005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66005(context, evt)
	-- 调用提示id为 60010406 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66006(context, evt)
	if evt.param1 ~= 66006 then return false end
	
	-- 判断是区域66006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66006(context, evt)
	-- 调用提示id为 60010404 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010404) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_66009(context, evt)
	if evt.param1 ~= 66009 then return false end
	
	-- 判断是区域66009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 66009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_66009(context, evt)
	-- 调用提示id为 60010405 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010405) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66011(context, evt)
	if 66003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66011(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66012(context, evt)
	if 66007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66012(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66013(context, evt)
	if 66008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66013(context, evt)
	-- 针对当前group内变量名为 "unlock" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "unlock", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为1
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66014(context, evt)
	-- 将configid为 66010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66015(context, evt)
	-- 将configid为 66010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock"为3
	if ScriptLib.GetGroupVariableValue(context, "unlock") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66016(context, evt)
	-- 将configid为 66010 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66010, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302066, EntityType.GADGET, 66010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302066, EntityType.GADGET, 66001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_66021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302066, EntityType.GADGET, 66010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302066, EntityType.GADGET, 66001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"