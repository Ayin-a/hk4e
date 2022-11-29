-- 基础信息
local base_info = {
	group_id = 133003091
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
	{ config_id = 91001, gadget_id = 70690011, pos = { x = 2017.908, y = 221.096, z = -1564.922 }, rot = { x = 0.000, y = 216.938, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91002, gadget_id = 70690001, pos = { x = 2005.595, y = 246.931, z = -1562.071 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91003, gadget_id = 70690001, pos = { x = 1995.726, y = 247.110, z = -1560.475 }, rot = { x = 358.973, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91004, gadget_id = 70690001, pos = { x = 1985.856, y = 247.289, z = -1558.879 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91005, gadget_id = 70690001, pos = { x = 1975.986, y = 247.468, z = -1557.281 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91006, gadget_id = 70690001, pos = { x = 1954.427, y = 237.908, z = -1545.765 }, rot = { x = 358.973, y = 279.188, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91007, gadget_id = 70690001, pos = { x = 1944.556, y = 238.088, z = -1544.167 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91008, gadget_id = 70690001, pos = { x = 1934.687, y = 238.267, z = -1542.571 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91009, gadget_id = 70690001, pos = { x = 1924.817, y = 238.446, z = -1540.975 }, rot = { x = 358.973, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 91012, gadget_id = 70690001, pos = { x = 1896.739, y = 224.662, z = -1527.995 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 91013, gadget_id = 70690001, pos = { x = 1886.870, y = 224.841, z = -1526.399 }, rot = { x = 358.973, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 91014, gadget_id = 70690001, pos = { x = 1877.000, y = 225.020, z = -1524.803 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 91015, gadget_id = 70690001, pos = { x = 1867.130, y = 225.199, z = -1523.205 }, rot = { x = 358.974, y = 279.187, z = 0.000 }, level = 5, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 91010, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2023.660, y = 232.815, z = -1566.794 }, area_id = 1 },
	{ config_id = 91011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1832.072, y = 194.356, z = -1532.372 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1091010, name = "ENTER_REGION_91010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91010", action = "action_EVENT_ENTER_REGION_91010", trigger_count = 0 },
	{ config_id = 1091011, name = "ENTER_REGION_91011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91011", action = "action_EVENT_ENTER_REGION_91011" },
	{ config_id = 1091016, name = "TIME_AXIS_PASS_91016", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_91016" }
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
		gadgets = { 91001, 91002, 91003, 91004, 91005, 91006, 91007, 91008, 91009, 91012, 91013, 91014, 91015 },
		regions = { 91010, 91011 },
		triggers = { "ENTER_REGION_91010", "ENTER_REGION_91011", "TIME_AXIS_PASS_91016" },
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
function condition_EVENT_ENTER_REGION_91010(context, evt)
	if evt.param1 ~= 91010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91010(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91011(context, evt)
	if evt.param1 ~= 91011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003091, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_91016(context, evt)
	-- 触发镜头注目，注目位置为坐标（2017，224，-1565），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2017, y=224, z=-1565}
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