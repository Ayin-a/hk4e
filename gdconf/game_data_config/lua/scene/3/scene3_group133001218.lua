-- 基础信息
local base_info = {
	group_id = 133001218
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
	{ config_id = 218001, gadget_id = 70690011, pos = { x = 2264.325, y = 252.943, z = -408.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218002, gadget_id = 70690001, pos = { x = 2281.784, y = 276.137, z = -400.273 }, rot = { x = 345.483, y = 60.770, z = 9.137 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218003, gadget_id = 70690001, pos = { x = 2290.232, y = 278.643, z = -395.547 }, rot = { x = 345.483, y = 60.770, z = 9.137 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218004, gadget_id = 70690001, pos = { x = 2298.679, y = 281.150, z = -390.819 }, rot = { x = 345.483, y = 60.770, z = 9.137 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218005, gadget_id = 70690001, pos = { x = 2307.127, y = 283.657, z = -386.092 }, rot = { x = 345.483, y = 60.770, z = 9.137 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218006, gadget_id = 70690001, pos = { x = 2330.985, y = 286.876, z = -373.521 }, rot = { x = 343.505, y = 60.629, z = 9.498 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218007, gadget_id = 70690001, pos = { x = 2339.342, y = 289.716, z = -368.819 }, rot = { x = 343.505, y = 60.629, z = 9.498 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218008, gadget_id = 70690001, pos = { x = 2347.697, y = 292.555, z = -364.116 }, rot = { x = 343.505, y = 60.629, z = 9.498 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218009, gadget_id = 70690001, pos = { x = 2356.052, y = 295.394, z = -359.414 }, rot = { x = 343.505, y = 60.629, z = 9.498 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218010, gadget_id = 70690011, pos = { x = 2375.740, y = 286.315, z = -352.241 }, rot = { x = 0.000, y = 343.187, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218011, gadget_id = 70690001, pos = { x = 2375.038, y = 308.492, z = -335.531 }, rot = { x = 346.338, y = 359.655, z = 10.550 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218012, gadget_id = 70690001, pos = { x = 2374.979, y = 310.854, z = -325.815 }, rot = { x = 346.338, y = 359.655, z = 10.550 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218013, gadget_id = 70690001, pos = { x = 2374.921, y = 313.216, z = -316.099 }, rot = { x = 346.338, y = 359.655, z = 10.550 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218014, gadget_id = 70690001, pos = { x = 2374.863, y = 315.578, z = -306.382 }, rot = { x = 346.338, y = 359.655, z = 10.550 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218015, gadget_id = 70690001, pos = { x = 2374.822, y = 310.855, z = -279.583 }, rot = { x = 1.753, y = 358.639, z = 10.177 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218016, gadget_id = 70690001, pos = { x = 2374.587, y = 310.549, z = -269.590 }, rot = { x = 1.753, y = 358.638, z = 10.177 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218017, gadget_id = 70690001, pos = { x = 2374.348, y = 310.243, z = -259.598 }, rot = { x = 1.753, y = 358.638, z = 10.177 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 218018, gadget_id = 70690001, pos = { x = 2374.111, y = 309.937, z = -249.606 }, rot = { x = 1.753, y = 358.638, z = 10.177 }, level = 5, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 218019, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2261.861, y = 252.744, z = -409.153 }, area_id = 3 },
	{ config_id = 218020, shape = RegionShape.SPHERE, radius = 25, pos = { x = 2378.393, y = 304.291, z = -226.139 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1218019, name = "ENTER_REGION_218019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218019", action = "action_EVENT_ENTER_REGION_218019", trigger_count = 0 },
	{ config_id = 1218020, name = "ENTER_REGION_218020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218020", action = "action_EVENT_ENTER_REGION_218020" },
	{ config_id = 1218021, name = "TIME_AXIS_PASS_218021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_218021" }
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
		gadgets = { 218001, 218002, 218003, 218004, 218005, 218006, 218007, 218008, 218009, 218010, 218011, 218012, 218013, 218014, 218015, 218016, 218017, 218018 },
		regions = { 218019, 218020 },
		triggers = { "ENTER_REGION_218019", "ENTER_REGION_218020", "TIME_AXIS_PASS_218021" },
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
function condition_EVENT_ENTER_REGION_218019(context, evt)
	if evt.param1 ~= 218019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218019(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218020(context, evt)
	if evt.param1 ~= 218020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001218, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_218021(context, evt)
	-- 触发镜头注目，注目位置为坐标（2264，258，-409），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2264, y=258, z=-409}
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