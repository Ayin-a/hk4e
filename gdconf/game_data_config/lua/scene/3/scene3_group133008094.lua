-- 基础信息
local base_info = {
	group_id = 133008094
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
	{ config_id = 94002, npc_id = 20184, pos = { x = 1108.781, y = 384.385, z = -1004.042 }, rot = { x = 24.567, y = 73.884, z = 359.438 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 94001, gadget_id = 70360098, pos = { x = 1108.645, y = 382.869, z = -1004.028 }, rot = { x = 2.699, y = 81.874, z = 2.141 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "QUEST_FINISH_94003", event = EventType.EVENT_QUEST_FINISH, source = "7012401", condition = "", action = "action_EVENT_QUEST_FINISH_94003" },
	{ config_id = 1094005, name = "GADGET_STATE_CHANGE_94005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94005", action = "action_EVENT_GADGET_STATE_CHANGE_94005", trigger_count = 0 },
	{ config_id = 1094006, name = "QUEST_FINISH_94006", event = EventType.EVENT_QUEST_FINISH, source = "7012501", condition = "", action = "action_EVENT_QUEST_FINISH_94006", trigger_count = 0 },
	{ config_id = 1094007, name = "QUEST_FINISH_94007", event = EventType.EVENT_QUEST_FINISH, source = "7012502", condition = "", action = "action_EVENT_QUEST_FINISH_94007", trigger_count = 0 },
	{ config_id = 1094008, name = "QUEST_FINISH_94008", event = EventType.EVENT_QUEST_FINISH, source = "7012503", condition = "", action = "action_EVENT_QUEST_FINISH_94008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questStart", value = 0, no_refresh = true }
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
		gadgets = { 94001 },
		regions = { },
		triggers = { "QUEST_FINISH_94003", "GADGET_STATE_CHANGE_94005", "QUEST_FINISH_94006", "QUEST_FINISH_94007", "QUEST_FINISH_94008" },
		npcs = { 94002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_94003(context, evt)
	-- 将configid为 94001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133008087中， configid为87001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008087, 87001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（1102，384，-996），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1102, y=384, z=-996}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94005(context, evt)
	if 94001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"questStart"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "questStart", 133008094) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94005(context, evt)
	-- 调用提示id为 3008094 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 3008094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_94006(context, evt)
	-- 将本组内变量名为 "questStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_94007(context, evt)
	-- 将本组内变量名为 "questStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_94008(context, evt)
	-- 将本组内变量名为 "questStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end