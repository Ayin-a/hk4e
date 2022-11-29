-- 基础信息
local base_info = {
	group_id = 166001188
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
	{ config_id = 188002, npc_id = 20561, pos = { x = 757.982, y = 708.493, z = 220.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 188001, shape = RegionShape.SPHERE, radius = 25, pos = { x = 756.734, y = 707.632, z = 219.805 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1188001, name = "ENTER_REGION_188001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_188001" }
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
		regions = { 188001 },
		triggers = { "ENTER_REGION_188001" },
		npcs = { 188002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_188001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=756.7341, y=707.6315, z=219.8048}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=756.7341, y=707.6315, z=219.8048}
	  local pos_follow = {x=756.7341, y=707.6315, z=219.8048}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 1 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010173 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end