-- 基础信息
local base_info = {
	group_id = 133308730
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
	{ config_id = 730001, gadget_id = 70360001, pos = { x = -1517.140, y = 62.830, z = 4975.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 730002, shape = RegionShape.SPHERE, radius = 17, pos = { x = -1505.575, y = 63.120, z = 4956.206 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1730002, name = "ENTER_REGION_730002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_730002" }
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
		gadgets = { 730001 },
		regions = { 730002 },
		triggers = { "ENTER_REGION_730002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_730002(context, evt)
	-- 调用提示id为 1000140063 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1521.465, y=60.60065, z=4991}，持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1521.465, y=60.60065, z=4991}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end