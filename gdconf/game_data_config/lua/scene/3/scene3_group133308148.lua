-- 基础信息
local base_info = {
	group_id = 133308148
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
	{ config_id = 148001, gadget_id = 70300118, pos = { x = -1155.517, y = 106.439, z = 4804.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 148002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1158.635, y = 104.333, z = 4804.668 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1148002, name = "ENTER_REGION_148002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_148002" },
	{ config_id = 1148003, name = "QUEST_FINISH_148003", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_148003", action = "action_EVENT_QUEST_FINISH_148003" }
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
		gadgets = { 148001 },
		regions = { 148002 },
		triggers = { "ENTER_REGION_148002", "QUEST_FINISH_148003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_148002(context, evt)
	-- 调用提示id为 1000160002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_148003(context, evt)
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
function action_EVENT_QUEST_FINISH_148003(context, evt)
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