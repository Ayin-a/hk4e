-- 基础信息
local base_info = {
	group_id = 133217135
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
	{ config_id = 135001, npc_id = 20379, pos = { x = -4739.240, y = 233.344, z = -3708.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 14 },
	{ config_id = 135006, npc_id = 20379, pos = { x = -4746.449, y = 218.493, z = -3710.214 }, rot = { x = 0.000, y = 123.055, z = 0.000 }, area_id = 14 },
	{ config_id = 135011, npc_id = 20379, pos = { x = -4752.766, y = 233.016, z = -3733.655 }, rot = { x = 0.000, y = 17.132, z = 0.000 }, area_id = 14 },
	{ config_id = 135025, npc_id = 20379, pos = { x = -4750.809, y = 240.619, z = -3694.784 }, rot = { x = 7.161, y = 133.070, z = 0.011 }, area_id = 14 },
	{ config_id = 135033, npc_id = 20379, pos = { x = -4747.658, y = 237.875, z = -3724.311 }, rot = { x = 7.161, y = 65.255, z = 0.011 }, area_id = 14 },
	{ config_id = 135041, npc_id = 20379, pos = { x = -4775.563, y = 206.305, z = -3687.116 }, rot = { x = 7.161, y = 65.255, z = 0.011 }, area_id = 14 }
}

-- 装置
gadgets = {
	{ config_id = 135002, gadget_id = 70360286, pos = { x = -4739.199, y = 233.377, z = -3708.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 135007, gadget_id = 70360286, pos = { x = -4746.405, y = 218.495, z = -3710.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 135012, gadget_id = 70360286, pos = { x = -4752.681, y = 233.019, z = -3733.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 135026, gadget_id = 70360286, pos = { x = -4750.807, y = 240.618, z = -3694.789 }, rot = { x = 0.000, y = 125.568, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 135034, gadget_id = 70360286, pos = { x = -4747.633, y = 237.874, z = -3724.338 }, rot = { x = 0.000, y = 67.602, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 135042, gadget_id = 70360286, pos = { x = -4775.541, y = 206.311, z = -3687.141 }, rot = { x = 0.000, y = 67.602, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1135003, name = "GADGET_CREATE_135003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135003", action = "action_EVENT_GADGET_CREATE_135003" },
	{ config_id = 1135004, name = "SELECT_OPTION_135004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135004", action = "", tag = "13501" },
	{ config_id = 1135005, name = "GROUP_WILL_UNLOAD_135005", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135005" },
	{ config_id = 1135008, name = "GADGET_CREATE_135008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135008", action = "action_EVENT_GADGET_CREATE_135008" },
	{ config_id = 1135009, name = "SELECT_OPTION_135009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135009", action = "", tag = "13502" },
	{ config_id = 1135010, name = "GROUP_WILL_UNLOAD_135010", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135010" },
	{ config_id = 1135013, name = "GADGET_CREATE_135013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135013", action = "action_EVENT_GADGET_CREATE_135013", trigger_count = 0 },
	{ config_id = 1135014, name = "SELECT_OPTION_135014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135014", action = "", tag = "13503" },
	{ config_id = 1135015, name = "GROUP_WILL_UNLOAD_135015", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135015" },
	{ config_id = 1135016, name = "CHALLENGE_SUCCESS_135016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135016" },
	{ config_id = 1135017, name = "CHALLENGE_FAIL_135017", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135017" },
	{ config_id = 1135018, name = "CHALLENGE_FAIL_135018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135018" },
	{ config_id = 1135019, name = "CHALLENGE_SUCCESS_135019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135019" },
	{ config_id = 1135020, name = "CHALLENGE_FAIL_135020", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135020" },
	{ config_id = 1135021, name = "CHALLENGE_SUCCESS_135021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135021" },
	{ config_id = 1135022, name = "QUEST_FINISH_135022", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135022" },
	{ config_id = 1135023, name = "QUEST_FINISH_135023", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135023" },
	{ config_id = 1135024, name = "QUEST_FINISH_135024", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135024" },
	{ config_id = 1135027, name = "GADGET_CREATE_135027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135027", action = "action_EVENT_GADGET_CREATE_135027" },
	{ config_id = 1135028, name = "SELECT_OPTION_135028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135028", action = "", tag = "13504" },
	{ config_id = 1135029, name = "GROUP_WILL_UNLOAD_135029", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135029" },
	{ config_id = 1135030, name = "CHALLENGE_SUCCESS_135030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135030" },
	{ config_id = 1135031, name = "CHALLENGE_FAIL_135031", event = EventType.EVENT_CHALLENGE_FAIL, source = "1004", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135031" },
	{ config_id = 1135032, name = "QUEST_FINISH_135032", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135032" },
	{ config_id = 1135035, name = "GADGET_CREATE_135035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135035", action = "action_EVENT_GADGET_CREATE_135035" },
	{ config_id = 1135036, name = "SELECT_OPTION_135036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135036", action = "", tag = "13505" },
	{ config_id = 1135037, name = "GROUP_WILL_UNLOAD_135037", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135037" },
	{ config_id = 1135038, name = "CHALLENGE_SUCCESS_135038", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135038" },
	{ config_id = 1135039, name = "CHALLENGE_FAIL_135039", event = EventType.EVENT_CHALLENGE_FAIL, source = "1005", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135039" },
	{ config_id = 1135040, name = "QUEST_FINISH_135040", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135040" },
	{ config_id = 1135043, name = "GADGET_CREATE_135043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_135043", action = "action_EVENT_GADGET_CREATE_135043" },
	{ config_id = 1135044, name = "SELECT_OPTION_135044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_135044", action = "", tag = "13506" },
	{ config_id = 1135045, name = "GROUP_WILL_UNLOAD_135045", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_135045" },
	{ config_id = 1135046, name = "CHALLENGE_SUCCESS_135046", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1006", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_135046" },
	{ config_id = 1135047, name = "CHALLENGE_FAIL_135047", event = EventType.EVENT_CHALLENGE_FAIL, source = "1006", condition = "", action = "action_EVENT_CHALLENGE_FAIL_135047" },
	{ config_id = 1135048, name = "QUEST_FINISH_135048", event = EventType.EVENT_QUEST_FINISH, source = "2204101", condition = "", action = "action_EVENT_QUEST_FINISH_135048" }
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
		gadgets = { 135002 },
		regions = { },
		triggers = { "GADGET_CREATE_135003", "SELECT_OPTION_135004", "GROUP_WILL_UNLOAD_135005", "CHALLENGE_SUCCESS_135016", "CHALLENGE_FAIL_135017", "QUEST_FINISH_135022" },
		npcs = { 135001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 135007 },
		regions = { },
		triggers = { "GADGET_CREATE_135008", "SELECT_OPTION_135009", "GROUP_WILL_UNLOAD_135010", "CHALLENGE_FAIL_135018", "CHALLENGE_SUCCESS_135019", "QUEST_FINISH_135023" },
		npcs = { 135006 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 135012 },
		regions = { },
		triggers = { "GADGET_CREATE_135013", "SELECT_OPTION_135014", "GROUP_WILL_UNLOAD_135015", "CHALLENGE_FAIL_135020", "CHALLENGE_SUCCESS_135021", "QUEST_FINISH_135024" },
		npcs = { 135011 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 135026 },
		regions = { },
		triggers = { "GADGET_CREATE_135027", "SELECT_OPTION_135028", "GROUP_WILL_UNLOAD_135029", "CHALLENGE_SUCCESS_135030", "CHALLENGE_FAIL_135031", "QUEST_FINISH_135032" },
		npcs = { 135025 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 135034 },
		regions = { },
		triggers = { "GADGET_CREATE_135035", "SELECT_OPTION_135036", "GROUP_WILL_UNLOAD_135037", "CHALLENGE_SUCCESS_135038", "CHALLENGE_FAIL_135039", "QUEST_FINISH_135040" },
		npcs = { 135033 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 135042 },
		regions = { },
		triggers = { "GADGET_CREATE_135043", "SELECT_OPTION_135044", "GROUP_WILL_UNLOAD_135045", "CHALLENGE_SUCCESS_135046", "CHALLENGE_FAIL_135047", "QUEST_FINISH_135048" },
		npcs = { 135041 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_135003(context, evt)
	if 135002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135004(context, evt)
	-- 判断是gadgetid 135002 option_id 2903
	if 135002 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135005(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_135008(context, evt)
	if 135007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135009(context, evt)
	-- 判断是gadgetid 135007 option_id 2903
	if 135007 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135010(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_135013(context, evt)
	if 135012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135014(context, evt)
	-- 判断是gadgetid 135012 option_id 2903
	if 135012 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135015(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135016(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135017(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135018(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135019(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135020(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135021(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135022(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135002
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135002)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1001（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 2001005, 120, 9, 13501, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135023(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135007
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135007)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1002（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 2001005, 120, 9, 13502, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135024(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135012
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135012)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1003（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 2001005, 120, 9, 13503, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_135027(context, evt)
	if 135026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135028(context, evt)
	-- 判断是gadgetid 135026 option_id 2903
	if 135026 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135029(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135030(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135031(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135032(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135026
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135026)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1004（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1004, 2001005, 120, 9, 13504, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_135035(context, evt)
	if 135034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135036(context, evt)
	-- 判断是gadgetid 135034 option_id 2903
	if 135034 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135037(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135038(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135039(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135040(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135034
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135034)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1005（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1005, 2001005, 120, 9, 13505, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_135043(context, evt)
	if 135042 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_135043(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {2903}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_135044(context, evt)
	-- 判断是gadgetid 135042 option_id 2903
	if 135042 ~= evt.param1 then
		return false	
	end
	
	if 2903 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_WILL_UNLOAD_135045(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_135046(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOSUC") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_135047(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q22041ZHAOMAOFAIL") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_135048(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为135042
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,135042)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	-- 创建编号为1006（该挑战的识别id),挑战内容为2001005的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1006, 2001005, 120, 9, 13506, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end