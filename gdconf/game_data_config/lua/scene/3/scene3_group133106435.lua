-- 基础信息
local base_info = {
	group_id = 133106435
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
	{ config_id = 435002, npc_id = 20545, pos = { x = -779.337, y = 113.580, z = 1856.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 },
	{ config_id = 435012, npc_id = 20546, pos = { x = -793.368, y = 101.944, z = 1856.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 }
}

-- 装置
gadgets = {
	{ config_id = 435001, gadget_id = 70290395, pos = { x = -784.272, y = 108.350, z = 1853.763 }, rot = { x = 343.940, y = 23.401, z = 31.372 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	-- 交付5个
	{ config_id = 435003, gadget_id = 70360306, pos = { x = -779.426, y = 112.838, z = 1856.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 83, area_id = 19 },
	-- 交付1个
	{ config_id = 435004, gadget_id = 70360306, pos = { x = -779.344, y = 112.949, z = 1856.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 84, area_id = 19 },
	{ config_id = 435007, gadget_id = 70217015, pos = { x = -792.256, y = 102.327, z = 1854.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050190, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 19 },
	{ config_id = 435008, gadget_id = 70217016, pos = { x = -790.838, y = 102.320, z = 1856.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050191, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 19 },
	{ config_id = 435009, gadget_id = 70217017, pos = { x = -793.068, y = 102.579, z = 1854.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050192, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 19 },
	{ config_id = 435010, gadget_id = 70217018, pos = { x = -792.867, y = 102.463, z = 1857.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050193, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 19 },
	{ config_id = 435011, gadget_id = 70710071, pos = { x = -793.498, y = 101.848, z = 1856.177 }, rot = { x = 0.000, y = 112.155, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 435014, gadget_id = 70300203, pos = { x = -779.421, y = 112.829, z = 1856.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 435015, gadget_id = 70217019, pos = { x = -792.205, y = 102.635, z = 1855.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050194, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 19 },
	{ config_id = 435017, gadget_id = 70211131, pos = { x = -790.540, y = 101.944, z = 1854.413 }, rot = { x = 0.000, y = 114.226, z = 0.000 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1435005, name = "GADGET_STATE_CHANGE_435005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_435005", action = "action_EVENT_GADGET_STATE_CHANGE_435005" },
	{ config_id = 1435006, name = "GADGET_STATE_CHANGE_435006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_435006", action = "action_EVENT_GADGET_STATE_CHANGE_435006" },
	{ config_id = 1435013, name = "QUEST_START_435013", event = EventType.EVENT_QUEST_START, source = "7106408", condition = "", action = "action_EVENT_QUEST_START_435013", trigger_count = 0 },
	{ config_id = 1435016, name = "GROUP_LOAD_435016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_435016", action = "action_EVENT_GROUP_LOAD_435016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 435001 },
		regions = { },
		triggers = { },
		npcs = { 435002, 435012 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 435001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_435005", "QUEST_START_435013", "GROUP_LOAD_435016" },
		npcs = { 435002, 435012 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 435007, 435008, 435009, 435010, 435011, 435015, 435017 },
		regions = { },
		triggers = { },
		npcs = { 435012 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 435003, 435014 },
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
function condition_EVENT_GADGET_STATE_CHANGE_435005(context, evt)
	if 435003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_435005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106408finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 435001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106435, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106435, EntityType.GADGET, 435014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 调用提示id为 7106471 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7106471) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-784.5844, y=111.3745, z=1854.697}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-784.5844, y=111.3745, z=1854.697}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_435006(context, evt)
	if 435004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_435006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 435001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106409finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106435, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_435013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106435, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_435016(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_435016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106408finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106435, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 435001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end