-- 基础信息
local base_info = {
	group_id = 133001181
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
	{ config_id = 181001, gadget_id = 70690017, pos = { x = 995.846, y = 316.034, z = -1139.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181002, gadget_id = 70690001, pos = { x = 989.956, y = 329.985, z = -1143.029 }, rot = { x = 341.957, y = 242.001, z = 8.839 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181003, gadget_id = 70690001, pos = { x = 981.560, y = 333.083, z = -1147.492 }, rot = { x = 341.957, y = 242.001, z = 8.839 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181004, gadget_id = 70690001, pos = { x = 973.165, y = 336.180, z = -1151.956 }, rot = { x = 341.957, y = 242.001, z = 8.839 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181005, gadget_id = 70690001, pos = { x = 964.769, y = 339.277, z = -1156.419 }, rot = { x = 341.957, y = 242.001, z = 8.839 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181006, gadget_id = 70690001, pos = { x = 940.393, y = 330.148, z = -1173.044 }, rot = { x = 1.958, y = 230.406, z = 8.831 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181007, gadget_id = 70690001, pos = { x = 932.813, y = 329.738, z = -1179.020 }, rot = { x = 1.943, y = 232.607, z = 9.623 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181008, gadget_id = 70690001, pos = { x = 924.873, y = 329.399, z = -1185.090 }, rot = { x = 1.943, y = 232.607, z = 9.623 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181009, gadget_id = 70690001, pos = { x = 916.932, y = 329.060, z = -1191.159 }, rot = { x = 1.943, y = 232.607, z = 9.623 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181010, gadget_id = 70690001, pos = { x = 864.924, y = 312.404, z = -1228.106 }, rot = { x = 359.838, y = 235.647, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181011, gadget_id = 70690001, pos = { x = 873.180, y = 312.376, z = -1222.463 }, rot = { x = 359.839, y = 235.647, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181012, gadget_id = 70690001, pos = { x = 889.692, y = 312.320, z = -1211.179 }, rot = { x = 359.838, y = 235.648, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181013, gadget_id = 70690001, pos = { x = 881.435, y = 312.348, z = -1216.821 }, rot = { x = 359.839, y = 235.648, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181014, gadget_id = 70690001, pos = { x = 821.058, y = 289.146, z = -1267.042 }, rot = { x = 359.839, y = 223.762, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181015, gadget_id = 70690001, pos = { x = 792.660, y = 264.218, z = -1294.969 }, rot = { x = 270.151, y = 333.861, z = 294.137 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181016, gadget_id = 70690001, pos = { x = 834.892, y = 289.089, z = -1252.598 }, rot = { x = 359.838, y = 223.762, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181017, gadget_id = 70690001, pos = { x = 827.974, y = 289.118, z = -1259.820 }, rot = { x = 359.839, y = 223.762, z = 10.930 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181019, gadget_id = 70690001, pos = { x = 792.649, y = 255.826, z = -1295.056 }, rot = { x = 270.219, y = 333.850, z = 294.145 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181022, gadget_id = 70690001, pos = { x = 792.650, y = 235.833, z = -1295.003 }, rot = { x = 270.168, y = 332.872, z = 295.119 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181023, gadget_id = 70690001, pos = { x = 792.651, y = 245.833, z = -1294.951 }, rot = { x = 270.115, y = 268.108, z = 0.000 }, level = 5, persistent = true, area_id = 10 },
	{ config_id = 181024, gadget_id = 70690001, pos = { x = 813.781, y = 289.145, z = -1274.550 }, rot = { x = 359.839, y = 223.762, z = 10.930 }, level = 5, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 181026, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1015.194, y = 316.025, z = -1129.573 }, area_id = 10 },
	{ config_id = 181027, shape = RegionShape.SPHERE, radius = 27, pos = { x = 792.000, y = 199.825, z = -1295.000 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1181018, name = "TIME_AXIS_PASS_181018", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_181018" },
	{ config_id = 1181026, name = "ENTER_REGION_181026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181026", action = "action_EVENT_ENTER_REGION_181026", trigger_count = 0 },
	{ config_id = 1181027, name = "ENTER_REGION_181027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181027", action = "action_EVENT_ENTER_REGION_181027" }
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
		gadgets = { 181001, 181002, 181003, 181004, 181005, 181006, 181007, 181008, 181009, 181010, 181011, 181012, 181013, 181014, 181015, 181016, 181017, 181019, 181022, 181023, 181024 },
		regions = { 181026, 181027 },
		triggers = { "TIME_AXIS_PASS_181018", "ENTER_REGION_181026", "ENTER_REGION_181027" },
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
function action_EVENT_TIME_AXIS_PASS_181018(context, evt)
	-- 触发镜头注目，注目位置为坐标（995，320，-1139.5），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=995, y=320, z=-1139.5}
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
function condition_EVENT_ENTER_REGION_181026(context, evt)
	if evt.param1 ~= 181026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181026(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_181027(context, evt)
	if evt.param1 ~= 181027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001181, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end