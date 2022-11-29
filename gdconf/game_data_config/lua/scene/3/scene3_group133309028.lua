-- 基础信息
local base_info = {
	group_id = 133309028
}

-- Trigger变量
local defs = {
	gadget_door = 28001
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
	[28001] = { config_id = 28001, gadget_id = 70330420, pos = { x = -2218.437, y = 49.540, z = 5568.536 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 延迟1秒开门
	{ config_id = 1028003, name = "TIME_AXIS_PASS_28003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_28003", action = "action_EVENT_TIME_AXIS_PASS_28003", trigger_count = 0 },
	{ config_id = 1028006, name = "VARIABLE_CHANGE_28006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28006", action = "action_EVENT_VARIABLE_CHANGE_28006" },
	{ config_id = 1028007, name = "GROUP_LOAD_28007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_28007", action = "action_EVENT_GROUP_LOAD_28007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "torch", value = 0, no_refresh = true }
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
		gadgets = { 28001 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_28003", "VARIABLE_CHANGE_28006", "GROUP_LOAD_28007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_28003(context, evt)
	if "open" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_28003(context, evt)
	
	-- 将configid为 defs.gadget_door 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_door, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1000060015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000060015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_28006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"torch"为2
	if ScriptLib.GetGroupVariableValue(context, "torch") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28006(context, evt)
	-- 创建标识为"open"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "open", {1}, false)
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305435") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	local pos = {x=-2218.437, y=58.01351, z=5568.536}
	local pos_follow = {x=-2181.912, y=59.40779, z=5568.536}
	ScriptLib.BeginCameraSceneLook(context, { 
	look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	is_set_follow_pos = true,is_abs_follow_pos = true,
	follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_28007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309029, 29002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309065, 65002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_28007(context, evt)
	-- 将configid为 28001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305435") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end