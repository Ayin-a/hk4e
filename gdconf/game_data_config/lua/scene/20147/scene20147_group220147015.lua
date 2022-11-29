-- 基础信息
local base_info = {
	group_id = 220147015
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
	{ config_id = 15006, gadget_id = 70290574, pos = { x = 715.330, y = 111.690, z = 465.880 }, rot = { x = 0.000, y = 293.447, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 15001, shape = RegionShape.POLYGON, pos = { x = 756.875, y = 76.500, z = 378.577 }, height = 7.000, point_array = { { x = 772.202, y = 354.940 }, { x = 780.113, y = 382.405 }, { x = 737.918, y = 402.213 }, { x = 733.637, y = 371.508 } } },
	{ config_id = 15002, shape = RegionShape.CYLINDER, radius = 20, pos = { x = 757.116, y = 57.013, z = 377.053 }, height = 12.000 },
	{ config_id = 15003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 718.460, y = 57.905, z = 342.812 } },
	{ config_id = 15005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 849.396, y = 76.365, z = 432.340 } }
}

-- 触发器
triggers = {
	{ config_id = 1015001, name = "ENTER_REGION_15001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15001", action = "action_EVENT_ENTER_REGION_15001" },
	{ config_id = 1015002, name = "ENTER_REGION_15002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15002", action = "action_EVENT_ENTER_REGION_15002" },
	{ config_id = 1015003, name = "ENTER_REGION_15003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15003", action = "action_EVENT_ENTER_REGION_15003" },
	{ config_id = 1015005, name = "ENTER_REGION_15005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15005", action = "action_EVENT_ENTER_REGION_15005" }
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
		gadgets = { 15006 },
		regions = { 15001, 15002, 15003, 15005 },
		triggers = { "ENTER_REGION_15001", "ENTER_REGION_15002", "ENTER_REGION_15003", "ENTER_REGION_15005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15001(context, evt)
	if evt.param1 ~= 15001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15001(context, evt)
	-- 调用提示id为 33010137 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010137) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15002(context, evt)
	if evt.param1 ~= 15002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15002(context, evt)
	-- 调用提示id为 33010145 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010145) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15003(context, evt)
	if evt.param1 ~= 15003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15003(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=710.9402, y=61.90724, z=342.7333}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=710.9402, y=61.90724, z=342.7333}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 33010157 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15005(context, evt)
	if evt.param1 ~= 15005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15005(context, evt)
	-- 调用提示id为 33010169 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end