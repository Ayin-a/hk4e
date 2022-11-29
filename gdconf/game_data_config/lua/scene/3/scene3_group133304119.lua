-- 基础信息
local base_info = {
	group_id = 133304119
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
	{ config_id = 119001, npc_id = 12679, pos = { x = -1880.808, y = 209.592, z = 2584.293 }, rot = { x = 0.000, y = 125.822, z = 0.000 }, area_id = 21 },
	{ config_id = 119004, npc_id = 12679, pos = { x = -1928.767, y = 203.139, z = 2554.629 }, rot = { x = 0.000, y = 226.220, z = 0.000 }, area_id = 21 },
	{ config_id = 119013, npc_id = 12679, pos = { x = -1880.213, y = 203.583, z = 2512.216 }, rot = { x = 0.000, y = 22.497, z = 0.000 }, area_id = 21 },
	{ config_id = 119019, npc_id = 12679, pos = { x = -1864.530, y = 243.251, z = 2511.095 }, rot = { x = 0.000, y = 104.900, z = 0.000 }, area_id = 21 },
	{ config_id = 119025, npc_id = 12679, pos = { x = -1916.244, y = 243.037, z = 2564.390 }, rot = { x = 0.000, y = 219.135, z = 0.000 }, area_id = 21 }
}

-- 装置
gadgets = {
	{ config_id = 119002, gadget_id = 70360286, pos = { x = -1880.760, y = 209.592, z = 2584.307 }, rot = { x = 0.000, y = 125.822, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 119006, gadget_id = 70360286, pos = { x = -1928.767, y = 203.139, z = 2554.629 }, rot = { x = 0.000, y = 226.222, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 119014, gadget_id = 70360286, pos = { x = -1880.139, y = 203.583, z = 2512.314 }, rot = { x = 0.000, y = 22.497, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 119020, gadget_id = 70360286, pos = { x = -1864.675, y = 243.251, z = 2511.135 }, rot = { x = 0.000, y = 104.900, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 119026, gadget_id = 70360286, pos = { x = -1916.244, y = 243.037, z = 2564.390 }, rot = { x = 0.000, y = 219.293, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 小圈-开车提示
	{ config_id = 119005, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1880.760, y = 209.592, z = 2584.307 }, area_id = 21 },
	-- 小圈-开车提示
	{ config_id = 119009, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1916.244, y = 243.037, z = 2564.390 }, area_id = 21 },
	-- 小圈-开车提示
	{ config_id = 119012, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1928.767, y = 203.139, z = 2554.629 }, area_id = 21 },
	-- 小圈-开车提示
	{ config_id = 119018, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1880.139, y = 203.583, z = 2512.314 }, area_id = 21 },
	-- 小圈-开车提示
	{ config_id = 119024, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1864.675, y = 243.251, z = 2511.135 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1119003, name = "GROUP_WILL_UNLOAD_119003", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_119003" },
	-- 小圈-开车提示
	{ config_id = 1119005, name = "ENTER_REGION_119005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_119005", trigger_count = 0 },
	-- 2301202任务开始
	{ config_id = 1119007, name = "QUEST_START_119007", event = EventType.EVENT_QUEST_START, source = "2301202", condition = "condition_EVENT_QUEST_START_119007", action = "action_EVENT_QUEST_START_119007", trigger_count = 0 },
	{ config_id = 1119008, name = "GROUP_WILL_UNLOAD_119008", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_119008" },
	-- 小圈-开车提示
	{ config_id = 1119009, name = "ENTER_REGION_119009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_119009", trigger_count = 0 },
	-- 2301202任务结束
	{ config_id = 1119010, name = "QUEST_FINISH_119010", event = EventType.EVENT_QUEST_FINISH, source = "2301202", condition = "", action = "", trigger_count = 0, tag = "2301202" },
	-- 2301202任务开始
	{ config_id = 1119011, name = "QUEST_START_119011", event = EventType.EVENT_QUEST_START, source = "2301202", condition = "condition_EVENT_QUEST_START_119011", action = "action_EVENT_QUEST_START_119011", trigger_count = 0 },
	-- 小圈-开车提示
	{ config_id = 1119012, name = "ENTER_REGION_119012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_119012", trigger_count = 0 },
	{ config_id = 1119015, name = "GROUP_WILL_UNLOAD_119015", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_119015" },
	-- 2301202任务结束
	{ config_id = 1119016, name = "QUEST_FINISH_119016", event = EventType.EVENT_QUEST_FINISH, source = "2301202", condition = "", action = "", trigger_count = 0, tag = "2301202" },
	-- 2301202任务结束
	{ config_id = 1119017, name = "QUEST_FINISH_119017", event = EventType.EVENT_QUEST_FINISH, source = "2301202", condition = "", action = "", trigger_count = 0, tag = "2301202" },
	-- 小圈-开车提示
	{ config_id = 1119018, name = "ENTER_REGION_119018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_119018", trigger_count = 0 },
	{ config_id = 1119021, name = "GROUP_WILL_UNLOAD_119021", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_119021" },
	-- 2301202任务开始
	{ config_id = 1119022, name = "QUEST_START_119022", event = EventType.EVENT_QUEST_START, source = "2301202", condition = "condition_EVENT_QUEST_START_119022", action = "action_EVENT_QUEST_START_119022", trigger_count = 0 },
	-- 2301202任务结束
	{ config_id = 1119023, name = "QUEST_FINISH_119023", event = EventType.EVENT_QUEST_FINISH, source = "2301202", condition = "", action = "", trigger_count = 0, tag = "2301202" },
	-- 小圈-开车提示
	{ config_id = 1119024, name = "ENTER_REGION_119024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_119024", trigger_count = 0 },
	{ config_id = 1119027, name = "GROUP_WILL_UNLOAD_119027", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_119027" },
	-- 2301202任务开始
	{ config_id = 1119028, name = "QUEST_START_119028", event = EventType.EVENT_QUEST_START, source = "2301202", condition = "condition_EVENT_QUEST_START_119028", action = "action_EVENT_QUEST_START_119028", trigger_count = 0 },
	-- 2301202任务结束
	{ config_id = 1119029, name = "QUEST_FINISH_119029", event = EventType.EVENT_QUEST_FINISH, source = "2301202", condition = "", action = "", trigger_count = 0, tag = "2301202" },
	-- 2301202任务开始
	{ config_id = 1119030, name = "QUEST_START_119030", event = EventType.EVENT_QUEST_START, source = "2301202", condition = "condition_EVENT_QUEST_START_119030", action = "action_EVENT_QUEST_START_119030", trigger_count = 0 },
	{ config_id = 1119031, name = "CHALLENGE_SUCCESS_119031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_119031" },
	{ config_id = 1119032, name = "CHALLENGE_FAIL_119032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_119032" },
	{ config_id = 1119033, name = "CHALLENGE_SUCCESS_119033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_119033" },
	{ config_id = 1119034, name = "CHALLENGE_FAIL_119034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_119034" },
	{ config_id = 1119035, name = "CHALLENGE_SUCCESS_119035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_119035" },
	{ config_id = 1119036, name = "CHALLENGE_FAIL_119036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_119036" },
	{ config_id = 1119037, name = "CHALLENGE_SUCCESS_119037", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_119037" },
	{ config_id = 1119038, name = "CHALLENGE_FAIL_119038", event = EventType.EVENT_CHALLENGE_FAIL, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_FAIL_119038" },
	{ config_id = 1119039, name = "CHALLENGE_SUCCESS_119039", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_119039" },
	{ config_id = 1119040, name = "CHALLENGE_FAIL_119040", event = EventType.EVENT_CHALLENGE_FAIL, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_FAIL_119040" }
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
	rand_suite = true
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
		gadgets = { 119002 },
		regions = { 119005 },
		triggers = { "GROUP_WILL_UNLOAD_119003", "ENTER_REGION_119005", "QUEST_START_119007", "QUEST_FINISH_119010", "CHALLENGE_SUCCESS_119031", "CHALLENGE_FAIL_119032" },
		npcs = { 119001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 119006 },
		regions = { 119012 },
		triggers = { "GROUP_WILL_UNLOAD_119008", "QUEST_START_119011", "ENTER_REGION_119012", "QUEST_FINISH_119016", "CHALLENGE_SUCCESS_119033", "CHALLENGE_FAIL_119034" },
		npcs = { 119004 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 119014 },
		regions = { 119018 },
		triggers = { "GROUP_WILL_UNLOAD_119015", "QUEST_FINISH_119017", "ENTER_REGION_119018", "QUEST_START_119022", "CHALLENGE_SUCCESS_119035", "CHALLENGE_FAIL_119036" },
		npcs = { 119013 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 119020 },
		regions = { 119024 },
		triggers = { "GROUP_WILL_UNLOAD_119021", "QUEST_FINISH_119023", "ENTER_REGION_119024", "QUEST_START_119028", "CHALLENGE_SUCCESS_119037", "CHALLENGE_FAIL_119038" },
		npcs = { 119019 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 119026 },
		regions = { 119009 },
		triggers = { "ENTER_REGION_119009", "GROUP_WILL_UNLOAD_119027", "QUEST_FINISH_119029", "QUEST_START_119030", "CHALLENGE_SUCCESS_119039", "CHALLENGE_FAIL_119040" },
		npcs = { 119025 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_119003(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_119005(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_119007(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
			end
			-- 调用提示id为 33010199 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 33010199) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			end
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_QUEST_START_119007(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为119002
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,119002)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001009的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001009, 21, 2301202, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_119008(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_119009(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_119011(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
			end
			-- 调用提示id为 33010199 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 33010199) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			end
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_QUEST_START_119011(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为119006
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,119006)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1002（该挑战的识别id),挑战内容为2001009的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 2001009, 21, 2301202, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_119012(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_119015(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_119018(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_119021(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_119022(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
			end
			-- 调用提示id为 33010199 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 33010199) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			end
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_QUEST_START_119022(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为119014
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,119014)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1003（该挑战的识别id),挑战内容为2001009的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 2001009, 21, 2301202, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_119024(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_119027(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_119028(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
			end
			-- 调用提示id为 33010199 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 33010199) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			end
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_QUEST_START_119028(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为119020
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,119020)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1004（该挑战的识别id),挑战内容为2001009的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1004, 2001009, 21, 2301202, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_119030(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
			end
			-- 调用提示id为 33010199 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
			if 0 ~= ScriptLib.ShowReminder(context, 33010199) then
				ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			end
			return false
		end
		return true
end

-- 触发操作
function action_EVENT_QUEST_START_119030(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为119026
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,119026)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1005（该挑战的识别id),挑战内容为2001009的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1005, 2001009, 21, 2301202, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_119031(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_119032(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_119033(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_119034(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_119035(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_119036(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_119037(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_119038(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_119039(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_119040(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301202Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end