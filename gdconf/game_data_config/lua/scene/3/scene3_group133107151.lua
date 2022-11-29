-- 基础信息
local base_info = {
	group_id = 133107151
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
	{ config_id = 151001, gadget_id = 70710295, pos = { x = -576.144, y = 366.681, z = 511.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 151004, gadget_id = 70690001, pos = { x = -567.927, y = 362.249, z = 512.038 }, rot = { x = 14.584, y = 76.763, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 151005, gadget_id = 70710295, pos = { x = -526.704, y = 352.080, z = 521.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 151007, gadget_id = 70690001, pos = { x = -549.086, y = 357.213, z = 516.470 }, rot = { x = 14.584, y = 76.763, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 151010, gadget_id = 70710295, pos = { x = -452.331, y = 341.140, z = 540.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 151013, gadget_id = 70690001, pos = { x = -509.235, y = 347.932, z = 525.744 }, rot = { x = 4.944, y = 78.876, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 151014, gadget_id = 70690001, pos = { x = -491.682, y = 346.208, z = 529.039 }, rot = { x = 4.944, y = 78.876, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 151015, gadget_id = 70690001, pos = { x = -472.131, y = 344.485, z = 532.883 }, rot = { x = 4.133, y = 79.090, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 151002, shape = RegionShape.SPHERE, radius = 4, pos = { x = -576.144, y = 365.485, z = 511.022 }, area_id = 7 },
	{ config_id = 151006, shape = RegionShape.SPHERE, radius = 4, pos = { x = -526.704, y = 350.884, z = 521.611 }, area_id = 7 },
	{ config_id = 151009, shape = RegionShape.SPHERE, radius = 4, pos = { x = -452.331, y = 339.943, z = 540.755 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1151002, name = "ENTER_REGION_151002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151002", action = "action_EVENT_ENTER_REGION_151002", tag = "777" },
	{ config_id = 1151006, name = "ENTER_REGION_151006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151006", action = "action_EVENT_ENTER_REGION_151006", tag = "777" },
	{ config_id = 1151009, name = "ENTER_REGION_151009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151009", action = "action_EVENT_ENTER_REGION_151009", tag = "777" },
	{ config_id = 1151011, name = "GADGET_CREATE_151011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_151011", action = "action_EVENT_GADGET_CREATE_151011" }
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
		gadgets = { 151001, 151004, 151005, 151007, 151010, 151013, 151014, 151015 },
		regions = { 151002, 151006, 151009 },
		triggers = { "ENTER_REGION_151002", "ENTER_REGION_151006", "ENTER_REGION_151009", "GADGET_CREATE_151011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_151002(context, evt)
	if evt.param1 ~= 151002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_151006(context, evt)
	if evt.param1 ~= 151006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_151009(context, evt)
	if evt.param1 ~= 151009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_151011(context, evt)
	if 151004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_151011(context, evt)
	-- 触发镜头注目，注目位置为坐标（-576，366，511），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-576, y=366, z=511}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end