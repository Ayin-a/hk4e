-- 基础信息
local base_info = {
	group_id = 133225051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51002, monster_id = 22040201, pos = { x = -6221.659, y = 234.553, z = -2464.461 }, rot = { x = 0.000, y = 165.470, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 51003, monster_id = 22040201, pos = { x = -6226.530, y = 235.146, z = -2465.972 }, rot = { x = 0.000, y = 157.371, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 51004, monster_id = 22040201, pos = { x = -6222.727, y = 233.853, z = -2467.727 }, rot = { x = 0.000, y = 152.412, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 51005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -6221.138, y = 227.866, z = -2462.317 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1051005, name = "ENTER_REGION_51005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_51005" },
	{ config_id = 1051006, name = "ANY_MONSTER_DIE_51006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51006", action = "action_EVENT_ANY_MONSTER_DIE_51006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 51001, monster_id = 22050201, pos = { x = -6224.689, y = 235.413, z = -2463.427 }, rot = { x = 0.000, y = 163.632, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		monsters = { 51002, 51003, 51004 },
		gadgets = { },
		regions = { 51005 },
		triggers = { "ENTER_REGION_51005", "ANY_MONSTER_DIE_51006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_51005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6224，235，-2463），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6224, y=235, z=-2463}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 721670007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 721670007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7222706_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end