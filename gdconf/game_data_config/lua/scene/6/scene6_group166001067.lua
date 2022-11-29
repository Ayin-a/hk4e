-- 基础信息
local base_info = {
	group_id = 166001067
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
	{ config_id = 67001, gadget_id = 70290332, pos = { x = 267.710, y = 87.640, z = 1426.540 }, rot = { x = 3.230, y = 310.000, z = 1.440 }, level = 36, state = GadgetState.GearStop, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 67002, gadget_id = 70290335, pos = { x = 364.800, y = 145.040, z = 1366.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 67006, gadget_id = 70290332, pos = { x = 267.710, y = 87.640, z = 1426.540 }, rot = { x = 3.230, y = 310.000, z = 1.440 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 67008, gadget_id = 70290204, pos = { x = 270.833, y = 88.780, z = 1434.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 67009, gadget_id = 70290233, pos = { x = 269.784, y = 88.441, z = 1429.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 67007, shape = RegionShape.SPHERE, radius = 20, pos = { x = 268.436, y = 88.173, z = 1426.007 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1067003, name = "QUEST_START_67003", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_67003", trigger_count = 0 },
	{ config_id = 1067004, name = "GADGET_STATE_CHANGE_67004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67004", action = "action_EVENT_GADGET_STATE_CHANGE_67004", trigger_count = 0 },
	{ config_id = 1067005, name = "GADGET_STATE_CHANGE_67005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_67005", action = "action_EVENT_GADGET_STATE_CHANGE_67005" },
	{ config_id = 1067007, name = "ENTER_REGION_67007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_67007" },
	{ config_id = 1067010, name = "TIME_AXIS_PASS_67010", event = EventType.EVENT_TIME_AXIS_PASS, source = "dirt", condition = "condition_EVENT_TIME_AXIS_PASS_67010", action = "action_EVENT_TIME_AXIS_PASS_67010" },
	{ config_id = 1067011, name = "ANY_GADGET_DIE_67011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_67011", action = "action_EVENT_ANY_GADGET_DIE_67011" },
	{ config_id = 1067012, name = "GADGET_CREATE_67012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_67012", action = "action_EVENT_GADGET_CREATE_67012", trigger_count = 0 },
	{ config_id = 1067013, name = "GROUP_LOAD_67013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_67013", action = "action_EVENT_GROUP_LOAD_67013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
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
		gadgets = { 67001, 67002 },
		regions = { 67007 },
		triggers = { "QUEST_START_67003", "GADGET_STATE_CHANGE_67004", "GADGET_STATE_CHANGE_67005", "ENTER_REGION_67007", "TIME_AXIS_PASS_67010", "GADGET_CREATE_67012", "GROUP_LOAD_67013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 67006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 67008, 67009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_67011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_67003(context, evt)
	-- 将configid为 67001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67004(context, evt)
	if 67001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67004(context, evt)
	-- 将configid为 67002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 67001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"dirt"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "dirt", {3}, false)
	
	
	-- 调用提示id为 60010343 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010343) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_67005(context, evt)
	if 67001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_67005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001067") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 67002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 166001517, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_67007(context, evt)
	-- 调用提示id为 60010351 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010351) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_67010(context, evt)
	if "dirt" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_67010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001067, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_67011(context, evt)
	if 67008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_67011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 67009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_67012(context, evt)
	if 67001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_67012(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, 166001067, 67001, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_67013(context, evt)
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001067, 67001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_67013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001067") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end