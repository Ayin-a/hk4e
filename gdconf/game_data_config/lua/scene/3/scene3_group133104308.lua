-- 基础信息
local base_info = {
	group_id = 133104308
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
	{ config_id = 308001, gadget_id = 70690012, pos = { x = -125.492, y = 290.072, z = 130.632 }, rot = { x = 0.000, y = 92.284, z = 0.000 }, level = 5, area_id = 7 },
	{ config_id = 308002, gadget_id = 70690001, pos = { x = -118.034, y = 302.660, z = 117.875 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308003, gadget_id = 70690001, pos = { x = -115.998, y = 302.202, z = 111.193 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308004, gadget_id = 70690001, pos = { x = -113.962, y = 301.744, z = 104.512 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308005, gadget_id = 70690001, pos = { x = -111.925, y = 301.286, z = 97.830 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308006, gadget_id = 70690001, pos = { x = -109.889, y = 300.828, z = 91.148 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308007, gadget_id = 70690001, pos = { x = -107.842, y = 300.918, z = 84.432 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308008, gadget_id = 70690001, pos = { x = -105.816, y = 299.911, z = 77.785 }, rot = { x = 3.753, y = 163.051, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308009, gadget_id = 70710126, pos = { x = -123.355, y = 290.441, z = 130.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308013, gadget_id = 70690001, pos = { x = -98.151, y = 295.683, z = 49.913 }, rot = { x = 6.272, y = 167.322, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308014, gadget_id = 70690001, pos = { x = -96.649, y = 294.931, z = 43.236 }, rot = { x = 16.783, y = 186.906, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 308015, gadget_id = 70690001, pos = { x = -97.455, y = 292.910, z = 36.583 }, rot = { x = 16.783, y = 186.906, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 308011, shape = RegionShape.SPHERE, radius = 25, pos = { x = -106.343, y = 253.448, z = -38.396 }, area_id = 7 },
	{ config_id = 308012, shape = RegionShape.SPHERE, radius = 4, pos = { x = -123.344, y = 290.446, z = 130.567 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1308010, name = "GROUP_LOAD_308010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_308010" },
	{ config_id = 1308011, name = "ENTER_REGION_308011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308011", action = "action_EVENT_ENTER_REGION_308011" },
	{ config_id = 1308012, name = "ENTER_REGION_308012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308012", action = "action_EVENT_ENTER_REGION_308012" },
	{ config_id = 1308016, name = "TIME_AXIS_PASS_308016", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_308016" }
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
		gadgets = { 308001, 308002, 308003, 308004, 308005, 308006, 308013, 308014, 308015 },
		regions = { 308011 },
		triggers = { "GROUP_LOAD_308010", "ENTER_REGION_308011", "TIME_AXIS_PASS_308016" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_308010(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_308011(context, evt)
	if evt.param1 ~= 308011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_308011(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104308, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_308012(context, evt)
	if evt.param1 ~= 308012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_308012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133104308, EntityType.GADGET, 308009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_308016(context, evt)
	-- 触发镜头注目，注目位置为坐标（-123，300，130），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-123, y=300, z=130}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end