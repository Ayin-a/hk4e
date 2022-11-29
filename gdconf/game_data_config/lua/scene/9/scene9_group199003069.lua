-- 基础信息
local base_info = {
	group_id = 199003069
}

-- DEFS_MISCS
local defs = {
    reverse_time = 15,--回溯倒计时，整数秒
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
	[69001] = { config_id = 69001, gadget_id = 70310390, pos = { x = -736.831, y = 221.557, z = -20.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 403 },
	[69002] = { config_id = 69002, gadget_id = 70310392, pos = { x = -744.450, y = 222.512, z = -21.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69003] = { config_id = 69003, gadget_id = 70310392, pos = { x = -734.832, y = 221.557, z = -20.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69004] = { config_id = 69004, gadget_id = 70310392, pos = { x = -730.372, y = 221.557, z = -14.400 }, rot = { x = 0.000, y = 51.379, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69005] = { config_id = 69005, gadget_id = 70310392, pos = { x = -733.526, y = 221.557, z = -24.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69006] = { config_id = 69006, gadget_id = 70310392, pos = { x = -734.471, y = 221.557, z = -13.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69007] = { config_id = 69007, gadget_id = 70310392, pos = { x = -726.860, y = 221.557, z = -7.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69008] = { config_id = 69008, gadget_id = 70350006, pos = { x = -737.973, y = 224.747, z = -31.502 }, rot = { x = 0.000, y = 308.661, z = 90.000 }, level = 20, persistent = true, area_id = 403 },
	[69009] = { config_id = 69009, gadget_id = 70310392, pos = { x = -739.331, y = 221.559, z = -17.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[69010] = { config_id = 69010, gadget_id = 70211112, pos = { x = -730.149, y = 221.557, z = -18.693 }, rot = { x = 0.000, y = 308.651, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 指定陶罐打碎
	{ config_id = 1069011, name = "GADGET_STATE_CHANGE_69011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69011", action = "action_EVENT_GADGET_STATE_CHANGE_69011", trigger_count = 0 },
	{ config_id = 1069020, name = "GROUP_LOAD_69020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_69020", action = "action_EVENT_GROUP_LOAD_69020", trigger_count = 0 },
	-- 开启回溯播reminder
	{ config_id = 1069021, name = "VARIABLE_CHANGE_69021", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_69021", action = "action_EVENT_VARIABLE_CHANGE_69021", trigger_count = 0 },
	-- 回溯完成播reminder
	{ config_id = 1069022, name = "VARIABLE_CHANGE_69022", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_69022", action = "action_EVENT_VARIABLE_CHANGE_69022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "correct", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1069012, name = "GADGET_STATE_CHANGE_69012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69012", action = "action_EVENT_GADGET_STATE_CHANGE_69012", trigger_count = 0 },
		{ config_id = 1069013, name = "VARIABLE_CHANGE_69013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_69013", action = "action_EVENT_VARIABLE_CHANGE_69013", trigger_count = 0 },
		{ config_id = 1069014, name = "GADGET_STATE_CHANGE_69014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69014", action = "action_EVENT_GADGET_STATE_CHANGE_69014", trigger_count = 0 },
		{ config_id = 1069015, name = "GADGET_STATE_CHANGE_69015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69015", action = "action_EVENT_GADGET_STATE_CHANGE_69015", trigger_count = 0 },
		{ config_id = 1069016, name = "GADGET_STATE_CHANGE_69016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_69016", action = "action_EVENT_GADGET_STATE_CHANGE_69016", trigger_count = 0 },
		{ config_id = 1069017, name = "SELECT_OPTION_69017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_69017", action = "action_EVENT_SELECT_OPTION_69017", trigger_count = 0 },
		{ config_id = 1069018, name = "SELECT_OPTION_69018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_69018", action = "action_EVENT_SELECT_OPTION_69018", trigger_count = 0 },
		{ config_id = 1069019, name = "VARIABLE_CHANGE_69019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_69019", action = "action_EVENT_VARIABLE_CHANGE_69019", trigger_count = 0 }
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
		gadgets = { 69001, 69002, 69003, 69004, 69005, 69006, 69007, 69008, 69009, 69010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_69011", "GROUP_LOAD_69020", "VARIABLE_CHANGE_69021", "VARIABLE_CHANGE_69022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_69011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69007) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_69011(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 69010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 69008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 69001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"reverse"的时间轴
	ScriptLib.EndTimeAxis(context, "reverse")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_69020(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_69020(context, evt)
	-- 将configid为 69008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 69001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 69010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_69021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为1
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_69021(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-736,y=221,z=-20}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111350, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_69022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为0
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003069, 69001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_69022(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-736,y=221,z=-20}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111351, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

require "V2_8/TimeReverser"