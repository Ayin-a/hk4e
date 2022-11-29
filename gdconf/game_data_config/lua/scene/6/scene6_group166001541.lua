-- 基础信息
local base_info = {
	group_id = 166001541
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
	{ config_id = 541001, gadget_id = 70500000, pos = { x = 360.557, y = 179.045, z = 966.750 }, rot = { x = 77.370, y = 300.013, z = 24.085 }, level = 36, point_type = 9302, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 541004, gadget_id = 70300203, pos = { x = 360.251, y = 179.077, z = 966.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 541002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 362.537, y = 179.064, z = 965.545 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1541002, name = "ENTER_REGION_541002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_541002", action = "action_EVENT_ENTER_REGION_541002" },
	{ config_id = 1541003, name = "GATHER_541003", event = EventType.EVENT_GATHER, source = "", condition = "", action = "action_EVENT_GATHER_541003" }
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
		gadgets = { 541001, 541004 },
		regions = { 541002 },
		triggers = { "ENTER_REGION_541002", "GATHER_541003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_541002(context, evt)
	if evt.param1 ~= 541002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_541002(context, evt)
	-- 触发镜头注目，注目位置为坐标（360.5571，179.0454，966.7498），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=360.5571, y=179.0454, z=966.7498}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 60010361 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010361) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GATHER_541003(context, evt)
	-- 调用提示id为 60010362 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010362) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001541, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end