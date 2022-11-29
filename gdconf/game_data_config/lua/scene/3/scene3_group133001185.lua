-- 基础信息
local base_info = {
	group_id = 133001185
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
	{ config_id = 185001, gadget_id = 70690029, pos = { x = 2022.120, y = 233.640, z = -666.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185002, gadget_id = 70690001, pos = { x = 2010.572, y = 251.018, z = -662.963 }, rot = { x = 358.974, y = 283.174, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185003, gadget_id = 70690001, pos = { x = 2000.837, y = 251.198, z = -660.684 }, rot = { x = 358.973, y = 283.174, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185004, gadget_id = 70690001, pos = { x = 1991.102, y = 251.377, z = -658.406 }, rot = { x = 358.974, y = 283.174, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185005, gadget_id = 70690001, pos = { x = 1981.366, y = 251.556, z = -656.127 }, rot = { x = 358.974, y = 283.174, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185006, gadget_id = 70690001, pos = { x = 1960.025, y = 246.894, z = -654.590 }, rot = { x = 358.973, y = 283.175, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185007, gadget_id = 70690001, pos = { x = 1950.291, y = 247.073, z = -652.310 }, rot = { x = 358.974, y = 283.175, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185008, gadget_id = 70690001, pos = { x = 1891.206, y = 263.111, z = -591.000 }, rot = { x = 358.973, y = 356.025, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185009, gadget_id = 70690001, pos = { x = 1890.512, y = 263.290, z = -581.026 }, rot = { x = 358.974, y = 356.025, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185010, gadget_id = 70690001, pos = { x = 1920.079, y = 268.657, z = -634.936 }, rot = { x = 358.974, y = 324.856, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185011, gadget_id = 70690001, pos = { x = 1914.324, y = 268.836, z = -626.761 }, rot = { x = 358.973, y = 324.856, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185012, gadget_id = 70690001, pos = { x = 1908.568, y = 269.015, z = -618.585 }, rot = { x = 358.974, y = 324.856, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185013, gadget_id = 70690001, pos = { x = 1902.813, y = 269.194, z = -610.408 }, rot = { x = 358.974, y = 324.856, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185014, gadget_id = 70690001, pos = { x = 1889.820, y = 263.469, z = -571.050 }, rot = { x = 358.974, y = 356.025, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 185016, gadget_id = 70690013, pos = { x = 1931.855, y = 215.983, z = -649.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 185017, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2039.386, y = 237.422, z = -675.261 }, area_id = 3 },
	{ config_id = 185018, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1890.614, y = 263.999, z = -539.991 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1185017, name = "ENTER_REGION_185017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185017", action = "action_EVENT_ENTER_REGION_185017", trigger_count = 0 },
	{ config_id = 1185018, name = "ENTER_REGION_185018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185018", action = "action_EVENT_ENTER_REGION_185018" },
	{ config_id = 1185019, name = "TIME_AXIS_PASS_185019", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_185019" }
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
		gadgets = { 185001, 185002, 185003, 185004, 185005, 185006, 185007, 185008, 185009, 185010, 185011, 185012, 185013, 185014, 185016 },
		regions = { 185017, 185018 },
		triggers = { "ENTER_REGION_185017", "ENTER_REGION_185018", "TIME_AXIS_PASS_185019" },
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
function condition_EVENT_ENTER_REGION_185017(context, evt)
	if evt.param1 ~= 185017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185017(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185018(context, evt)
	if evt.param1 ~= 185018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001185, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_185019(context, evt)
	-- 触发镜头注目，注目位置为坐标（2022，235，-666），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2022, y=235, z=-666}
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