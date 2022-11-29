-- 基础信息
local base_info = {
	group_id = 133217160
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
	{ config_id = 160001, gadget_id = 70360001, pos = { x = -4739.128, y = 233.318, z = -3708.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 160006, gadget_id = 70360001, pos = { x = -4732.611, y = 214.691, z = -3665.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 160008, gadget_id = 70360001, pos = { x = -4788.985, y = 200.000, z = -3675.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 160009, gadget_id = 70360001, pos = { x = -4699.985, y = 201.379, z = -3612.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 160010, gadget_id = 70360001, pos = { x = -4667.034, y = 203.638, z = -3711.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 160011, gadget_id = 70360001, pos = { x = -4717.541, y = 200.384, z = -3789.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 160005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -4737.968, y = 235.521, z = -3708.475 }, area_id = 14 },
	{ config_id = 160007, shape = RegionShape.SPHERE, radius = 110, pos = { x = -4716.703, y = 214.396, z = -3684.996 }, area_id = 14 },
	{ config_id = 160012, shape = RegionShape.SPHERE, radius = 120, pos = { x = -4734.997, y = 219.404, z = -3686.895 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1160002, name = "QUEST_START_160002", event = EventType.EVENT_QUEST_START, source = "7221003", condition = "", action = "action_EVENT_QUEST_START_160002", trigger_count = 0 },
	{ config_id = 1160003, name = "CHALLENGE_SUCCESS_160003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111193", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_160003", trigger_count = 0 },
	{ config_id = 1160004, name = "CHALLENGE_FAIL_160004", event = EventType.EVENT_CHALLENGE_FAIL, source = "111193", condition = "", action = "action_EVENT_CHALLENGE_FAIL_160004", trigger_count = 0 },
	{ config_id = 1160005, name = "ENTER_REGION_160005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160005", action = "action_EVENT_ENTER_REGION_160005", trigger_count = 0, tag = "160005" },
	{ config_id = 1160012, name = "LEAVE_REGION_160012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_160012", trigger_count = 0 }
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
		regions = { 160007 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 160001, 160006, 160008, 160009, 160010, 160011 },
		regions = { 160005, 160007, 160012 },
		triggers = { "QUEST_START_160002", "CHALLENGE_SUCCESS_160003", "CHALLENGE_FAIL_160004", "ENTER_REGION_160005", "LEAVE_REGION_160012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_160002(context, evt)
	-- 创建编号为111193（该挑战的识别id),挑战内容为111193的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 111193, 111193, 180, 4, 160005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为160001
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,160001)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_160003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221003") then
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
function action_EVENT_CHALLENGE_FAIL_160004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7221003Fail") then
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

-- 触发条件
function condition_EVENT_ENTER_REGION_160005(context, evt)
	if evt.param1 ~= 160005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160005(context, evt)
	-- 终止识别id为111193的挑战，并判定成功
		ScriptLib.StopChallenge(context, 111193, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_160012(context, evt)
	-- 终止识别id为111193的挑战，并判定失败
		ScriptLib.StopChallenge(context, 111193, 0)
	
	return 0
end