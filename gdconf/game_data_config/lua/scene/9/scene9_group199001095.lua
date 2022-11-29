-- 基础信息
local base_info = {
	group_id = 199001095
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
	{ config_id = 95001, gadget_id = 70310299, pos = { x = 186.166, y = 215.620, z = 303.314 }, rot = { x = 0.000, y = 29.938, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 95002, gadget_id = 70310477, pos = { x = 190.086, y = 216.034, z = 317.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, interact_id = 122, area_id = 402 },
	{ config_id = 95004, gadget_id = 70310148, pos = { x = 190.086, y = 216.034, z = 317.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1095003, name = "GADGET_STATE_CHANGE_95003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95003", action = "action_EVENT_GADGET_STATE_CHANGE_95003", trigger_count = 0 },
	{ config_id = 1095005, name = "QUEST_START_95005", event = EventType.EVENT_QUEST_START, source = "4007009", condition = "condition_EVENT_QUEST_START_95005", action = "action_EVENT_QUEST_START_95005", trigger_count = 0 },
	{ config_id = 1095006, name = "GROUP_LOAD_95006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_95006", action = "action_EVENT_GROUP_LOAD_95006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flower", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_95005", "GROUP_LOAD_95006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95002, 95004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_95003", "QUEST_START_95005", "GROUP_LOAD_95006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95001 },
		regions = { },
		triggers = { "QUEST_START_95005", "GROUP_LOAD_95006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95003(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001095, 95002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001095, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标（186.727，217.4164，306.285），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=186.727, y=217.4164, z=306.285}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "flower" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flower", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95005(context, evt)
	-- 判断变量"flower"为1
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_95005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_95006(context, evt)
	-- 判断变量"flower"为1
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_95006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end