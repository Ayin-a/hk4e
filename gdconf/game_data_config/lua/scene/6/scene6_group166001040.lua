-- 基础信息
local base_info = {
	group_id = 166001040
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
	{ config_id = 40002, gadget_id = 70290327, pos = { x = 438.255, y = 654.133, z = 375.429 }, rot = { x = 0.000, y = 46.765, z = 0.000 }, level = 1, state = GadgetState.GearAction2, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 40007, gadget_id = 70290330, pos = { x = 438.255, y = 654.133, z = 375.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 40010, gadget_id = 70290327, pos = { x = 438.255, y = 654.133, z = 375.429 }, rot = { x = 0.000, y = 46.765, z = 0.000 }, level = 36, state = GadgetState.GearAction2, area_id = 300 },
	{ config_id = 40011, gadget_id = 70290204, pos = { x = 430.765, y = 654.643, z = 374.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 40012, gadget_id = 70290233, pos = { x = 436.313, y = 654.564, z = 376.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 40013, gadget_id = 70360342, pos = { x = 438.158, y = 653.729, z = 375.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 40006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 431.524, y = 655.383, z = 375.216 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1040001, name = "GADGET_STATE_CHANGE_40001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40001", action = "action_EVENT_GADGET_STATE_CHANGE_40001" },
	{ config_id = 1040003, name = "QUEST_START_40003", event = EventType.EVENT_QUEST_START, source = "7104217", condition = "condition_EVENT_QUEST_START_40003", action = "action_EVENT_QUEST_START_40003", trigger_count = 0 },
	{ config_id = 1040004, name = "GADGET_STATE_CHANGE_40004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40004", action = "action_EVENT_GADGET_STATE_CHANGE_40004" },
	{ config_id = 1040005, name = "GADGET_STATE_CHANGE_40005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40005", action = "action_EVENT_GADGET_STATE_CHANGE_40005" },
	{ config_id = 1040006, name = "ENTER_REGION_40006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_40006" },
	{ config_id = 1040008, name = "GADGET_STATE_CHANGE_40008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40008", action = "action_EVENT_GADGET_STATE_CHANGE_40008" },
	{ config_id = 1040009, name = "GADGET_STATE_CHANGE_40009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40009", action = "action_EVENT_GADGET_STATE_CHANGE_40009" },
	{ config_id = 1040014, name = "ANY_GADGET_DIE_40014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_40014", action = "action_EVENT_ANY_GADGET_DIE_40014" }
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
		gadgets = { 40002, 40007, 40011, 40012, 40013 },
		regions = { 40006 },
		triggers = { "GADGET_STATE_CHANGE_40001", "QUEST_START_40003", "GADGET_STATE_CHANGE_40004", "GADGET_STATE_CHANGE_40005", "ENTER_REGION_40006", "GADGET_STATE_CHANGE_40008", "GADGET_STATE_CHANGE_40009", "ANY_GADGET_DIE_40014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 40010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_40001(context, evt)
	if 40002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001040") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "lineA" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "lineA", 1, 166001354) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 40007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 40002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 60010143 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_40003(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001040, 40002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_40003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001040") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40004(context, evt)
	-- 判断变量"monster"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 2 then
			return false
	end
	
	if 40002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001373, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40005(context, evt)
	if 40002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40005(context, evt)
	-- 将configid为 40007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 60010312 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010312) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_40006(context, evt)
	-- 调用提示id为 60010141 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40008(context, evt)
	-- 判断变量"monster"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 0 then
			return false
	end
	
	if 40002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40008(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40009(context, evt)
	-- 判断变量"monster"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster", 166001373) ~= 1 then
			return false
	end
	
	if 40002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40009(context, evt)
	-- 针对当前group内变量名为 "monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "monster", 1, 166001373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_40014(context, evt)
	if 40011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_40014(context, evt)
	-- 将configid为 40002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 40012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end