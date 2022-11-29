-- 基础信息
local base_info = {
	group_id = 220121005
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
	{ config_id = 5001, gadget_id = 70710010, pos = { x = -44.199, y = -581.399, z = -212.265 }, rot = { x = 0.000, y = 175.667, z = 0.000 }, level = 1, route_id = 1, start_route = false, persistent = true },
	{ config_id = 5003, gadget_id = 70710006, pos = { x = -16.989, y = -577.131, z = -303.790 }, rot = { x = 0.000, y = 318.257, z = 0.000 }, level = 1, state = GadgetState.GearAction1, persistent = true },
	{ config_id = 5004, gadget_id = 70710006, pos = { x = -17.840, y = -577.127, z = -299.401 }, rot = { x = 0.000, y = 175.848, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 5005, gadget_id = 70350061, pos = { x = -32.627, y = -570.266, z = -324.413 }, rot = { x = 272.394, y = 326.644, z = 61.870 }, level = 1 },
	{ config_id = 5007, gadget_id = 70900201, pos = { x = -46.495, y = -557.812, z = -349.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 5011, gadget_id = 70290268, pos = { x = -36.512, y = -583.057, z = -472.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5012, gadget_id = 70211111, pos = { x = -16.611, y = -577.129, z = -301.450 }, rot = { x = 0.000, y = 260.357, z = 0.000 }, level = 11, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -47.154, y = -563.300, z = -349.673 } },
	{ config_id = 5008, shape = RegionShape.SPHERE, radius = 17, pos = { x = -25.503, y = -577.142, z = -308.122 } },
	{ config_id = 5009, shape = RegionShape.SPHERE, radius = 64, pos = { x = -48.644, y = -578.676, z = -275.630 } },
	-- 提示开车
	{ config_id = 5014, shape = RegionShape.SPHERE, radius = 8, pos = { x = -48.658, y = -580.976, z = -240.201 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "AVATAR_NEAR_PLATFORM_5002", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_5002", action = "action_EVENT_AVATAR_NEAR_PLATFORM_5002", trigger_count = 0 },
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5006", action = "action_EVENT_ENTER_REGION_5006", trigger_count = 0 },
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5008", action = "action_EVENT_ENTER_REGION_5008" },
	{ config_id = 1005009, name = "ENTER_REGION_5009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5009", action = "action_EVENT_ENTER_REGION_5009", trigger_count = 0 },
	{ config_id = 1005010, name = "PLATFORM_REACH_POINT_5010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_5010", action = "action_EVENT_PLATFORM_REACH_POINT_5010", trigger_count = 0 },
	{ config_id = 1005013, name = "GADGET_STATE_CHANGE_5013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5013", action = "action_EVENT_GADGET_STATE_CHANGE_5013", trigger_count = 0 },
	-- 提示开车
	{ config_id = 1005014, name = "ENTER_REGION_5014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5014", action = "action_EVENT_ENTER_REGION_5014" },
	-- 设置初始灯柱
	{ config_id = 1005015, name = "GADGET_CREATE_5015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5015", action = "action_EVENT_GADGET_CREATE_5015", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5003, 5004, 5005, 5007, 5011 },
		regions = { 5006, 5008, 5009, 5014 },
		triggers = { "AVATAR_NEAR_PLATFORM_5002", "ENTER_REGION_5006", "ENTER_REGION_5008", "ENTER_REGION_5009", "PLATFORM_REACH_POINT_5010", "GADGET_STATE_CHANGE_5013", "ENTER_REGION_5014", "GADGET_CREATE_5015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5012 },
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_5002(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_5002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5006(context, evt)
	if evt.param1 ~= 5006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201210051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220121005, EntityType.GADGET, 5007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5008(context, evt)
	if evt.param1 ~= 5008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5008(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5009(context, evt)
	if evt.param1 ~= 5009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5009(context, evt)
	ScriptLib.SetWeatherAreaState(context, 10071,1)
	ScriptLib.SetWeatherAreaState(context, 10070,0)
	ScriptLib.SetWeatherAreaState(context, 10069,0)
	ScriptLib.EnterWeatherArea(context, 10071)
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_5010(context, evt)
	-- 判断是gadgetid 为 5001的移动平台，是否到达了1 的路线中的 14 点
	
	if 5001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 14 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_5010(context, evt)
	-- 将configid为 5004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5013(context, evt)
	if 5004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220121005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5014(context, evt)
	if evt.param1 ~= 5014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5014(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-47.15369, y=-563.3, z=-349.6734}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-47.15369, y=-563.3, z=-349.6734}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-48,y=-580,z=-240}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 500660185, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5015(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5015(context, evt)
	-- 将configid为 5003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end