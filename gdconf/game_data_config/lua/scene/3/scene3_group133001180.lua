-- 基础信息
local base_info = {
	group_id = 133001180
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
	{ config_id = 180001, gadget_id = 70690017, pos = { x = 1213.441, y = 310.194, z = -1099.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180002, gadget_id = 70690001, pos = { x = 1203.450, y = 322.713, z = -1103.185 }, rot = { x = 358.974, y = 247.101, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180003, gadget_id = 70690001, pos = { x = 1194.241, y = 322.893, z = -1107.075 }, rot = { x = 358.973, y = 247.101, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180004, gadget_id = 70690001, pos = { x = 1185.031, y = 323.072, z = -1110.966 }, rot = { x = 358.974, y = 247.101, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180005, gadget_id = 70690001, pos = { x = 1175.820, y = 323.251, z = -1114.856 }, rot = { x = 358.974, y = 247.101, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180006, gadget_id = 70690001, pos = { x = 1153.496, y = 318.879, z = -1127.115 }, rot = { x = 358.973, y = 265.072, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180007, gadget_id = 70690001, pos = { x = 1143.534, y = 319.058, z = -1127.972 }, rot = { x = 358.974, y = 265.071, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180008, gadget_id = 70690001, pos = { x = 1133.573, y = 319.237, z = -1128.832 }, rot = { x = 358.974, y = 265.071, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180009, gadget_id = 70690001, pos = { x = 1123.613, y = 319.416, z = -1129.691 }, rot = { x = 358.973, y = 265.071, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180010, gadget_id = 70690001, pos = { x = 1112.368, y = 319.619, z = -1130.870 }, rot = { x = 358.973, y = 265.071, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180014, gadget_id = 70690001, pos = { x = 1088.041, y = 313.677, z = -1134.238 }, rot = { x = 345.594, y = 278.314, z = 342.235 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180015, gadget_id = 70690001, pos = { x = 1077.192, y = 316.552, z = -1132.853 }, rot = { x = 345.594, y = 278.314, z = 342.235 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 180016, gadget_id = 70690001, pos = { x = 1066.513, y = 319.269, z = -1131.101 }, rot = { x = 345.594, y = 278.314, z = 342.235 }, level = 5, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 180011, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1221.264, y = 309.996, z = -1097.591 }, area_id = 10 },
	{ config_id = 180012, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1038.565, y = 311.269, z = -1128.552 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1180011, name = "ENTER_REGION_180011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180011", action = "action_EVENT_ENTER_REGION_180011", trigger_count = 0 },
	{ config_id = 1180012, name = "ENTER_REGION_180012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_180012", action = "action_EVENT_ENTER_REGION_180012" },
	{ config_id = 1180013, name = "TIME_AXIS_PASS_180013", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_180013" }
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
		gadgets = { 180001, 180002, 180003, 180004, 180005, 180006, 180007, 180008, 180009, 180010, 180014, 180015, 180016 },
		regions = { 180011, 180012 },
		triggers = { "ENTER_REGION_180011", "ENTER_REGION_180012", "TIME_AXIS_PASS_180013" },
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
function condition_EVENT_ENTER_REGION_180011(context, evt)
	if evt.param1 ~= 180011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180011(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_180012(context, evt)
	if evt.param1 ~= 180012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_180012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001180, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_180013(context, evt)
	-- 触发镜头注目，注目位置为坐标（1213.4，313.2，-1099.2），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1213.4, y=313.2, z=-1099.2}
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