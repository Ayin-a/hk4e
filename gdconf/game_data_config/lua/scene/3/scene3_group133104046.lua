-- 基础信息
local base_info = {
	group_id = 133104046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 22010301, pos = { x = 76.571, y = 210.351, z = 740.012 }, rot = { x = 0.000, y = 309.958, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 9 },
	{ config_id = 46003, monster_id = 22010201, pos = { x = 45.972, y = 211.155, z = 733.635 }, rot = { x = 0.000, y = 309.958, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 9 },
	{ config_id = 46004, monster_id = 22010101, pos = { x = 66.523, y = 213.380, z = 765.025 }, rot = { x = 0.000, y = 309.958, z = 0.000 }, level = 18, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85, gadget_id = 70900051, pos = { x = 61.940, y = 210.702, z = 746.749 }, rot = { x = 0.000, y = 301.987, z = 0.000 }, level = 19, state = GadgetState.GearStop, persistent = true, area_id = 9 },
	{ config_id = 86, gadget_id = 70211131, pos = { x = 13.518, y = 213.743, z = 771.780 }, rot = { x = 359.337, y = 119.269, z = 359.963 }, level = 21, chest_drop_id = 2001300, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 46002, gadget_id = 70350006, pos = { x = 37.732, y = 211.539, z = 758.075 }, rot = { x = 0.000, y = 297.829, z = 0.000 }, level = 19, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000056, name = "GADGET_STATE_CHANGE_56", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56", action = "action_EVENT_GADGET_STATE_CHANGE_56", trigger_count = 0 },
	{ config_id = 1000057, name = "CHALLENGE_SUCCESS_57", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_57", trigger_count = 0 },
	{ config_id = 1000058, name = "CHALLENGE_FAIL_58", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_58", trigger_count = 0 },
	{ config_id = 1046005, name = "GADGET_CREATE_46005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46005", action = "action_EVENT_GADGET_CREATE_46005" },
	{ config_id = 1046006, name = "GADGET_CREATE_46006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46006", action = "action_EVENT_GADGET_CREATE_46006" },
	{ config_id = 1046007, name = "QUEST_FINISH_46007", event = EventType.EVENT_QUEST_FINISH, source = "7100609", condition = "", action = "action_EVENT_QUEST_FINISH_46007", trigger_count = 0 },
	{ config_id = 1046008, name = "QUEST_FINISH_46008", event = EventType.EVENT_QUEST_FINISH, source = "7100610", condition = "", action = "action_EVENT_QUEST_FINISH_46008", trigger_count = 0 },
	{ config_id = 1046009, name = "GADGET_STATE_CHANGE_46009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46009", action = "action_EVENT_GADGET_STATE_CHANGE_46009", trigger_count = 0 },
	{ config_id = 1046010, name = "TIMER_EVENT_46010", event = EventType.EVENT_TIMER_EVENT, source = "door_open", condition = "", action = "action_EVENT_TIMER_EVENT_46010" },
	{ config_id = 1046011, name = "GADGET_CREATE_46011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46011", action = "action_EVENT_GADGET_CREATE_46011", trigger_count = 0 },
	{ config_id = 1046012, name = "QUEST_START_46012", event = EventType.EVENT_QUEST_START, source = "7100612", condition = "condition_EVENT_QUEST_START_46012", action = "action_EVENT_QUEST_START_46012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isUnlock", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 85, 86, 46002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_56", "CHALLENGE_SUCCESS_57", "CHALLENGE_FAIL_58", "QUEST_FINISH_46007", "QUEST_FINISH_46008", "GADGET_STATE_CHANGE_46009", "TIMER_EVENT_46010", "GADGET_CREATE_46011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 46001, 46003, 46004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 85, 86, 46002 },
		regions = { },
		triggers = { "GADGET_CREATE_46005", "GADGET_CREATE_46006", "GADGET_STATE_CHANGE_46009", "QUEST_START_46012" },
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
function condition_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	if 85 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104046, 2)
	
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 90, 133104046, 3, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_57(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104046_trial_success") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：133104046的对象,请求一次调用,并将string参数："door_open" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133104046, "door_open", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_58(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104046, 2)
	
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46005(context, evt)
	if 46002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46005(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46006(context, evt)
	if 85 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46006(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_46007(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_46008(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46009(context, evt)
	if 86 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104046_enter") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_46010(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104046, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_46011(context, evt)
	if 85 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46011(context, evt)
	-- 将configid为 85 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104046, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_46012(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133104046, 86) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_46012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104046_enter") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end