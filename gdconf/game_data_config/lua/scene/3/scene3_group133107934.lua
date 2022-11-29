-- 基础信息
local base_info = {
	group_id = 133107934
}

-- Trigger变量
local defs = {
	gadget_1 = 934003,
	gadget_2 = 934005,
	gadget_3 = 934011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 934001, monster_id = 28020410, pos = { x = -604.779, y = 204.809, z = 130.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 7 },
	{ config_id = 934002, monster_id = 28020409, pos = { x = -609.177, y = 204.749, z = 125.244 }, rot = { x = 0.000, y = 344.686, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 7 },
	{ config_id = 934004, monster_id = 28020410, pos = { x = -603.898, y = 204.749, z = 125.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, pose_id = 3, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 934003, shape = RegionShape.SPHERE, radius = 13, pos = { x = -607.113, y = 204.809, z = 130.592 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1934003, name = "ENTER_REGION_934003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_934003", action = "action_EVENT_ENTER_REGION_934003", trigger_count = 0 }
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
		monsters = { 934001, 934002, 934004 },
		gadgets = { },
		regions = { 934003 },
		triggers = { "ENTER_REGION_934003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_934003(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 7180902) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_934003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331079341") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-607，205，130），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-607, y=205, z=130}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end