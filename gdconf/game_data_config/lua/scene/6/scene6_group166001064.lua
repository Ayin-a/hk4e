-- 基础信息
local base_info = {
	group_id = 166001064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64007, monster_id = 22010101, pos = { x = 485.802, y = 176.194, z = 1308.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 },
	{ config_id = 64008, monster_id = 22010101, pos = { x = 492.734, y = 178.197, z = 1329.177 }, rot = { x = 0.000, y = 271.384, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9013, area_id = 300 },
	{ config_id = 64009, monster_id = 22010301, pos = { x = 485.861, y = 176.959, z = 1330.260 }, rot = { x = 0.000, y = 104.900, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9013, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64001, gadget_id = 70290332, pos = { x = 490.590, y = 177.670, z = 1310.450 }, rot = { x = 353.095, y = 113.397, z = 359.941 }, level = 36, state = GadgetState.GearStop, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 64002, gadget_id = 70290337, pos = { x = 364.800, y = 145.040, z = 1366.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 64006, gadget_id = 70290332, pos = { x = 490.590, y = 177.670, z = 1310.450 }, rot = { x = 353.095, y = 113.397, z = 359.941 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 64010, shape = RegionShape.SPHERE, radius = 20, pos = { x = 489.672, y = 177.607, z = 1310.595 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1064003, name = "QUEST_START_64003", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_64003", trigger_count = 0 },
	{ config_id = 1064004, name = "GADGET_STATE_CHANGE_64004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64004", action = "action_EVENT_GADGET_STATE_CHANGE_64004", trigger_count = 0 },
	{ config_id = 1064005, name = "GADGET_STATE_CHANGE_64005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64005", action = "action_EVENT_GADGET_STATE_CHANGE_64005" },
	{ config_id = 1064010, name = "ENTER_REGION_64010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_64010" },
	{ config_id = 1064011, name = "GADGET_CREATE_64011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64011", action = "action_EVENT_GADGET_CREATE_64011", trigger_count = 0 },
	{ config_id = 1064012, name = "GROUP_LOAD_64012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_64012", action = "action_EVENT_GROUP_LOAD_64012", trigger_count = 0 }
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
		monsters = { 64008, 64009 },
		gadgets = { 64001, 64002 },
		regions = { 64010 },
		triggers = { "QUEST_START_64003", "GADGET_STATE_CHANGE_64004", "GADGET_STATE_CHANGE_64005", "ENTER_REGION_64010", "GADGET_CREATE_64011", "GROUP_LOAD_64012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 64006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 64007 },
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
function action_EVENT_QUEST_START_64003(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64004(context, evt)
	if 64001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64004(context, evt)
	-- 将configid为 64002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 64001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001064, 3)
	
	-- 调用提示id为 60010343 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010343) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64005(context, evt)
	if 64001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001064") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 64002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 166001064, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_64010(context, evt)
	-- 调用提示id为 60010345 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010345) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_64011(context, evt)
	if 64001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_64011(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, 166001064, 64001, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_64012(context, evt)
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001064, 64001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_64012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001064") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end