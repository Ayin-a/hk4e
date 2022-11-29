-- 基础信息
local base_info = {
	group_id = 133304095
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
	{ config_id = 95001, npc_id = 12719, pos = { x = -1906.195, y = 201.375, z = 2520.962 }, rot = { x = 0.000, y = 298.314, z = 0.000 }, area_id = 21 },
	{ config_id = 95008, npc_id = 12719, pos = { x = -1916.916, y = 219.552, z = 2590.088 }, rot = { x = 0.000, y = 211.726, z = 0.000 }, area_id = 21 },
	{ config_id = 95009, npc_id = 12719, pos = { x = -1946.802, y = 203.214, z = 2573.124 }, rot = { x = 0.000, y = 212.920, z = 0.000 }, area_id = 21 },
	{ config_id = 95010, npc_id = 12719, pos = { x = -1909.638, y = 243.251, z = 2477.665 }, rot = { x = 0.000, y = 35.170, z = 0.000 }, area_id = 21 },
	{ config_id = 95011, npc_id = 12719, pos = { x = -1861.575, y = 201.211, z = 2568.551 }, rot = { x = 0.000, y = 346.725, z = 0.000 }, area_id = 21 }
}

-- 装置
gadgets = {
	{ config_id = 95002, gadget_id = 70360286, pos = { x = -1906.193, y = 201.376, z = 2520.960 }, rot = { x = 0.000, y = 298.314, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 95012, gadget_id = 70360286, pos = { x = -1916.916, y = 219.552, z = 2590.088 }, rot = { x = 0.000, y = 211.726, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 95013, gadget_id = 70360286, pos = { x = -1946.802, y = 203.214, z = 2573.124 }, rot = { x = 0.000, y = 212.920, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 95014, gadget_id = 70360286, pos = { x = -1909.638, y = 243.251, z = 2477.665 }, rot = { x = 0.000, y = 35.170, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 95015, gadget_id = 70360286, pos = { x = -1861.585, y = 201.211, z = 2568.541 }, rot = { x = 0.000, y = 346.725, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 小圈-开车
	{ config_id = 95036, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1906.193, y = 201.376, z = 2520.960 }, area_id = 21 },
	-- 小圈-开车
	{ config_id = 95037, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1916.916, y = 219.552, z = 2590.088 }, area_id = 21 },
	-- 小圈-开车
	{ config_id = 95038, shape = RegionShape.CYLINDER, radius = 20, pos = { x = -1946.802, y = 203.214, z = 2573.124 }, height = 18.000, area_id = 21 },
	-- 小圈-开车
	{ config_id = 95039, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1909.638, y = 243.251, z = 2477.665 }, area_id = 21 },
	-- 小圈-开车
	{ config_id = 95040, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1861.585, y = 201.211, z = 2568.541 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1095003, name = "GROUP_WILL_UNLOAD_95003", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_95003" },
	{ config_id = 1095004, name = "QUEST_START_95004", event = EventType.EVENT_QUEST_START, source = "2301203", condition = "condition_EVENT_QUEST_START_95004", action = "action_EVENT_QUEST_START_95004", trigger_count = 0 },
	{ config_id = 1095005, name = "QUEST_FINISH_95005", event = EventType.EVENT_QUEST_FINISH, source = "2301203", condition = "", action = "", tag = "2301203" },
	{ config_id = 1095006, name = "CHALLENGE_SUCCESS_95006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95006" },
	{ config_id = 1095007, name = "CHALLENGE_FAIL_95007", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95007" },
	{ config_id = 1095016, name = "GROUP_WILL_UNLOAD_95016", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_95016" },
	{ config_id = 1095017, name = "QUEST_START_95017", event = EventType.EVENT_QUEST_START, source = "2301203", condition = "condition_EVENT_QUEST_START_95017", action = "action_EVENT_QUEST_START_95017", trigger_count = 0 },
	{ config_id = 1095018, name = "QUEST_FINISH_95018", event = EventType.EVENT_QUEST_FINISH, source = "2301203", condition = "", action = "", tag = "2301203" },
	{ config_id = 1095019, name = "CHALLENGE_SUCCESS_95019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95019" },
	{ config_id = 1095020, name = "CHALLENGE_FAIL_95020", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95020" },
	{ config_id = 1095021, name = "GROUP_WILL_UNLOAD_95021", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_95021" },
	{ config_id = 1095022, name = "QUEST_START_95022", event = EventType.EVENT_QUEST_START, source = "2301203", condition = "condition_EVENT_QUEST_START_95022", action = "action_EVENT_QUEST_START_95022", trigger_count = 0 },
	{ config_id = 1095023, name = "QUEST_FINISH_95023", event = EventType.EVENT_QUEST_FINISH, source = "2301203", condition = "", action = "", tag = "2301203" },
	{ config_id = 1095024, name = "CHALLENGE_SUCCESS_95024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95024" },
	{ config_id = 1095025, name = "CHALLENGE_FAIL_95025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95025" },
	{ config_id = 1095026, name = "GROUP_WILL_UNLOAD_95026", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_95026" },
	{ config_id = 1095027, name = "QUEST_START_95027", event = EventType.EVENT_QUEST_START, source = "2301203", condition = "condition_EVENT_QUEST_START_95027", action = "action_EVENT_QUEST_START_95027", trigger_count = 0 },
	{ config_id = 1095028, name = "QUEST_FINISH_95028", event = EventType.EVENT_QUEST_FINISH, source = "2301203", condition = "", action = "", tag = "2301203" },
	{ config_id = 1095029, name = "CHALLENGE_SUCCESS_95029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95029" },
	{ config_id = 1095030, name = "CHALLENGE_FAIL_95030", event = EventType.EVENT_CHALLENGE_FAIL, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95030" },
	{ config_id = 1095031, name = "GROUP_WILL_UNLOAD_95031", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_95031" },
	{ config_id = 1095032, name = "QUEST_START_95032", event = EventType.EVENT_QUEST_START, source = "2301203", condition = "condition_EVENT_QUEST_START_95032", action = "action_EVENT_QUEST_START_95032", trigger_count = 0 },
	{ config_id = 1095033, name = "QUEST_FINISH_95033", event = EventType.EVENT_QUEST_FINISH, source = "2301203", condition = "", action = "", tag = "2301203" },
	{ config_id = 1095034, name = "CHALLENGE_SUCCESS_95034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95034" },
	{ config_id = 1095035, name = "CHALLENGE_FAIL_95035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95035" },
	-- 小圈-开车
	{ config_id = 1095036, name = "ENTER_REGION_95036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_95036", trigger_count = 0 },
	-- 小圈-开车
	{ config_id = 1095037, name = "ENTER_REGION_95037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_95037", trigger_count = 0 },
	-- 小圈-开车
	{ config_id = 1095038, name = "ENTER_REGION_95038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_95038", trigger_count = 0 },
	-- 小圈-开车
	{ config_id = 1095039, name = "ENTER_REGION_95039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_95039", trigger_count = 0 },
	-- 小圈-开车
	{ config_id = 1095040, name = "ENTER_REGION_95040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_95040", trigger_count = 0 }
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
		gadgets = { 95002 },
		regions = { 95036 },
		triggers = { "GROUP_WILL_UNLOAD_95003", "QUEST_START_95004", "QUEST_FINISH_95005", "CHALLENGE_SUCCESS_95006", "CHALLENGE_FAIL_95007", "ENTER_REGION_95036" },
		npcs = { 95001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95012 },
		regions = { 95037 },
		triggers = { "GROUP_WILL_UNLOAD_95016", "QUEST_START_95017", "QUEST_FINISH_95018", "CHALLENGE_SUCCESS_95019", "CHALLENGE_FAIL_95020", "ENTER_REGION_95037" },
		npcs = { 95008 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95013 },
		regions = { 95038 },
		triggers = { "GROUP_WILL_UNLOAD_95021", "QUEST_START_95022", "QUEST_FINISH_95023", "CHALLENGE_SUCCESS_95024", "CHALLENGE_FAIL_95025", "ENTER_REGION_95038" },
		npcs = { 95009 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 95014 },
		regions = { 95039 },
		triggers = { "GROUP_WILL_UNLOAD_95026", "QUEST_START_95027", "QUEST_FINISH_95028", "CHALLENGE_SUCCESS_95029", "CHALLENGE_FAIL_95030", "ENTER_REGION_95039" },
		npcs = { 95010 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 95015 },
		regions = { 95040 },
		triggers = { "GROUP_WILL_UNLOAD_95031", "QUEST_START_95032", "QUEST_FINISH_95033", "CHALLENGE_SUCCESS_95034", "CHALLENGE_FAIL_95035", "ENTER_REGION_95040" },
		npcs = { 95011 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_95003(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95004(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
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
function action_EVENT_QUEST_START_95004(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为95002
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,95002)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001010, 21, 2301203, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95006(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95007(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_95016(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95017(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
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
function action_EVENT_QUEST_START_95017(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为95012
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,95012)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1002（该挑战的识别id),挑战内容为2001010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 2001010, 21, 2301203, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95019(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95020(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_95021(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95022(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
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
function action_EVENT_QUEST_START_95022(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为95013
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,95013)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1003（该挑战的识别id),挑战内容为2001010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 2001010, 21, 2301203, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95024(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95025(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_95026(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95027(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
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
function action_EVENT_QUEST_START_95027(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为95014
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,95014)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1004（该挑战的识别id),挑战内容为2001010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1004, 2001010, 21, 2301203, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95029(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95030(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_95031(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_95032(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
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
function action_EVENT_QUEST_START_95032(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为95015
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,95015)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1005（该挑战的识别id),挑战内容为2001010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1005, 2001010, 21, 2301203, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95034(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95035(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301203Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_95036(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_95037(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_95038(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_95039(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_95040(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end