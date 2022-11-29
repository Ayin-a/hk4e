-- 基础信息
local base_info = {
	group_id = 166001063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63007, monster_id = 22010401, pos = { x = 443.123, y = 127.440, z = 1410.727 }, rot = { x = 0.000, y = 149.168, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63001, gadget_id = 70290332, pos = { x = 446.280, y = 127.280, z = 1409.540 }, rot = { x = 355.795, y = 61.543, z = 349.622 }, level = 36, state = GadgetState.GearStop, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 63002, gadget_id = 70290336, pos = { x = 364.800, y = 145.040, z = 1366.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 63006, gadget_id = 70290332, pos = { x = 446.280, y = 127.280, z = 1409.540 }, rot = { x = 355.795, y = 61.543, z = 349.622 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 63008, shape = RegionShape.SPHERE, radius = 20, pos = { x = 446.331, y = 127.517, z = 1408.547 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "QUEST_START_63003", event = EventType.EVENT_QUEST_START, source = "", condition = "", action = "action_EVENT_QUEST_START_63003", trigger_count = 0 },
	{ config_id = 1063004, name = "GADGET_STATE_CHANGE_63004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63004", action = "action_EVENT_GADGET_STATE_CHANGE_63004", trigger_count = 0 },
	{ config_id = 1063005, name = "GADGET_STATE_CHANGE_63005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_63005", action = "action_EVENT_GADGET_STATE_CHANGE_63005" },
	{ config_id = 1063008, name = "ENTER_REGION_63008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_63008" },
	{ config_id = 1063009, name = "GADGET_CREATE_63009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_63009", action = "action_EVENT_GADGET_CREATE_63009", trigger_count = 0 },
	{ config_id = 1063010, name = "GROUP_LOAD_63010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_63010", action = "action_EVENT_GROUP_LOAD_63010", trigger_count = 0 }
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
		gadgets = { 63001, 63002 },
		regions = { 63008 },
		triggers = { "QUEST_START_63003", "GADGET_STATE_CHANGE_63004", "GADGET_STATE_CHANGE_63005", "ENTER_REGION_63008", "GADGET_CREATE_63009", "GROUP_LOAD_63010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 63006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 63007 },
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
function action_EVENT_QUEST_START_63003(context, evt)
	-- 将configid为 63001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63004(context, evt)
	if 63001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63004(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 63001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001063, 3)
	
	-- 调用提示id为 60010343 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010343) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_63005(context, evt)
	if 63001 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_63005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001063") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 63002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 166001063, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 调用提示id为 60010348 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010348) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（364，147，1366），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=364, y=147, z=1366}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = true, screen_x = 0, screen_y = 2 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_63008(context, evt)
	-- 调用提示id为 60010347 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010347) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_63009(context, evt)
	if 63001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_63009(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, 166001063, 63001, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_63010(context, evt)
	if GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001063, 63001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_63010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001063") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end