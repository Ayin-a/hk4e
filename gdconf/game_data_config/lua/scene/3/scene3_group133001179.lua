-- 基础信息
local base_info = {
	group_id = 133001179
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
	{ config_id = 179001, gadget_id = 70690017, pos = { x = 1376.698, y = 275.721, z = -1115.753 }, rot = { x = 0.000, y = 10.116, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179002, gadget_id = 70690001, pos = { x = 1360.776, y = 329.243, z = -1104.012 }, rot = { x = 334.028, y = 298.791, z = 20.972 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179003, gadget_id = 70690001, pos = { x = 1352.897, y = 333.622, z = -1099.681 }, rot = { x = 334.028, y = 298.791, z = 20.972 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179004, gadget_id = 70690001, pos = { x = 1345.020, y = 338.001, z = -1095.352 }, rot = { x = 334.028, y = 298.791, z = 20.972 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179005, gadget_id = 70690001, pos = { x = 1272.187, y = 328.478, z = -1063.951 }, rot = { x = 8.039, y = 271.485, z = 25.990 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179006, gadget_id = 70690001, pos = { x = 1316.714, y = 339.466, z = -1078.478 }, rot = { x = 348.674, y = 288.285, z = 27.915 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179007, gadget_id = 70690001, pos = { x = 1307.404, y = 341.430, z = -1075.400 }, rot = { x = 348.674, y = 288.285, z = 27.915 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179008, gadget_id = 70690001, pos = { x = 1298.095, y = 343.395, z = -1072.323 }, rot = { x = 348.675, y = 288.285, z = 27.915 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179010, gadget_id = 70690001, pos = { x = 1377.344, y = 298.425, z = -1115.584 }, rot = { x = 271.215, y = 101.979, z = 152.502 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179011, gadget_id = 70690001, pos = { x = 1377.518, y = 306.642, z = -1115.620 }, rot = { x = 271.165, y = 101.971, z = 152.512 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179012, gadget_id = 70690001, pos = { x = 1377.705, y = 315.558, z = -1115.660 }, rot = { x = 271.215, y = 102.059, z = 152.424 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179013, gadget_id = 70690001, pos = { x = 1262.289, y = 327.080, z = -1063.693 }, rot = { x = 8.039, y = 271.485, z = 25.989 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 179018, gadget_id = 70690001, pos = { x = 1377.146, y = 289.056, z = -1115.542 }, rot = { x = 271.223, y = 101.976, z = 152.505 }, level = 5, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 179016, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1384.931, y = 276.693, z = -1114.741 }, area_id = 10 },
	{ config_id = 179017, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1233.408, y = 324.772, z = -1064.078 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1179009, name = "TIME_AXIS_PASS_179009", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_179009" },
	{ config_id = 1179016, name = "ENTER_REGION_179016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179016", action = "action_EVENT_ENTER_REGION_179016", trigger_count = 0 },
	{ config_id = 1179017, name = "ENTER_REGION_179017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179017", action = "action_EVENT_ENTER_REGION_179017" }
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
		gadgets = { 179001, 179002, 179003, 179004, 179005, 179006, 179007, 179008, 179010, 179011, 179012, 179013, 179018 },
		regions = { 179016, 179017 },
		triggers = { "TIME_AXIS_PASS_179009", "ENTER_REGION_179016", "ENTER_REGION_179017" },
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
function action_EVENT_TIME_AXIS_PASS_179009(context, evt)
	-- 触发镜头注目，注目位置为坐标（1376.7，277，-1115.7），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1376.7, y=277, z=-1115.7}
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
function condition_EVENT_ENTER_REGION_179016(context, evt)
	if evt.param1 ~= 179016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179016(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179017(context, evt)
	if evt.param1 ~= 179017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001179, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end