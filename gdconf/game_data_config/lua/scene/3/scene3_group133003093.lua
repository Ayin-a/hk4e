-- 基础信息
local base_info = {
	group_id = 133003093
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
	{ config_id = 93001, gadget_id = 70690013, pos = { x = 1798.257, y = 193.965, z = -1550.697 }, rot = { x = 0.000, y = 186.869, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93002, gadget_id = 70690001, pos = { x = 1782.750, y = 248.148, z = -1555.563 }, rot = { x = 358.974, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93003, gadget_id = 70690001, pos = { x = 1773.409, y = 248.327, z = -1559.127 }, rot = { x = 358.973, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93004, gadget_id = 70690001, pos = { x = 1764.068, y = 248.506, z = -1562.691 }, rot = { x = 358.974, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93005, gadget_id = 70690001, pos = { x = 1754.725, y = 248.685, z = -1566.255 }, rot = { x = 358.974, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93006, gadget_id = 70690001, pos = { x = 1729.143, y = 244.313, z = -1576.015 }, rot = { x = 358.973, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93007, gadget_id = 70690001, pos = { x = 1719.801, y = 244.492, z = -1579.577 }, rot = { x = 358.974, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93008, gadget_id = 70690001, pos = { x = 1710.459, y = 244.671, z = -1583.141 }, rot = { x = 358.974, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93009, gadget_id = 70690001, pos = { x = 1701.118, y = 244.851, z = -1586.705 }, rot = { x = 358.973, y = 249.118, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93013, gadget_id = 70690001, pos = { x = 1674.289, y = 253.035, z = -1596.871 }, rot = { x = 339.010, y = 248.884, z = 1.209 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93014, gadget_id = 70690001, pos = { x = 1682.999, y = 249.453, z = -1593.507 }, rot = { x = 339.010, y = 248.884, z = 1.209 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93015, gadget_id = 70690001, pos = { x = 1691.708, y = 245.871, z = -1590.145 }, rot = { x = 339.010, y = 248.884, z = 1.209 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93016, gadget_id = 70690029, pos = { x = 1655.934, y = 242.062, z = -1605.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	{ config_id = 93017, gadget_id = 70690001, pos = { x = 1642.918, y = 260.556, z = -1607.192 }, rot = { x = 358.974, y = 263.490, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93018, gadget_id = 70690001, pos = { x = 1632.984, y = 260.736, z = -1608.326 }, rot = { x = 358.973, y = 263.490, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93019, gadget_id = 70690001, pos = { x = 1623.051, y = 260.915, z = -1609.459 }, rot = { x = 358.974, y = 263.490, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
	{ config_id = 93020, gadget_id = 70690001, pos = { x = 1613.116, y = 261.094, z = -1610.593 }, rot = { x = 358.974, y = 263.490, z = 0.000 }, level = 5, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 93010, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1815.282, y = 238.541, z = -1547.771 }, area_id = 2 },
	{ config_id = 93011, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1549.848, y = 253.387, z = -1630.047 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1093010, name = "ENTER_REGION_93010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93010", action = "action_EVENT_ENTER_REGION_93010", trigger_count = 0 },
	{ config_id = 1093011, name = "ENTER_REGION_93011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_93011", action = "action_EVENT_ENTER_REGION_93011" },
	{ config_id = 1093021, name = "TIME_AXIS_PASS_93021", event = EventType.EVENT_TIME_AXIS_PASS, source = "T_sight", condition = "", action = "action_EVENT_TIME_AXIS_PASS_93021" }
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
		gadgets = { 93001, 93002, 93003, 93004, 93005, 93006, 93007, 93008, 93009, 93013, 93014, 93015, 93016, 93017, 93018, 93019, 93020 },
		regions = { 93010, 93011 },
		triggers = { "ENTER_REGION_93010", "ENTER_REGION_93011", "TIME_AXIS_PASS_93021" },
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
function condition_EVENT_ENTER_REGION_93010(context, evt)
	if evt.param1 ~= 93010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93010(context, evt)
	-- 创建标识为"T_sight"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T_sight", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_93011(context, evt)
	if evt.param1 ~= 93011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_93011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003093, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_93021(context, evt)
	-- 触发镜头注目，注目位置为坐标（1798，201，-1550），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1798, y=201, z=-1550}
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