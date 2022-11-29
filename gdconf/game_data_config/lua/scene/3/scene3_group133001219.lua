-- 基础信息
local base_info = {
	group_id = 133001219
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
	{ config_id = 219001, gadget_id = 70690011, pos = { x = 2420.591, y = 300.664, z = -269.449 }, rot = { x = 0.000, y = 14.037, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219002, gadget_id = 70690001, pos = { x = 2430.982, y = 325.226, z = -283.388 }, rot = { x = 2.284, y = 142.950, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219003, gadget_id = 70690001, pos = { x = 2437.001, y = 324.828, z = -291.363 }, rot = { x = 2.284, y = 142.950, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219004, gadget_id = 70690001, pos = { x = 2443.023, y = 324.429, z = -299.337 }, rot = { x = 2.284, y = 142.950, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219005, gadget_id = 70690001, pos = { x = 2449.042, y = 324.031, z = -307.312 }, rot = { x = 2.284, y = 142.950, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219006, gadget_id = 70690001, pos = { x = 2468.751, y = 317.962, z = -327.882 }, rot = { x = 347.047, y = 116.844, z = 359.599 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219007, gadget_id = 70690001, pos = { x = 2477.446, y = 320.204, z = -332.284 }, rot = { x = 347.047, y = 116.844, z = 359.599 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219008, gadget_id = 70690001, pos = { x = 2486.142, y = 322.446, z = -336.683 }, rot = { x = 347.047, y = 116.844, z = 359.599 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219009, gadget_id = 70690001, pos = { x = 2494.836, y = 324.687, z = -341.084 }, rot = { x = 347.047, y = 116.844, z = 359.599 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219010, gadget_id = 70690001, pos = { x = 2552.983, y = 303.060, z = -369.922 }, rot = { x = 2.284, y = 111.022, z = 3.277 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219011, gadget_id = 70690001, pos = { x = 2562.310, y = 302.662, z = -373.508 }, rot = { x = 2.284, y = 111.022, z = 3.277 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219012, gadget_id = 70690001, pos = { x = 2571.637, y = 302.263, z = -377.091 }, rot = { x = 2.284, y = 111.022, z = 3.277 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219013, gadget_id = 70690001, pos = { x = 2580.963, y = 301.865, z = -380.677 }, rot = { x = 2.284, y = 111.022, z = 3.277 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219014, gadget_id = 70690001, pos = { x = 2606.863, y = 292.774, z = -385.742 }, rot = { x = 29.803, y = 77.649, z = 357.180 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219015, gadget_id = 70690001, pos = { x = 2615.340, y = 287.803, z = -383.889 }, rot = { x = 29.803, y = 77.648, z = 357.180 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219016, gadget_id = 70690001, pos = { x = 2623.046, y = 283.791, z = -382.212 }, rot = { x = 29.803, y = 77.649, z = 357.180 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219020, gadget_id = 70690001, pos = { x = 2631.523, y = 278.820, z = -380.358 }, rot = { x = 29.804, y = 77.649, z = 357.180 }, level = 5, persistent = true, area_id = 4 },
	{ config_id = 219021, gadget_id = 70690011, pos = { x = 2399.906, y = 293.736, z = -228.380 }, rot = { x = 0.000, y = 14.037, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219022, gadget_id = 70690001, pos = { x = 2415.270, y = 318.168, z = -258.172 }, rot = { x = 2.284, y = 152.536, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219023, gadget_id = 70690001, pos = { x = 2410.660, y = 318.567, z = -249.307 }, rot = { x = 2.284, y = 152.536, z = 3.277 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 219024, gadget_id = 70690001, pos = { x = 2406.052, y = 318.965, z = -240.440 }, rot = { x = 2.284, y = 152.536, z = 3.277 }, level = 5, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 219017, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2402.864, y = 295.132, z = -223.917 }, area_id = 3 },
	{ config_id = 219019, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2660.258, y = 267.930, z = -363.848 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1219017, name = "ENTER_REGION_219017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219017", action = "action_EVENT_ENTER_REGION_219017", trigger_count = 0 },
	{ config_id = 1219018, name = "TIME_AXIS_PASS_219018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_219018" },
	{ config_id = 1219019, name = "ENTER_REGION_219019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219019", action = "action_EVENT_ENTER_REGION_219019" }
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
		gadgets = { 219001, 219002, 219003, 219004, 219005, 219006, 219007, 219008, 219009, 219010, 219011, 219012, 219013, 219014, 219015, 219016, 219020, 219021, 219022, 219023, 219024 },
		regions = { 219017, 219019 },
		triggers = { "ENTER_REGION_219017", "TIME_AXIS_PASS_219018", "ENTER_REGION_219019" },
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
function condition_EVENT_ENTER_REGION_219017(context, evt)
	if evt.param1 ~= 219017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219017(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_219018(context, evt)
	-- 触发镜头注目，注目位置为坐标（2400，298，-228），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2400, y=298, z=-228}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400872 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400872) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219019(context, evt)
	if evt.param1 ~= 219019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001219, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end