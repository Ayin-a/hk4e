-- 基础信息
local base_info = {
	group_id = 166001041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41008, monster_id = 22070101, pos = { x = 382.082, y = 658.505, z = 443.860 }, rot = { x = 0.000, y = 103.193, z = 0.000 }, level = 36, drop_id = 1000100, isElite = true, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41001, gadget_id = 70290327, pos = { x = 385.651, y = 657.868, z = 440.185 }, rot = { x = 0.000, y = 22.506, z = 0.000 }, level = 1, state = GadgetState.GearAction2, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 41007, gadget_id = 70290329, pos = { x = 385.651, y = 657.868, z = 440.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 41012, gadget_id = 70290327, pos = { x = 385.651, y = 657.868, z = 440.185 }, rot = { x = 0.000, y = 22.506, z = 0.000 }, level = 36, state = GadgetState.GearAction2, area_id = 300 },
	{ config_id = 41013, gadget_id = 70290233, pos = { x = 385.917, y = 657.816, z = 440.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 41014, gadget_id = 70290204, pos = { x = 376.415, y = 659.104, z = 435.915 }, rot = { x = 355.872, y = 0.944, z = 340.164 }, level = 36, area_id = 300 },
	{ config_id = 41015, gadget_id = 70360342, pos = { x = 385.527, y = 657.440, z = 440.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 41009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 384.777, y = 657.635, z = 440.281 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1041002, name = "GADGET_STATE_CHANGE_41002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41002", action = "action_EVENT_GADGET_STATE_CHANGE_41002" },
	{ config_id = 1041003, name = "GADGET_STATE_CHANGE_41003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41003", action = "action_EVENT_GADGET_STATE_CHANGE_41003" },
	{ config_id = 1041004, name = "QUEST_START_41004", event = EventType.EVENT_QUEST_START, source = "7104218", condition = "condition_EVENT_QUEST_START_41004", action = "action_EVENT_QUEST_START_41004", trigger_count = 0 },
	{ config_id = 1041005, name = "GADGET_STATE_CHANGE_41005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41005", action = "action_EVENT_GADGET_STATE_CHANGE_41005" },
	{ config_id = 1041006, name = "ANY_MONSTER_DIE_41006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_41006" },
	{ config_id = 1041009, name = "ENTER_REGION_41009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_41009" },
	{ config_id = 1041010, name = "GADGET_STATE_CHANGE_41010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41010", action = "action_EVENT_GADGET_STATE_CHANGE_41010" },
	{ config_id = 1041011, name = "GADGET_STATE_CHANGE_41011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41011", action = "action_EVENT_GADGET_STATE_CHANGE_41011" },
	{ config_id = 1041016, name = "ANY_GADGET_DIE_41016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_41016", action = "action_EVENT_ANY_GADGET_DIE_41016" },
	{ config_id = 1041017, name = "VARIABLE_CHANGE_41017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41017", action = "action_EVENT_VARIABLE_CHANGE_41017" }
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
		gadgets = { 41001, 41007, 41013, 41014, 41015 },
		regions = { 41009 },
		triggers = { "GADGET_STATE_CHANGE_41002", "GADGET_STATE_CHANGE_41003", "QUEST_START_41004", "GADGET_STATE_CHANGE_41005", "ANY_MONSTER_DIE_41006", "ENTER_REGION_41009", "GADGET_STATE_CHANGE_41010", "GADGET_STATE_CHANGE_41011", "ANY_GADGET_DIE_41016", "VARIABLE_CHANGE_41017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 41012 },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41002(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "lineA" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "lineA", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 41007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 41001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 60010149 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 1 then
			return false
	end
	
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41003(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_41004(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001041, 41001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_41004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41005(context, evt)
	if 41001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41005(context, evt)
	-- 将configid为 41007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41006(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_41009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 41008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 调用提示id为 60010147 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41010(context, evt)
	-- 判断变量"monster"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 0 then
			return false
	end
	
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41010(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_41011(context, evt)
	-- 判断变量"monster"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 2 then
			return false
	end
	
	if 41001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_41011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001373, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_41016(context, evt)
	if 41014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_41016(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 41015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为2
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41017(context, evt)
	-- 将configid为 41001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end