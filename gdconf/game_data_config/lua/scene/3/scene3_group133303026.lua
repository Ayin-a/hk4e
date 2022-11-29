-- 基础信息
local base_info = {
	group_id = 133303026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 25210301, pos = { x = -1932.669, y = 212.322, z = 3173.167 }, rot = { x = 0.000, y = 343.548, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 26002, monster_id = 25210301, pos = { x = -1934.275, y = 213.481, z = 3188.571 }, rot = { x = 0.000, y = 203.547, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 26003, monster_id = 25210201, pos = { x = -1938.843, y = 214.237, z = 3188.934 }, rot = { x = 0.000, y = 188.581, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 },
	{ config_id = 26005, monster_id = 25210501, pos = { x = -1937.190, y = 212.859, z = 3172.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1026004, name = "ANY_MONSTER_DIE_26004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26004", action = "action_EVENT_ANY_MONSTER_DIE_26004" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 26001, 26002, 26003, 26005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7302307_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1940.195, y=215.9773, z=3208.406}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1940.195, y=215.9773, z=3208.406}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end