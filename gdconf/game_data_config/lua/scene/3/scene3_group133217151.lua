-- 基础信息
local base_info = {
	group_id = 133217151
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
	{ config_id = 151002, gadget_id = 70360001, pos = { x = -4746.149, y = 200.970, z = -3641.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 151003, gadget_id = 70360001, pos = { x = -4697.573, y = 201.108, z = -3610.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 151004, gadget_id = 70360001, pos = { x = -4721.472, y = 230.446, z = -3788.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 151008, gadget_id = 70360001, pos = { x = -4722.143, y = 214.626, z = -3679.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 151010, gadget_id = 70360001, pos = { x = -4660.363, y = 200.367, z = -3725.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 151011, gadget_id = 70360001, pos = { x = -4786.824, y = 200.000, z = -3717.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 151006, shape = RegionShape.SPHERE, radius = 120, pos = { x = -4716.703, y = 214.396, z = -3684.996 }, area_id = 14, vision_type_list = { 32170001 } },
	{ config_id = 151009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4746.114, y = 200.969, z = -3641.437 }, area_id = 14 },
	{ config_id = 151012, shape = RegionShape.SPHERE, radius = 120, pos = { x = -4726.049, y = 215.868, z = -3685.032 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1151001, name = "CHALLENGE_SUCCESS_151001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111192", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_151001", trigger_count = 0 },
	{ config_id = 1151005, name = "CHALLENGE_FAIL_151005", event = EventType.EVENT_CHALLENGE_FAIL, source = "111192", condition = "", action = "action_EVENT_CHALLENGE_FAIL_151005", trigger_count = 0 },
	{ config_id = 1151007, name = "QUEST_START_151007", event = EventType.EVENT_QUEST_START, source = "7221002", condition = "", action = "action_EVENT_QUEST_START_151007", trigger_count = 0 },
	{ config_id = 1151009, name = "ENTER_REGION_151009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151009", action = "action_EVENT_ENTER_REGION_151009", trigger_count = 0, tag = "151009" },
	{ config_id = 1151012, name = "LEAVE_REGION_151012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_151012", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 151006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 151002, 151003, 151004, 151008, 151010, 151011 },
		regions = { 151006, 151009, 151012 },
		triggers = { "CHALLENGE_SUCCESS_151001", "CHALLENGE_FAIL_151005", "QUEST_START_151007", "ENTER_REGION_151009", "LEAVE_REGION_151012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_151001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_151005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221002Fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_151007(context, evt)
	-- 创建编号为111192（该挑战的识别id),挑战内容为111192的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 111192, 111192, 180, 4, 151009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为151002
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,151002)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_151009(context, evt)
	if evt.param1 ~= 151009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151009(context, evt)
	-- 终止识别id为111192的挑战，并判定成功
		ScriptLib.StopChallenge(context, 111192, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_151012(context, evt)
	-- 终止识别id为111192的挑战，并判定失败
		ScriptLib.StopChallenge(context, 111192, 0)
	
	return 0
end