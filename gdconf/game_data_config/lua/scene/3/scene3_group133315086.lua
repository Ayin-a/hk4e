-- 基础信息
local base_info = {
	group_id = 133315086
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
}

-- 区域
regions = {
	-- 60010444
	{ config_id = 86001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -88.536, y = 184.494, z = 2833.184 }, area_id = 20 },
	{ config_id = 86002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -80.713, y = 184.464, z = 2814.890 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 60010444
	{ config_id = 1086001, name = "ENTER_REGION_86001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86001", action = "action_EVENT_ENTER_REGION_86001" },
	{ config_id = 1086002, name = "ENTER_REGION_86002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86002", action = "action_EVENT_ENTER_REGION_86002" }
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
		regions = { 86001, 86002 },
		triggers = { "ENTER_REGION_86001", "ENTER_REGION_86002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_86001(context, evt)
	if evt.param1 ~= 86001 then return false end
	
	-- 判断是区域86001
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 86001 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86001(context, evt)
	-- 调用提示id为 730630901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730630901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_86002(context, evt)
	if evt.param1 ~= 86002 then return false end
	
	-- 判断是区域86002
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 86002 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86002(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-57.71034, y=189.0032, z=2824.445}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-57.71034, y=189.0032, z=2824.445}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 730630902 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730630902) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end