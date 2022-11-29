-- 基础信息
local base_info = {
	group_id = 133223479
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
	{ config_id = 479001, gadget_id = 70300203, pos = { x = -5993.035, y = 164.360, z = -2759.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 479004, gadget_id = 70300203, pos = { x = -5908.805, y = 166.624, z = -2757.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	-- 03
	{ config_id = 479007, gadget_id = 70300203, pos = { x = -5871.641, y = 158.097, z = -2667.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 479010, gadget_id = 70300203, pos = { x = -5989.074, y = 174.032, z = -2695.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 479011, gadget_id = 70300203, pos = { x = -5989.074, y = 174.032, z = -2695.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 479012, gadget_id = 70300203, pos = { x = -5989.074, y = 174.032, z = -2695.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	-- 任务提示
	{ config_id = 479003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -5993.058, y = 164.342, z = -2759.108 }, area_id = 18 },
	{ config_id = 479006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -5909.002, y = 166.644, z = -2756.813 }, area_id = 18 },
	{ config_id = 479009, shape = RegionShape.SPHERE, radius = 8, pos = { x = -5871.845, y = 158.097, z = -2667.523 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 05
	{ config_id = 1479002, name = "QUEST_FINISH_479002", event = EventType.EVENT_QUEST_FINISH, source = "7217505", condition = "", action = "action_EVENT_QUEST_FINISH_479002", trigger_count = 0 },
	-- 任务提示
	{ config_id = 1479003, name = "ENTER_REGION_479003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_479003", action = "action_EVENT_ENTER_REGION_479003" },
	-- 04
	{ config_id = 1479005, name = "QUEST_FINISH_479005", event = EventType.EVENT_QUEST_FINISH, source = "7217504", condition = "", action = "action_EVENT_QUEST_FINISH_479005", trigger_count = 0 },
	{ config_id = 1479006, name = "ENTER_REGION_479006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_479006", action = "action_EVENT_ENTER_REGION_479006" },
	-- 03
	{ config_id = 1479008, name = "QUEST_FINISH_479008", event = EventType.EVENT_QUEST_FINISH, source = "7217503", condition = "", action = "action_EVENT_QUEST_FINISH_479008", trigger_count = 0 },
	{ config_id = 1479009, name = "ENTER_REGION_479009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_479009", action = "action_EVENT_ENTER_REGION_479009" },
	{ config_id = 1479013, name = "QUEST_FINISH_479013", event = EventType.EVENT_QUEST_FINISH, source = "7217506", condition = "", action = "action_EVENT_QUEST_FINISH_479013", trigger_count = 0 },
	{ config_id = 1479014, name = "QUEST_FINISH_479014", event = EventType.EVENT_QUEST_FINISH, source = "7217507", condition = "", action = "action_EVENT_QUEST_FINISH_479014", trigger_count = 0 },
	{ config_id = 1479015, name = "QUEST_FINISH_479015", event = EventType.EVENT_QUEST_FINISH, source = "7217508", condition = "", action = "action_EVENT_QUEST_FINISH_479015", trigger_count = 0 }
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
		-- description = 初始,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 479001, 479004, 479007, 479010, 479011, 479012 },
		regions = { 479003, 479006, 479009 },
		triggers = { "QUEST_FINISH_479002", "ENTER_REGION_479003", "QUEST_FINISH_479005", "ENTER_REGION_479006", "QUEST_FINISH_479008", "ENTER_REGION_479009", "QUEST_FINISH_479013", "QUEST_FINISH_479014", "QUEST_FINISH_479015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 完成后空,
		monsters = { },
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
function action_EVENT_QUEST_FINISH_479002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_479003(context, evt)
	if evt.param1 ~= 479003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_479003(context, evt)
	-- 调用提示id为 32250001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32250001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-5983.301，170.4762，-2745.765），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5983.301, y=170.4762, z=-2745.765}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_479005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_479006(context, evt)
	if evt.param1 ~= 479006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_479006(context, evt)
	-- 调用提示id为 32250003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32250003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-5905.381，172.8212，-2744.93），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-5905.381, y=172.8212, z=-2744.93}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_479008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_479009(context, evt)
	if evt.param1 ~= 479009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_479009(context, evt)
	-- 调用提示id为 32250002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32250002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_479013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_479014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_479015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223479, EntityType.GADGET, 479012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end