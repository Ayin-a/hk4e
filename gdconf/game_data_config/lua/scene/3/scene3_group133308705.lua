-- 基础信息
local base_info = {
	group_id = 133308705
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 705004, monster_id = 21010101, pos = { x = -1259.939, y = 64.337, z = 4823.902 }, rot = { x = 0.000, y = 56.063, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9016, area_id = 32 },
	{ config_id = 705005, monster_id = 21010101, pos = { x = -1258.517, y = 64.373, z = 4822.843 }, rot = { x = 0.000, y = 19.659, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9016, area_id = 32 },
	{ config_id = 705006, monster_id = 21020701, pos = { x = -1255.373, y = 63.532, z = 4809.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 705007, monster_id = 21010501, pos = { x = -1261.251, y = 64.352, z = 4798.668 }, rot = { x = 0.000, y = 315.847, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 705008, gadget_id = 70710108, pos = { x = -1258.053, y = 64.583, z = 4824.703 }, rot = { x = 353.220, y = 7.755, z = 9.501 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 705002, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1279.543, y = 63.300, z = 4813.216 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1705001, name = "ANY_MONSTER_DIE_705001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_705001", action = "action_EVENT_ANY_MONSTER_DIE_705001" },
	{ config_id = 1705002, name = "ENTER_REGION_705002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_705002" },
	{ config_id = 1705003, name = "QUEST_FINISH_705003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_705003", action = "action_EVENT_QUEST_FINISH_705003" }
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
		monsters = { 705004, 705005, 705006, 705007 },
		gadgets = { 705008 },
		regions = { 705002 },
		triggers = { "ANY_MONSTER_DIE_705001", "ENTER_REGION_705002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_705001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_705001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7321215") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000160012 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_705002(context, evt)
	-- 调用提示id为 1000160010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1255.373, y=63.48594, z=4809.144}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1255.373, y=63.48594, z=4809.144}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7321214") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_705003(context, evt)
	--检查ID为7321205的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7321205 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_705003(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1152.1, y=111.5079, z=4825.879}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1152.1, y=111.5079, z=4825.879}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end