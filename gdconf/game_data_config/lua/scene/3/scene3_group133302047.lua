-- 基础信息
local base_info = {
	group_id = 133302047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 28060203, pos = { x = -904.360, y = 206.383, z = 2598.295 }, rot = { x = 0.000, y = 135.172, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 5215, 1008 }, pose_id = 1, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 47010, monster_id = 28060203, pos = { x = -900.420, y = 206.501, z = 2600.709 }, rot = { x = 0.000, y = 205.567, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 6, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 47012, monster_id = 28060203, pos = { x = -920.043, y = 205.545, z = 2595.962 }, rot = { x = 0.000, y = 98.872, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 1, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 47013, monster_id = 28060203, pos = { x = -923.876, y = 205.745, z = 2593.631 }, rot = { x = 0.000, y = 98.872, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 1, area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47006, gadget_id = 70710825, pos = { x = -904.360, y = 206.383, z = 2598.295 }, rot = { x = 0.000, y = 135.172, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 24 },
	{ config_id = 47009, gadget_id = 70710651, pos = { x = -901.601, y = 206.289, z = 2595.900 }, rot = { x = 0.000, y = 303.289, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1047002, name = "MONSTER_BATTLE_47002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_47002", action = "action_EVENT_MONSTER_BATTLE_47002", trigger_count = 0 },
	{ config_id = 1047003, name = "CHALLENGE_SUCCESS_47003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_47003" },
	{ config_id = 1047004, name = "QUEST_START_47004", event = EventType.EVENT_QUEST_START, source = "1300707", condition = "", action = "action_EVENT_QUEST_START_47004", trigger_count = 0 },
	{ config_id = 1047005, name = "QUEST_START_47005", event = EventType.EVENT_QUEST_START, source = "1300713", condition = "", action = "action_EVENT_QUEST_START_47005", trigger_count = 0 },
	{ config_id = 1047007, name = "CHALLENGE_FAIL_47007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_47007" },
	{ config_id = 1047008, name = "GADGET_CREATE_47008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47008", action = "action_EVENT_GADGET_CREATE_47008", trigger_count = 0 },
	{ config_id = 1047011, name = "MONSTER_BATTLE_47011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_47011", action = "action_EVENT_MONSTER_BATTLE_47011", trigger_count = 0 },
	{ config_id = 1047014, name = "ANY_MONSTER_DIE_47014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47014", action = "action_EVENT_ANY_MONSTER_DIE_47014" }
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
		regions = { },
		triggers = { "QUEST_START_47004", "QUEST_START_47005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 47001, 47010 },
		gadgets = { 47006, 47009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_47002", "CHALLENGE_SUCCESS_47003", "CHALLENGE_FAIL_47007", "GADGET_CREATE_47008", "MONSTER_BATTLE_47011", "ANY_MONSTER_DIE_47014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_47002(context, evt)
	if 47001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_47002(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302047, EntityType.GADGET, 47006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_47003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330204701") then
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
function action_EVENT_QUEST_START_47004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302047, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建编号为180（该挑战的识别id),挑战内容为272的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 272, 240, 133302047, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_47005(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
	-- 终止识别id为272的挑战，并判定失败
		ScriptLib.StopChallenge(context, 272, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_47007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13330204702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302047, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_47008(context, evt)
	if 47006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_47008(context, evt)
	-- 对于当前玩家，启动9001的目标物距离指示gallery，目标config_id为47006
	if 0 ~= ScriptLib.StartGallery(context, 9001) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: start gallery fails")
	    return -1
	end
	local target_entity_id = ScriptLib.GetEntityIdByConfigId(context,47006)
	local target_pos = ScriptLib.GetPosByEntityId(context, target_entity_id)
	if 0~=  ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=target_pos.x,y=target_pos.y,z=target_pos.z}, {x=0,y=0,z=0}) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_target_distance_gallery: set target fails")
	    return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_47011(context, evt)
	if 47010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_47011(context, evt)
	-- 对于当前玩家，关闭9001的目标物距离指示gallery
	    if 0 ~=  ScriptLib.StopGallery(context, 9001, true) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_target_distance_gallery: stop gallery fails")
	        return -1
	    end
	
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302047, EntityType.GADGET, 47006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_47014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133302047) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_47014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 47013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end