-- 基础信息
local base_info = {
	group_id = 133107935
}

-- Trigger变量
local defs = {
	gadget_2 = 935010,
	gadget_3 = 935011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 935004, monster_id = 28030406, pos = { x = -469.412, y = 230.362, z = 456.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 935005, monster_id = 28030406, pos = { x = -467.015, y = 230.362, z = 457.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 935006, monster_id = 28030407, pos = { x = -468.236, y = 230.358, z = 455.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 935007, monster_id = 28030409, pos = { x = -468.835, y = 230.367, z = 458.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 935008, monster_id = 28030408, pos = { x = -466.920, y = 230.359, z = 456.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 935010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -468.147, y = 230.363, z = 457.212 }, area_id = 7 },
	{ config_id = 935011, shape = RegionShape.SPHERE, radius = 30, pos = { x = -619.808, y = 253.907, z = 394.139 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1935001, name = "ANY_MONSTER_DIE_935001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_935001", trigger_count = 0 },
	{ config_id = 1935010, name = "ENTER_REGION_935010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_935010", action = "action_EVENT_ENTER_REGION_935010", trigger_count = 0 },
	{ config_id = 1935011, name = "ENTER_REGION_935011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_935011", action = "action_EVENT_ENTER_REGION_935011", trigger_count = 0 }
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
		monsters = { 935004, 935005, 935006, 935007, 935008 },
		gadgets = { },
		regions = { 935010, 935011 },
		triggers = { "ANY_MONSTER_DIE_935001", "ENTER_REGION_935010", "ENTER_REGION_935011" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 935011 },
		triggers = { "ENTER_REGION_935011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_935001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079351") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_935010(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7180903) == QuestState.UNFINISHED and evt.param1 == defs.gadget_2 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_935010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079342") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-468，231，457），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-468, y=231, z=457}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_935011(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7180904) == QuestState.UNFINISHED and evt.param1 == defs.gadget_3 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_935011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079343") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end