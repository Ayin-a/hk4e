-- 基础信息
local base_info = {
	group_id = 133210211
}

-- Trigger变量
local defs = {
	group_ID = 133210211,
	gadget_11 = 211001,
	gadget_12 = 211002,
	gadget_13 = 211003,
	gadget_14 = 211004,
	gadget_15 = 211005,
	gadget_21 = 211006,
	gadget_22 = 211007,
	gadget_23 = 211008,
	gadget_24 = 211009,
	gadget_25 = 211010,
	gadget_31 = 211011,
	gadget_32 = 211012,
	gadget_33 = 211013,
	gadget_34 = 211014,
	gadget_35 = 211015,
	gadget_41 = 211016,
	gadget_42 = 211017,
	gadget_43 = 211018,
	gadget_44 = 211019,
	gadget_45 = 211020,
	gadget_51 = 211021,
	gadget_52 = 211022,
	gadget_53 = 211023,
	gadget_54 = 211024,
	gadget_55 = 211025,
	trigger_boarder = 211027,
	gadget_starter = 211025,
	gadget_ender = 211013
}

-- DEFS_MISCS
no_reset_onfail = {211008,211016}

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
	{ config_id = 211001, gadget_id = 70360186, pos = { x = -3846.993, y = 199.732, z = -438.872 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211002, gadget_id = 70360186, pos = { x = -3847.869, y = 200.007, z = -440.780 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211003, gadget_id = 70360186, pos = { x = -3848.744, y = 200.311, z = -442.689 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211004, gadget_id = 70360186, pos = { x = -3849.620, y = 200.669, z = -444.598 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211005, gadget_id = 70360186, pos = { x = -3850.495, y = 201.099, z = -446.507 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211006, gadget_id = 70360186, pos = { x = -3848.862, y = 199.755, z = -438.018 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211007, gadget_id = 70360186, pos = { x = -3849.736, y = 200.018, z = -439.926 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211008, gadget_id = 70360186, pos = { x = -3850.612, y = 200.282, z = -441.835 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211009, gadget_id = 70360186, pos = { x = -3851.489, y = 200.604, z = -443.743 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211010, gadget_id = 70360186, pos = { x = -3852.363, y = 200.989, z = -445.652 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211011, gadget_id = 70360186, pos = { x = -3850.751, y = 199.780, z = -437.153 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211012, gadget_id = 70360186, pos = { x = -3851.632, y = 200.138, z = -439.062 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211013, gadget_id = 70360186, pos = { x = -3852.500, y = 200.282, z = -440.971 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211014, gadget_id = 70360186, pos = { x = -3853.376, y = 200.575, z = -442.879 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211015, gadget_id = 70360186, pos = { x = -3854.252, y = 200.925, z = -444.788 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211016, gadget_id = 70360186, pos = { x = -3852.660, y = 199.804, z = -436.280 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211017, gadget_id = 70360186, pos = { x = -3853.534, y = 200.034, z = -438.188 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211018, gadget_id = 70360186, pos = { x = -3854.410, y = 200.298, z = -440.097 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211019, gadget_id = 70360186, pos = { x = -3855.285, y = 200.562, z = -442.006 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211020, gadget_id = 70360186, pos = { x = -3856.162, y = 200.910, z = -443.914 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211021, gadget_id = 70360186, pos = { x = -3854.539, y = 199.876, z = -435.431 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
	{ config_id = 211022, gadget_id = 70360186, pos = { x = -3855.414, y = 200.123, z = -437.339 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211023, gadget_id = 70360186, pos = { x = -3856.290, y = 200.346, z = -439.248 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211024, gadget_id = 70360186, pos = { x = -3857.164, y = 200.550, z = -441.157 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211025, gadget_id = 70360186, pos = { x = -3858.041, y = 200.835, z = -443.066 }, rot = { x = 0.000, y = 24.638, z = 0.000 }, level = 10, area_id = 17 },
	{ config_id = 211026, gadget_id = 70211111, pos = { x = -3850.271, y = 199.416, z = -435.010 }, rot = { x = 354.865, y = 201.482, z = 0.857 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	-- 出界判断用的Trigger
	{ config_id = 211027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = -3852.479, y = 200.258, z = -440.968 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1211028, name = "VARIABLE_CHANGE_211028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_211028", action = "action_EVENT_VARIABLE_CHANGE_211028" },
	-- 玩法第一次失败时提示棚屋
	{ config_id = 1211029, name = "VARIABLE_CHANGE_211029", event = EventType.EVENT_VARIABLE_CHANGE, source = "challenge_state", condition = "condition_EVENT_VARIABLE_CHANGE_211029", action = "action_EVENT_VARIABLE_CHANGE_211029" },
	-- 解谜环开始时开启起点
	{ config_id = 1211030, name = "QUEST_START_211030", event = EventType.EVENT_QUEST_START, source = "7215108", condition = "", action = "action_EVENT_QUEST_START_211030", trigger_count = 0 },
	-- 尊像激活且玩法未开始时切换
	{ config_id = 1211031, name = "VARIABLE_CHANGE_211031", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211031", action = "action_EVENT_VARIABLE_CHANGE_211031", trigger_count = 0 },
	-- 尊像关闭且玩法未开始时切换
	{ config_id = 1211032, name = "VARIABLE_CHANGE_211032", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211032", action = "action_EVENT_VARIABLE_CHANGE_211032", trigger_count = 0 },
	-- 任务开始后，起点创建时改状态
	{ config_id = 1211033, name = "GADGET_CREATE_211033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_211033", action = "action_EVENT_GADGET_CREATE_211033", trigger_count = 0 },
	-- 尊像激活且玩法已开始时切换
	{ config_id = 1211034, name = "VARIABLE_CHANGE_211034", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211034", action = "action_EVENT_VARIABLE_CHANGE_211034", trigger_count = 0 },
	-- 尊像关闭且玩法已开始时切换
	{ config_id = 1211035, name = "VARIABLE_CHANGE_211035", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211035", action = "action_EVENT_VARIABLE_CHANGE_211035", trigger_count = 0 },
	-- 解开棚屋后再次失败时提示
	{ config_id = 1211036, name = "VARIABLE_CHANGE_211036", event = EventType.EVENT_VARIABLE_CHANGE, source = "challenge_state", condition = "condition_EVENT_VARIABLE_CHANGE_211036", action = "action_EVENT_VARIABLE_CHANGE_211036" },
	-- 尊像激活且玩法未开始时切换
	{ config_id = 1211038, name = "VARIABLE_CHANGE_211038", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211038", action = "action_EVENT_VARIABLE_CHANGE_211038", trigger_count = 0 },
	-- 尊像关闭且玩法未开始时切换
	{ config_id = 1211039, name = "VARIABLE_CHANGE_211039", event = EventType.EVENT_VARIABLE_CHANGE, source = "StateChange", condition = "condition_EVENT_VARIABLE_CHANGE_211039", action = "action_EVENT_VARIABLE_CHANGE_211039", trigger_count = 0 },
	-- 玩法失败时根据尊像状态重置——关闭
	{ config_id = 1211040, name = "VARIABLE_CHANGE_211040", event = EventType.EVENT_VARIABLE_CHANGE, source = "challenge_state", condition = "condition_EVENT_VARIABLE_CHANGE_211040", action = "action_EVENT_VARIABLE_CHANGE_211040", trigger_count = 0 },
	-- 玩法失败时根据尊像状态重置——激活
	{ config_id = 1211041, name = "VARIABLE_CHANGE_211041", event = EventType.EVENT_VARIABLE_CHANGE, source = "challenge_state", condition = "condition_EVENT_VARIABLE_CHANGE_211041", action = "action_EVENT_VARIABLE_CHANGE_211041", trigger_count = 0 },
	{ config_id = 1211042, name = "GROUP_LOAD_211042", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_211042", action = "action_EVENT_GROUP_LOAD_211042", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "StateChange", value = 0, no_refresh = true },
	{ config_id = 2, name = "queststart", value = 0, no_refresh = true },
	{ config_id = 3, name = "queststate", value = 0, no_refresh = true },
	{ config_id = 4, name = "Reminder", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1211037, name = "GADGET_CREATE_211037", event = EventType.EVENT_GADGET_CREATE, source = "211025", condition = "condition_EVENT_GADGET_CREATE_211037", action = "action_EVENT_GADGET_CREATE_211037", trigger_count = 0 }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 211001, 211002, 211003, 211004, 211005, 211006, 211007, 211008, 211009, 211010, 211011, 211012, 211013, 211014, 211015, 211016, 211017, 211018, 211019, 211020, 211021, 211022, 211023, 211024, 211025 },
		regions = { 211027 },
		triggers = { "VARIABLE_CHANGE_211029", "QUEST_START_211030", "VARIABLE_CHANGE_211031", "VARIABLE_CHANGE_211032", "GADGET_CREATE_211033", "VARIABLE_CHANGE_211034", "VARIABLE_CHANGE_211035", "VARIABLE_CHANGE_211036", "VARIABLE_CHANGE_211038", "VARIABLE_CHANGE_211039", "VARIABLE_CHANGE_211040", "VARIABLE_CHANGE_211041", "GROUP_LOAD_211042" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 211026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_211028", "GROUP_LOAD_211042" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "queststart" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 32100175 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "success", 1, 133210386) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challenge_state"为3
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 3 then
			return false
	end
	
	-- 判断变量"Reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "Reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211029(context, evt)
	-- 调用提示id为 32100162 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-3877.1，210.1，-449.2），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-3877.1, y=210.1, z=-449.2}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "Reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_211030(context, evt)
	-- 将configid为 211025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "queststart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "queststart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为1
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 1 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211031(context, evt)
	-- 将configid为 211016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为0
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 0 then
			return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211032(context, evt)
	-- 将configid为 211016 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_211033(context, evt)
	if 211025 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"queststart"为1
	if ScriptLib.GetGroupVariableValue(context, "queststart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_211033(context, evt)
	-- 将configid为 211025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为1
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211034(context, evt)
	
	if GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  return -1
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.ChestLocked) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	      return -1
	    end 
	end
	
	if GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action03) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	      return -1
	    end 
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	-- 将configid为 211016 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为0
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211035(context, evt)
	if GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  return -1
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Action03) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	      return -1
	    end 
	end
	
	if GadgetState.GearStop == ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	-- 将configid为 211008 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211016) and GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211008) then
	  if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Action03) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
	      return -1
	    end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"queststate"为1
	if ScriptLib.GetGroupVariableValue(context, "queststate") ~= 1 then
			return false
	end
	
	-- 判断变量"challenge_state"为3
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211036(context, evt)
	-- 调用提示id为 32100174 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为1
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 1 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211038(context, evt)
	-- 将configid为 211016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为0
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 0 then
			return false
	end
	
	if GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 133210211, 211025) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211039(context, evt)
	-- 将configid为 211016 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为0
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 0 then
			return false
	end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211040(context, evt)
	-- 将configid为 211008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211016 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_211041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"StateChange"为1
	if ScriptLib.GetGroupVariableValue(context, "StateChange") ~= 1 then
			return false
	end
	
	-- 判断变量"challenge_state"为0
	if ScriptLib.GetGroupVariableValue(context, "challenge_state") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_211041(context, evt)
	-- 将configid为 211016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 211008 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 211008, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_211042(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_211042(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DrawOneLine"