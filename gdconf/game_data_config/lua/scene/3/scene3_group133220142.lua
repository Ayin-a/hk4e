-- 基础信息
local base_info = {
	group_id = 133220142
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
	{ config_id = 142002, gadget_id = 70300093, pos = { x = -2617.419, y = 200.385, z = -4051.205 }, rot = { x = 0.000, y = 251.899, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 142007, gadget_id = 70710350, pos = { x = -2615.982, y = 200.416, z = -4055.892 }, rot = { x = 0.000, y = 354.746, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142008, gadget_id = 70710350, pos = { x = -2604.828, y = 200.442, z = -4093.806 }, rot = { x = 0.000, y = 339.952, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142009, gadget_id = 70710350, pos = { x = -2592.774, y = 212.457, z = -4142.224 }, rot = { x = 0.000, y = 44.500, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142010, gadget_id = 70710350, pos = { x = -2614.473, y = 211.203, z = -4153.111 }, rot = { x = 0.000, y = 81.392, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142011, gadget_id = 70300093, pos = { x = -2635.630, y = 211.573, z = -4168.541 }, rot = { x = 0.000, y = 161.607, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142012, gadget_id = 70710350, pos = { x = -2637.825, y = 211.037, z = -4167.228 }, rot = { x = 0.000, y = 36.634, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 142013, gadget_id = 70710350, pos = { x = -2613.976, y = 200.082, z = -4073.434 }, rot = { x = 359.696, y = 350.398, z = 2.457 }, level = 1, area_id = 11 },
	{ config_id = 142014, gadget_id = 70710350, pos = { x = -2588.329, y = 209.898, z = -4129.822 }, rot = { x = 12.973, y = 2.334, z = 5.744 }, level = 1, area_id = 11 },
	{ config_id = 142015, gadget_id = 70710350, pos = { x = -2648.901, y = 210.345, z = -4177.295 }, rot = { x = 359.383, y = 55.255, z = 6.931 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 142003, shape = RegionShape.SPHERE, radius = 18, pos = { x = -2617.330, y = 200.340, z = -4049.621 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1142003, name = "ENTER_REGION_142003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_142003", action = "action_EVENT_ENTER_REGION_142003" }
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
		gadgets = { 142002, 142007, 142008, 142009, 142010, 142011, 142012, 142013, 142014, 142015 },
		regions = { 142003 },
		triggers = { "ENTER_REGION_142003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_142003(context, evt)
	if evt.param1 ~= 142003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_142003(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2617，200，-4049），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2617, y=200, z=-4049}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2617,y=200,z=-4049}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021166, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332201421") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end