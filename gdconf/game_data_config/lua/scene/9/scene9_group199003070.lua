-- 基础信息
local base_info = {
	group_id = 199003070
}

-- DEFS_MISCS
local defs = {
    reverse_time = 10,--回溯倒计时，整数秒
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
	[70001] = { config_id = 70001, gadget_id = 70310390, pos = { x = -724.858, y = 103.078, z = 400.369 }, rot = { x = 0.000, y = 266.286, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 403 },
	[70002] = { config_id = 70002, gadget_id = 70211102, pos = { x = -717.510, y = 102.659, z = 407.460 }, rot = { x = 0.000, y = 263.535, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 },
	[70003] = { config_id = 70003, gadget_id = 70310392, pos = { x = -732.066, y = 103.453, z = 398.058 }, rot = { x = 0.000, y = 117.976, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70004] = { config_id = 70004, gadget_id = 70310392, pos = { x = -719.813, y = 103.063, z = 400.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70005] = { config_id = 70005, gadget_id = 70310392, pos = { x = -711.700, y = 107.358, z = 407.591 }, rot = { x = 18.938, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70006] = { config_id = 70006, gadget_id = 70310392, pos = { x = -721.221, y = 102.852, z = 404.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70007] = { config_id = 70007, gadget_id = 70310392, pos = { x = -728.985, y = 102.487, z = 410.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70008] = { config_id = 70008, gadget_id = 70360358, pos = { x = -731.971, y = 103.378, z = 398.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearAction2, area_id = 403 },
	[70009] = { config_id = 70009, gadget_id = 70360358, pos = { x = -720.027, y = 103.063, z = 400.132 }, rot = { x = 0.000, y = 271.943, z = 0.000 }, level = 20, state = GadgetState.GearAction2, area_id = 403 },
	[70010] = { config_id = 70010, gadget_id = 70310392, pos = { x = -726.412, y = 102.903, z = 403.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[70011] = { config_id = 70011, gadget_id = 70360358, pos = { x = -711.700, y = 107.358, z = 407.591 }, rot = { x = 18.938, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearAction2, area_id = 403 },
	[70012] = { config_id = 70012, gadget_id = 70360358, pos = { x = -725.021, y = 102.988, z = 402.010 }, rot = { x = 0.000, y = 177.657, z = 0.000 }, level = 20, state = GadgetState.GearAction2, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070013, name = "GADGET_STATE_CHANGE_70013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70013", action = "action_EVENT_GADGET_STATE_CHANGE_70013", trigger_count = 0 },
	{ config_id = 1070014, name = "GADGET_STATE_CHANGE_70014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70014", action = "action_EVENT_GADGET_STATE_CHANGE_70014", trigger_count = 0 },
	{ config_id = 1070015, name = "GADGET_STATE_CHANGE_70015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70015", action = "action_EVENT_GADGET_STATE_CHANGE_70015", trigger_count = 0 },
	{ config_id = 1070016, name = "GADGET_STATE_CHANGE_70016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70016", action = "action_EVENT_GADGET_STATE_CHANGE_70016", trigger_count = 0 },
	-- 开启回溯播reminder
	{ config_id = 1070017, name = "VARIABLE_CHANGE_70017", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_70017", action = "action_EVENT_VARIABLE_CHANGE_70017", trigger_count = 0 },
	-- 回溯完成播reminder+去除鸟
	{ config_id = 1070018, name = "VARIABLE_CHANGE_70018", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_70018", action = "action_EVENT_VARIABLE_CHANGE_70018", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 70001, 70002, 70003, 70004, 70005, 70006, 70007, 70010, 70012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_70013", "GADGET_STATE_CHANGE_70014", "GADGET_STATE_CHANGE_70015", "GADGET_STATE_CHANGE_70016", "VARIABLE_CHANGE_70017", "VARIABLE_CHANGE_70018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70013(context, evt)
	-- 将configid为 70002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 70001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 70001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"reverse"的时间轴
	ScriptLib.EndTimeAxis(context, "reverse")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70003) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70014(context, evt)
	-- 创建id为70008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 70008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70004) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70015(context, evt)
	-- 创建id为70009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 70009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70005) then
		return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70016(context, evt)
	-- 创建id为70011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 70011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_70017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为1
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_70017(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-724,y=103,z=400}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111350, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_70018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为0
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003070, 70001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_70018(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-724,y=103,z=400}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111351, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	ScriptLib.RemoveEntityByConfigId(context, 199003070, EntityType.GADGET, 70008 )
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003070, EntityType.GADGET, 70009 )
	
	 ScriptLib.RemoveEntityByConfigId(context, 199003070, EntityType.GADGET, 70011 )
	
	return 0
end

require "V2_8/TimeReverser"