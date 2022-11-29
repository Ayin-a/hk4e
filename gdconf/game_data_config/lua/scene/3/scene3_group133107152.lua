-- 基础信息
local base_info = {
	group_id = 133107152
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
	{ config_id = 152001, gadget_id = 70710295, pos = { x = -237.574, y = 395.894, z = 459.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 152004, gadget_id = 70710295, pos = { x = -233.421, y = 374.726, z = 394.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 152006, gadget_id = 70710295, pos = { x = -253.012, y = 356.370, z = 365.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 152007, gadget_id = 70710295, pos = { x = -293.781, y = 315.140, z = 354.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 152009, gadget_id = 70710295, pos = { x = -342.146, y = 216.030, z = 351.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 152012, gadget_id = 70690001, pos = { x = -237.752, y = 392.148, z = 454.093 }, rot = { x = 24.759, y = 182.077, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152013, gadget_id = 70690001, pos = { x = -238.410, y = 383.772, z = 435.944 }, rot = { x = 5.955, y = 179.973, z = 0.009 }, level = 1, area_id = 7 },
	{ config_id = 152020, gadget_id = 70690001, pos = { x = -264.445, y = 342.290, z = 363.026 }, rot = { x = 45.675, y = 259.409, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152021, gadget_id = 70690001, pos = { x = -278.181, y = 327.982, z = 360.457 }, rot = { x = 39.187, y = 247.208, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152023, gadget_id = 70690001, pos = { x = -306.760, y = 303.102, z = 347.870 }, rot = { x = 37.899, y = 245.272, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152024, gadget_id = 70690001, pos = { x = -321.095, y = 290.817, z = 341.269 }, rot = { x = 62.443, y = 265.232, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152025, gadget_id = 70690001, pos = { x = -329.544, y = 274.570, z = 340.564 }, rot = { x = 74.082, y = 312.986, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152026, gadget_id = 70690001, pos = { x = -333.556, y = 255.337, z = 344.304 }, rot = { x = 74.082, y = 312.986, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 152027, gadget_id = 70690001, pos = { x = -337.569, y = 236.103, z = 348.044 }, rot = { x = 74.082, y = 312.986, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 152002, shape = RegionShape.SPHERE, radius = 4, pos = { x = -237.574, y = 394.685, z = 459.163 }, area_id = 7 },
	{ config_id = 152003, shape = RegionShape.SPHERE, radius = 4, pos = { x = -233.421, y = 373.517, z = 394.979 }, area_id = 7 },
	{ config_id = 152005, shape = RegionShape.SPHERE, radius = 4, pos = { x = -253.012, y = 355.161, z = 365.139 }, area_id = 7 },
	{ config_id = 152008, shape = RegionShape.SPHERE, radius = 4, pos = { x = -293.781, y = 313.931, z = 354.072 }, area_id = 7 },
	{ config_id = 152010, shape = RegionShape.SPHERE, radius = 4, pos = { x = -342.146, y = 214.822, z = 351.551 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1152002, name = "ENTER_REGION_152002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152002", action = "action_EVENT_ENTER_REGION_152002", tag = "666" },
	{ config_id = 1152003, name = "ENTER_REGION_152003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152003", action = "action_EVENT_ENTER_REGION_152003", tag = "666" },
	{ config_id = 1152005, name = "ENTER_REGION_152005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152005", action = "action_EVENT_ENTER_REGION_152005", tag = "666" },
	{ config_id = 1152008, name = "ENTER_REGION_152008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152008", action = "action_EVENT_ENTER_REGION_152008", tag = "666" },
	{ config_id = 1152010, name = "ENTER_REGION_152010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_152010", action = "action_EVENT_ENTER_REGION_152010", tag = "666" },
	{ config_id = 1152011, name = "CHALLENGE_FAIL_152011", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_152011" },
	{ config_id = 1152015, name = "QUEST_START_152015", event = EventType.EVENT_QUEST_START, source = "4133808", condition = "", action = "action_EVENT_QUEST_START_152015" }
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
		gadgets = { 152001, 152004, 152006, 152007, 152009, 152012, 152013, 152020, 152021, 152023, 152024, 152025, 152026, 152027 },
		regions = { 152002, 152003, 152005, 152008, 152010 },
		triggers = { "ENTER_REGION_152002", "ENTER_REGION_152003", "ENTER_REGION_152005", "ENTER_REGION_152008", "ENTER_REGION_152010", "CHALLENGE_FAIL_152011", "QUEST_START_152015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_152002(context, evt)
	if evt.param1 ~= 152002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152003(context, evt)
	if evt.param1 ~= 152003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152005(context, evt)
	if evt.param1 ~= 152005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152008(context, evt)
	if evt.param1 ~= 152008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_152010(context, evt)
	if evt.param1 ~= 152010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_152010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133808") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 152009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_152011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4133899") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_152015(context, evt)
	-- 触发镜头注目，注目位置为坐标（-237，395，459），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-237, y=395, z=459}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为184的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 184, 60, 4, 666, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end