-- 基础信息
local base_info = {
	group_id = 133002471
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 471001, monster_id = 25030301, pos = { x = 1235.716, y = 200.000, z = -102.805 }, rot = { x = 2.029, y = 37.162, z = 359.798 }, level = 16, drop_id = 1000100, pose_id = 9006, area_id = 5 },
	{ config_id = 471002, monster_id = 25030201, pos = { x = 1236.786, y = 200.450, z = -93.286 }, rot = { x = 0.000, y = 31.698, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9003, area_id = 5 },
	{ config_id = 471003, monster_id = 25010501, pos = { x = 1231.164, y = 200.667, z = -96.494 }, rot = { x = 359.045, y = 153.164, z = 358.640 }, level = 16, drop_id = 1000100, pose_id = 9004, area_id = 5 },
	{ config_id = 471004, monster_id = 25020201, pos = { x = 1244.432, y = 201.077, z = -99.789 }, rot = { x = 0.000, y = 256.779, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9004, area_id = 5 },
	{ config_id = 471006, monster_id = 25010601, pos = { x = 1243.215, y = 201.726, z = -87.282 }, rot = { x = 0.000, y = 95.639, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 9005, area_id = 5 },
	{ config_id = 471007, monster_id = 25070101, pos = { x = 1237.276, y = 200.000, z = -100.784 }, rot = { x = 0.000, y = 204.837, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9006, area_id = 5 },
	{ config_id = 471011, monster_id = 25010201, pos = { x = 1211.121, y = 200.599, z = -86.346 }, rot = { x = 4.572, y = 300.099, z = 359.166 }, level = 16, drop_id = 1000100, pose_id = 9004, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 471008, gadget_id = 70710038, pos = { x = 1237.259, y = 200.210, z = -91.923 }, rot = { x = 0.000, y = 319.270, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 471010, gadget_id = 70360040, pos = { x = 1237.241, y = 200.450, z = -91.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 471012, gadget_id = 70211123, pos = { x = 1237.270, y = 200.208, z = -91.637 }, rot = { x = 0.000, y = 180.181, z = 0.000 }, level = 16, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 471014, gadget_id = 70360001, pos = { x = 1237.399, y = 201.651, z = -92.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 471009, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1238.689, y = 200.117, z = -98.305 }, area_id = 5 },
	{ config_id = 471017, shape = RegionShape.SPHERE, radius = 17, pos = { x = 1237.730, y = 200.000, z = -93.131 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1471009, name = "ENTER_REGION_471009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471009", action = "action_EVENT_ENTER_REGION_471009" },
	{ config_id = 1471013, name = "GADGET_CREATE_471013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_471013", action = "action_EVENT_GADGET_CREATE_471013", trigger_count = 0 },
	{ config_id = 1471015, name = "SELECT_OPTION_471015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_471015", action = "action_EVENT_SELECT_OPTION_471015", trigger_count = 0 },
	{ config_id = 1471016, name = "GADGET_STATE_CHANGE_471016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_471016", action = "action_EVENT_GADGET_STATE_CHANGE_471016", trigger_count = 0 },
	{ config_id = 1471017, name = "ENTER_REGION_471017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471017", action = "action_EVENT_ENTER_REGION_471017", trigger_count = 0 },
	{ config_id = 1471018, name = "GROUP_LOAD_471018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_471018", action = "action_EVENT_GROUP_LOAD_471018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fin", value = 0, no_refresh = true },
	{ config_id = 2, name = "dig", value = 0, no_refresh = true }
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
		monsters = { 471001, 471002, 471003, 471004, 471006, 471007, 471011 },
		gadgets = { 471008, 471010, 471014 },
		regions = { 471009, 471017 },
		triggers = { "ENTER_REGION_471009", "GADGET_CREATE_471013", "SELECT_OPTION_471015", "GADGET_STATE_CHANGE_471016", "ENTER_REGION_471017", "GROUP_LOAD_471018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_471009(context, evt)
	if evt.param1 ~= 471009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_471009(context, evt)
	-- 触发镜头注目，注目位置为坐标（1237，200，-91），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1237, y=200, z=-91}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_471013(context, evt)
	if 471014 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"dig"为0
	if ScriptLib.GetGroupVariableValue(context, "dig") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_471013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_471015(context, evt)
	-- 判断是gadgetid 471014 option_id 169
	if 471014 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_471015(context, evt)
	-- 创建id为471012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 471012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除指定group： 133002471 ；指定config：471014；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133002471, 471014, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "dig" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dig", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_471016(context, evt)
	if 471012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_471016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133002471") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "fin" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_471017(context, evt)
	if evt.param1 ~= 471017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_471017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133002471_zhiyin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_471018(context, evt)
	-- 判断变量"fin"为1
	if ScriptLib.GetGroupVariableValue(context, "fin") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_471018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "finish_133002471") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end