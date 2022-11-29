-- 基础信息
local base_info = {
	group_id = 133220030
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
	{ config_id = 30002, gadget_id = 70300093, pos = { x = -2687.912, y = 209.504, z = -4134.843 }, rot = { x = 5.014, y = 356.749, z = 357.645 }, level = 1, area_id = 11 },
	{ config_id = 30007, gadget_id = 70300093, pos = { x = -2693.222, y = 209.672, z = -4139.517 }, rot = { x = 8.288, y = 161.407, z = 359.529 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	-- 进村任务完成2
	{ config_id = 30001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2727.307, y = 204.319, z = -4080.543 }, area_id = 11 },
	-- 进村任务完成1
	{ config_id = 30006, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2754.353, y = 205.065, z = -4117.318 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 进村任务完成2
	{ config_id = 1030001, name = "ENTER_REGION_30001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30001", action = "action_EVENT_ENTER_REGION_30001", trigger_count = 0 },
	-- 7210605完成播放remidner
	{ config_id = 1030004, name = "QUEST_FINISH_30004", event = EventType.EVENT_QUEST_FINISH, source = "7210605", condition = "", action = "action_EVENT_QUEST_FINISH_30004", trigger_count = 0 },
	-- 任务完成卸载货物袋
	{ config_id = 1030005, name = "QUEST_FINISH_30005", event = EventType.EVENT_QUEST_FINISH, source = "7210610", condition = "", action = "action_EVENT_QUEST_FINISH_30005", trigger_count = 0 },
	-- 进村任务完成1
	{ config_id = 1030006, name = "ENTER_REGION_30006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30006", action = "action_EVENT_ENTER_REGION_30006", trigger_count = 0 },
	-- 7210619完成播放reminder
	{ config_id = 1030009, name = "QUEST_FINISH_30009", event = EventType.EVENT_QUEST_FINISH, source = "7210619", condition = "", action = "action_EVENT_QUEST_FINISH_30009", trigger_count = 0 },
	-- 双叶任务完成注目
	{ config_id = 1030018, name = "QUEST_FINISH_30018", event = EventType.EVENT_QUEST_FINISH, source = "7210607", condition = "", action = "action_EVENT_QUEST_FINISH_30018", trigger_count = 0 },
	-- 7210616完成铁门打开
	{ config_id = 1030041, name = "QUEST_FINISH_30041", event = EventType.EVENT_QUEST_FINISH, source = "7210631", condition = "", action = "action_EVENT_QUEST_FINISH_30041", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "opengate", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1030012, name = "QUEST_FINISH_30012", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "", trigger_count = 0 }
	}
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
		gadgets = { 30002, 30007 },
		regions = { 30001, 30006 },
		triggers = { "ENTER_REGION_30001", "QUEST_FINISH_30004", "QUEST_FINISH_30005", "ENTER_REGION_30006", "QUEST_FINISH_30009", "QUEST_FINISH_30018", "QUEST_FINISH_30041" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_30001(context, evt)
	if evt.param1 ~= 30001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210908") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30004(context, evt)
	-- 调用提示id为 -1074246895 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246895) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220030, EntityType.GADGET, 30015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30006(context, evt)
	if evt.param1 ~= 30006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210908") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30009(context, evt)
	-- 调用提示id为 -1074246893 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246893) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30018(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2757.947，206.72，-4106.008），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2757.947, y=206.72, z=-4106.008}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_30041(context, evt)
	-- 调用提示id为 -1074246887 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, -1074246887) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end