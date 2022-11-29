-- 基础信息
local base_info = {
	group_id = 133001045
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
	{ config_id = 45001, gadget_id = 70690012, pos = { x = 1748.557, y = 192.753, z = -1527.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45003, gadget_id = 70690001, pos = { x = 1762.880, y = 206.429, z = -1520.972 }, rot = { x = 358.974, y = 62.249, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45004, gadget_id = 70690001, pos = { x = 1771.728, y = 206.608, z = -1516.317 }, rot = { x = 358.973, y = 62.249, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45005, gadget_id = 70690001, pos = { x = 1780.576, y = 206.788, z = -1511.661 }, rot = { x = 358.974, y = 62.249, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45006, gadget_id = 70690001, pos = { x = 1789.425, y = 206.967, z = -1507.006 }, rot = { x = 358.974, y = 62.249, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45007, gadget_id = 70690001, pos = { x = 1815.528, y = 203.879, z = -1493.271 }, rot = { x = 358.973, y = 62.250, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45008, gadget_id = 70690001, pos = { x = 1824.377, y = 204.058, z = -1488.617 }, rot = { x = 358.974, y = 62.250, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45009, gadget_id = 70690001, pos = { x = 1833.225, y = 204.237, z = -1483.961 }, rot = { x = 358.974, y = 62.249, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 45012, gadget_id = 70710126, pos = { x = 1748.229, y = 195.163, z = -1527.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 45014, gadget_id = 70690012, pos = { x = 1804.761, y = 190.813, z = -1500.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 45011, shape = RegionShape.SPHERE, radius = 25, pos = { x = 1888.163, y = 196.231, z = -1463.049 }, area_id = 2 },
	{ config_id = 45013, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1748.203, y = 195.162, z = -1527.740 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1045002, name = "TIME_AXIS_PASS_45002", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_45002" },
	{ config_id = 1045010, name = "GROUP_LOAD_45010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_45010" },
	{ config_id = 1045011, name = "ENTER_REGION_45011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45011", action = "action_EVENT_ENTER_REGION_45011" },
	{ config_id = 1045013, name = "ENTER_REGION_45013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45013", action = "action_EVENT_ENTER_REGION_45013" }
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
		gadgets = { 45001, 45003, 45004, 45005, 45006, 45007, 45008, 45009, 45014 },
		regions = { 45011 },
		triggers = { "TIME_AXIS_PASS_45002", "GROUP_LOAD_45010", "ENTER_REGION_45011" },
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
function action_EVENT_TIME_AXIS_PASS_45002(context, evt)
	-- 触发镜头注目，注目位置为坐标（1746，200，-1526），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1746, y=200, z=-1526}
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

-- 触发操作
function action_EVENT_GROUP_LOAD_45010(context, evt)
	-- 创建标识为"T1"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45011(context, evt)
	if evt.param1 ~= 45011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45011(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133001045, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45013(context, evt)
	if evt.param1 ~= 45013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 45012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end