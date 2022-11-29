-- 基础信息
local base_info = {
	group_id = 133304090
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
	{ config_id = 90001, npc_id = 12720, pos = { x = -1923.182, y = 203.272, z = 2485.320 }, rot = { x = 0.000, y = 115.354, z = 0.000 }, area_id = 21 },
	{ config_id = 90010, npc_id = 12720, pos = { x = -1911.472, y = 203.455, z = 2553.729 }, rot = { x = 0.000, y = 254.579, z = 0.000 }, area_id = 21 },
	{ config_id = 90011, npc_id = 12720, pos = { x = -1910.914, y = 203.121, z = 2497.268 }, rot = { x = 0.000, y = 15.883, z = 0.000 }, area_id = 21 },
	{ config_id = 90012, npc_id = 12720, pos = { x = -1895.373, y = 203.455, z = 2558.471 }, rot = { x = 0.000, y = 159.235, z = 0.000 }, area_id = 21 },
	{ config_id = 90013, npc_id = 12720, pos = { x = -1931.831, y = 243.819, z = 2481.433 }, rot = { x = 0.000, y = 65.076, z = 0.000 }, area_id = 21 }
}

-- 装置
gadgets = {
	{ config_id = 90002, gadget_id = 70360286, pos = { x = -1923.182, y = 203.272, z = 2485.320 }, rot = { x = 0.000, y = 115.354, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 90018, gadget_id = 70360286, pos = { x = -1911.472, y = 203.455, z = 2553.729 }, rot = { x = 0.000, y = 254.579, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 90019, gadget_id = 70360286, pos = { x = -1910.914, y = 203.121, z = 2497.268 }, rot = { x = 0.000, y = 15.804, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 },
	{ config_id = 90020, gadget_id = 70360286, pos = { x = -1895.373, y = 203.455, z = 2558.471 }, rot = { x = 0.000, y = 159.235, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 90021, gadget_id = 70360286, pos = { x = -1931.831, y = 243.819, z = 2481.433 }, rot = { x = 0.000, y = 65.076, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 90003, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1923.182, y = 203.272, z = 2485.320 }, area_id = 21 },
	{ config_id = 90022, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1911.472, y = 203.455, z = 2553.729 }, area_id = 21 },
	{ config_id = 90028, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1910.914, y = 203.121, z = 2497.268 }, area_id = 21 },
	{ config_id = 90034, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1895.373, y = 203.455, z = 2558.471 }, area_id = 21 },
	{ config_id = 90040, shape = RegionShape.SPHERE, radius = 23, pos = { x = -1931.831, y = 243.819, z = 2481.433 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1090003, name = "ENTER_REGION_90003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_90003", trigger_count = 0 },
	{ config_id = 1090004, name = "QUEST_START_90004", event = EventType.EVENT_QUEST_START, source = "2301204", condition = "condition_EVENT_QUEST_START_90004", action = "action_EVENT_QUEST_START_90004", trigger_count = 0 },
	{ config_id = 1090005, name = "QUEST_FINISH_90005", event = EventType.EVENT_QUEST_FINISH, source = "2301204", condition = "", action = "", trigger_count = 0, tag = "2301204" },
	{ config_id = 1090006, name = "CHALLENGE_SUCCESS_90006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_90006" },
	{ config_id = 1090007, name = "CHALLENGE_FAIL_90007", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_90007" },
	{ config_id = 1090009, name = "GROUP_WILL_UNLOAD_90009", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_90009" },
	{ config_id = 1090022, name = "ENTER_REGION_90022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_90022", trigger_count = 0 },
	{ config_id = 1090023, name = "QUEST_START_90023", event = EventType.EVENT_QUEST_START, source = "2301204", condition = "condition_EVENT_QUEST_START_90023", action = "action_EVENT_QUEST_START_90023", trigger_count = 0 },
	{ config_id = 1090024, name = "QUEST_FINISH_90024", event = EventType.EVENT_QUEST_FINISH, source = "2301204", condition = "", action = "", trigger_count = 0, tag = "2301204" },
	{ config_id = 1090025, name = "CHALLENGE_SUCCESS_90025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_90025" },
	{ config_id = 1090026, name = "CHALLENGE_FAIL_90026", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_90026" },
	{ config_id = 1090027, name = "GROUP_WILL_UNLOAD_90027", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_90027" },
	{ config_id = 1090028, name = "ENTER_REGION_90028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_90028", trigger_count = 0 },
	{ config_id = 1090029, name = "QUEST_START_90029", event = EventType.EVENT_QUEST_START, source = "2301204", condition = "condition_EVENT_QUEST_START_90029", action = "action_EVENT_QUEST_START_90029", trigger_count = 0 },
	{ config_id = 1090030, name = "QUEST_FINISH_90030", event = EventType.EVENT_QUEST_FINISH, source = "2301204", condition = "", action = "", trigger_count = 0, tag = "2301204" },
	{ config_id = 1090031, name = "CHALLENGE_SUCCESS_90031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_90031" },
	{ config_id = 1090032, name = "CHALLENGE_FAIL_90032", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_90032" },
	{ config_id = 1090033, name = "GROUP_WILL_UNLOAD_90033", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_90033" },
	{ config_id = 1090034, name = "ENTER_REGION_90034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_90034", trigger_count = 0 },
	{ config_id = 1090035, name = "QUEST_START_90035", event = EventType.EVENT_QUEST_START, source = "2301204", condition = "condition_EVENT_QUEST_START_90035", action = "action_EVENT_QUEST_START_90035", trigger_count = 0 },
	{ config_id = 1090036, name = "QUEST_FINISH_90036", event = EventType.EVENT_QUEST_FINISH, source = "2301204", condition = "", action = "", trigger_count = 0, tag = "2301204" },
	{ config_id = 1090037, name = "CHALLENGE_SUCCESS_90037", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_90037" },
	{ config_id = 1090038, name = "CHALLENGE_FAIL_90038", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_90038" },
	{ config_id = 1090039, name = "GROUP_WILL_UNLOAD_90039", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_90039" },
	{ config_id = 1090040, name = "ENTER_REGION_90040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_90040", trigger_count = 0 },
	{ config_id = 1090041, name = "QUEST_START_90041", event = EventType.EVENT_QUEST_START, source = "2301204", condition = "condition_EVENT_QUEST_START_90041", action = "action_EVENT_QUEST_START_90041", trigger_count = 0 },
	{ config_id = 1090042, name = "QUEST_FINISH_90042", event = EventType.EVENT_QUEST_FINISH, source = "2301204", condition = "", action = "", trigger_count = 0, tag = "2301204" },
	{ config_id = 1090043, name = "CHALLENGE_SUCCESS_90043", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_90043" },
	{ config_id = 1090044, name = "CHALLENGE_FAIL_90044", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_90044" },
	{ config_id = 1090045, name = "GROUP_WILL_UNLOAD_90045", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_90045" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 90008, shape = RegionShape.SPHERE, radius = 120, pos = { x = -1899.818, y = 245.681, z = 2538.043 }, area_id = 21 }
	},
	triggers = {
		{ config_id = 1090008, name = "ENTER_REGION_90008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 90002 },
		regions = { 90003 },
		triggers = { "ENTER_REGION_90003", "QUEST_START_90004", "QUEST_FINISH_90005", "CHALLENGE_SUCCESS_90006", "CHALLENGE_FAIL_90007", "GROUP_WILL_UNLOAD_90009" },
		npcs = { 90001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 90018 },
		regions = { 90022 },
		triggers = { "ENTER_REGION_90022", "QUEST_START_90023", "QUEST_FINISH_90024", "CHALLENGE_SUCCESS_90025", "CHALLENGE_FAIL_90026", "GROUP_WILL_UNLOAD_90027" },
		npcs = { 90010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 90019 },
		regions = { 90028 },
		triggers = { "ENTER_REGION_90028", "QUEST_START_90029", "QUEST_FINISH_90030", "CHALLENGE_SUCCESS_90031", "CHALLENGE_FAIL_90032", "GROUP_WILL_UNLOAD_90033" },
		npcs = { 90011 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 90020 },
		regions = { 90034 },
		triggers = { "ENTER_REGION_90034", "QUEST_START_90035", "QUEST_FINISH_90036", "CHALLENGE_SUCCESS_90037", "CHALLENGE_FAIL_90038", "GROUP_WILL_UNLOAD_90039" },
		npcs = { 90012 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 90021 },
		regions = { 90040 },
		triggers = { "ENTER_REGION_90040", "QUEST_START_90041", "QUEST_FINISH_90042", "CHALLENGE_SUCCESS_90043", "CHALLENGE_FAIL_90044", "GROUP_WILL_UNLOAD_90045" },
		npcs = { 90013 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_90003(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90004(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
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
function action_EVENT_QUEST_START_90004(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为90002
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,90002)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001011, 21, 2301204, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_90006(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_90007(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_90009(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_90022(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90023(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
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
function action_EVENT_QUEST_START_90023(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为90018
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,90018)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001011, 21, 2301204, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_90025(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_90026(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_90027(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_90028(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90029(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
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
function action_EVENT_QUEST_START_90029(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为90019
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,90019)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001011, 21, 2301204, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_90031(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_90032(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_90033(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_90034(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90035(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
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
function action_EVENT_QUEST_START_90035(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为90020
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,90020)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001011, 21, 2301204, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_90037(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_90038(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_90039(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_90040(context, evt)
	-- 调用提示id为 400163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_90041(context, evt)
		--联机下不可使用
		if ScriptLib.CheckIsInMpMode(context) then
			-- 发送任务失败通知
			-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
			if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
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
function action_EVENT_QUEST_START_90041(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为90021
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,90021)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001011的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001011, 21, 2301204, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_90043(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_90044(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2301204Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_90045(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end