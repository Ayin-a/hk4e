-- 基础信息
local base_info = {
	group_id = 133003088
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
	{ config_id = 88001, gadget_id = 70690029, pos = { x = 1912.242, y = 244.213, z = -1019.907 }, rot = { x = 0.000, y = 96.605, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88002, gadget_id = 70690001, pos = { x = 1915.245, y = 260.816, z = -1028.271 }, rot = { x = 358.974, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88003, gadget_id = 70690001, pos = { x = 1918.852, y = 260.995, z = -1037.595 }, rot = { x = 358.973, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88004, gadget_id = 70690001, pos = { x = 1922.459, y = 261.174, z = -1046.920 }, rot = { x = 358.974, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88005, gadget_id = 70690001, pos = { x = 1926.066, y = 261.353, z = -1056.245 }, rot = { x = 358.974, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88006, gadget_id = 70690001, pos = { x = 1937.507, y = 251.849, z = -1087.053 }, rot = { x = 358.973, y = 158.855, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88007, gadget_id = 70690001, pos = { x = 1941.112, y = 252.028, z = -1096.378 }, rot = { x = 358.974, y = 158.855, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88008, gadget_id = 70690001, pos = { x = 1944.719, y = 252.207, z = -1105.702 }, rot = { x = 358.974, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88009, gadget_id = 70690001, pos = { x = 1948.326, y = 252.386, z = -1115.028 }, rot = { x = 358.973, y = 158.854, z = 0.000 }, level = 5, persistent = true, area_id = 3 },
	{ config_id = 88013, gadget_id = 70690001, pos = { x = 1973.213, y = 238.359, z = -1153.422 }, rot = { x = 358.974, y = 144.112, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 88014, gadget_id = 70690001, pos = { x = 1967.453, y = 238.181, z = -1145.360 }, rot = { x = 358.974, y = 144.112, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 88015, gadget_id = 70690001, pos = { x = 1961.593, y = 238.002, z = -1137.258 }, rot = { x = 358.973, y = 144.113, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 88016, gadget_id = 70690001, pos = { x = 1985.689, y = 225.592, z = -1168.544 }, rot = { x = 89.492, y = 32.329, z = 223.889 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 88017, gadget_id = 70690001, pos = { x = 1985.738, y = 215.592, z = -1168.466 }, rot = { x = 89.488, y = 32.281, z = 223.842 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 88018, gadget_id = 70690001, pos = { x = 1985.728, y = 205.684, z = -1168.401 }, rot = { x = 89.488, y = 32.281, z = 223.842 }, level = 5, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 88010, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1910.200, y = 250.811, z = -1010.293 }, area_id = 3 },
	{ config_id = 88011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1975.013, y = 202.005, z = -1201.512 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1088010, name = "ENTER_REGION_88010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_88010", action = "action_EVENT_ENTER_REGION_88010", trigger_count = 0 },
	{ config_id = 1088011, name = "ENTER_REGION_88011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_88011", action = "action_EVENT_ENTER_REGION_88011" },
	{ config_id = 1088012, name = "TIME_AXIS_PASS_88012", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_88012" }
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
		gadgets = { 88001, 88002, 88003, 88004, 88005, 88006, 88007, 88008, 88009, 88013, 88014, 88015, 88016, 88017, 88018 },
		regions = { 88010, 88011 },
		triggers = { "ENTER_REGION_88010", "ENTER_REGION_88011", "TIME_AXIS_PASS_88012" },
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
function condition_EVENT_ENTER_REGION_88010(context, evt)
	if evt.param1 ~= 88010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_88010(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_88011(context, evt)
	if evt.param1 ~= 88011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_88011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003088, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_88012(context, evt)
	-- 触发镜头注目，注目位置为坐标（1913，251，-1016），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1913, y=251, z=-1016}
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