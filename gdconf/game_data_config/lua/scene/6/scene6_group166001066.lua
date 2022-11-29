-- 基础信息
local base_info = {
	group_id = 166001066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66008, monster_id = 22050201, pos = { x = 274.733, y = 70.797, z = 1285.683 }, rot = { x = 0.000, y = 232.307, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 66009, monster_id = 22040101, pos = { x = 277.399, y = 70.377, z = 1283.584 }, rot = { x = 0.000, y = 218.696, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 300 },
	{ config_id = 66010, monster_id = 22040101, pos = { x = 273.659, y = 71.142, z = 1288.622 }, rot = { x = 0.000, y = 217.965, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66001, gadget_id = 70290332, pos = { x = 266.530, y = 72.500, z = 1277.820 }, rot = { x = 2.396, y = 229.086, z = 1.756 }, level = 36, state = GadgetState.GearStop, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 66002, gadget_id = 70290333, pos = { x = 364.800, y = 145.040, z = 1366.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 66006, gadget_id = 70290332, pos = { x = 266.530, y = 72.500, z = 1277.820 }, rot = { x = 2.396, y = 229.086, z = 1.756 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "QUEST_START_66003", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_66003" },
	{ config_id = 1066004, name = "GADGET_STATE_CHANGE_66004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66004", action = "action_EVENT_GADGET_STATE_CHANGE_66004", trigger_count = 0 },
	{ config_id = 1066005, name = "GADGET_STATE_CHANGE_66005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_66005", action = "action_EVENT_GADGET_STATE_CHANGE_66005" },
	{ config_id = 1066007, name = "VARIABLE_CHANGE_66007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66007", action = "action_EVENT_VARIABLE_CHANGE_66007" },
	{ config_id = 1066011, name = "GADGET_CREATE_66011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66011", action = "action_EVENT_GADGET_CREATE_66011", trigger_count = 0 },
	{ config_id = 1066012, name = "GROUP_LOAD_66012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_66012", action = "action_EVENT_GROUP_LOAD_66012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 66001, 66002 },
		regions = { },
		triggers = { "QUEST_START_66003", "GADGET_STATE_CHANGE_66004", "GADGET_STATE_CHANGE_66005", "VARIABLE_CHANGE_66007", "GADGET_CREATE_66011", "GROUP_LOAD_66012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 66006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 66008, 66009, 66010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_66003(context, evt)
	-- 针对当前group内变量名为 "start" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66004(context, evt)
	if 66001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66004(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 66001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001066, 3)
	
	-- 调用提示id为 60010343 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010343) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	if 66001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_66005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001066") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 66002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 166001066, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为2
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66007(context, evt)
	-- 将configid为 66001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66011(context, evt)
	if 66001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66011(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, 166001066, 66001, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_66012(context, evt)
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001066, 66001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_66012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001066") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end