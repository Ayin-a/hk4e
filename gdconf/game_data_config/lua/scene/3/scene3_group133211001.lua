-- 基础信息
local base_info = {
	group_id = 133211001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1004, monster_id = 21020801, pos = { x = -3740.642, y = 200.575, z = -1834.638 }, rot = { x = 0.000, y = 151.910, z = 0.000 }, level = 29, drop_id = 1000100, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 电桩远
	{ config_id = 1001, gadget_id = 70900008, pos = { x = -3762.829, y = 200.509, z = -1834.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	-- 电桩中
	{ config_id = 1002, gadget_id = 70900008, pos = { x = -3743.055, y = 200.504, z = -1827.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	-- 电桩近
	{ config_id = 1003, gadget_id = 70900008, pos = { x = -3721.581, y = 200.053, z = -1838.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	-- 远桩用timer 10s
	{ config_id = 1001006, name = "GADGET_STATE_CHANGE_1006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1006", action = "action_EVENT_GADGET_STATE_CHANGE_1006", trigger_count = 0 },
	-- 中桩用timer 5s
	{ config_id = 1001007, name = "GADGET_STATE_CHANGE_1007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1007", action = "action_EVENT_GADGET_STATE_CHANGE_1007", trigger_count = 0 },
	-- 近桩用timer 1s
	{ config_id = 1001008, name = "GADGET_STATE_CHANGE_1008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1008", action = "action_EVENT_GADGET_STATE_CHANGE_1008", trigger_count = 0 },
	-- timer1
	{ config_id = 1001009, name = "TIMER_EVENT_1009", event = EventType.EVENT_TIMER_EVENT, source = "timer1", condition = "", action = "action_EVENT_TIMER_EVENT_1009", trigger_count = 0 },
	-- timer2
	{ config_id = 1001010, name = "TIMER_EVENT_1010", event = EventType.EVENT_TIMER_EVENT, source = "timer2", condition = "", action = "action_EVENT_TIMER_EVENT_1010", trigger_count = 0 },
	-- timer3
	{ config_id = 1001011, name = "TIMER_EVENT_1011", event = EventType.EVENT_TIMER_EVENT, source = "timer3", condition = "", action = "action_EVENT_TIMER_EVENT_1011", trigger_count = 0 },
	-- 判断解密成功
	{ config_id = 1001012, name = "GADGET_STATE_CHANGE_1012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1012", action = "action_EVENT_GADGET_STATE_CHANGE_1012" }
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
		gadgets = { 1001, 1002, 1003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1006", "GADGET_STATE_CHANGE_1007", "GADGET_STATE_CHANGE_1008", "TIMER_EVENT_1009", "TIMER_EVENT_1010", "TIMER_EVENT_1011", "GADGET_STATE_CHANGE_1012" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332110012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	if 1001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1006(context, evt)
	-- 延迟10秒后,向groupId为：133211001的对象,请求一次调用,并将string参数："timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133211001, "timer1", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332110013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1007(context, evt)
	if 1002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1007(context, evt)
	-- 延迟5秒后,向groupId为：133211001的对象,请求一次调用,并将string参数："timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133211001, "timer2", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332110013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1008(context, evt)
	if 1003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1008(context, evt)
	-- 延迟1秒后,向groupId为：133211001的对象,请求一次调用,并将string参数："timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133211001, "timer3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332110013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1009(context, evt)
	-- 改变指定group组133211001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133211001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1010(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1011(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133211001, 1001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133211001, 1002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133211001, 1003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1012(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133211001, "timer1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133211001, "timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133211001, "timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211001, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332110011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end