-- 基础信息
local base_info = {
	group_id = 220005003
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
	{ config_id = 3001, gadget_id = 70350025, pos = { x = -141.114, y = 21.631, z = 43.203 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70900007, pos = { x = -109.686, y = 15.229, z = 42.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70211001, pos = { x = -203.739, y = 21.651, z = 83.760 }, rot = { x = 0.000, y = 89.814, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 3005, gadget_id = 70350026, pos = { x = -139.278, y = 21.764, z = 41.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3009, gadget_id = 70900023, pos = { x = -112.957, y = 14.184, z = 43.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70900201, pos = { x = -111.229, y = 17.877, z = 42.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70900201, pos = { x = -183.513, y = 24.773, z = 43.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70900023, pos = { x = -106.597, y = 14.200, z = 43.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3003, shape = RegionShape.CUBIC, size = { x = 14.100, y = 6.060, z = 4.960 }, pos = { x = -80.875, y = 20.280, z = 23.786 } },
	{ config_id = 3007, shape = RegionShape.CUBIC, size = { x = 6.670, y = 25.330, z = 52.420 }, pos = { x = -142.604, y = 22.871, z = 40.020 } },
	{ config_id = 3008, shape = RegionShape.CUBIC, size = { x = 6.670, y = 25.330, z = 52.420 }, pos = { x = -136.222, y = 21.626, z = 39.293 } }
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003", forbid_guest = false },
	{ config_id = 1003006, name = "GADGET_STATE_CHANGE_3006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3006", action = "action_EVENT_GADGET_STATE_CHANGE_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "ENTER_REGION_3007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3007", action = "action_EVENT_ENTER_REGION_3007", trigger_count = 0, forbid_guest = false },
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 3001, 3002, 3004, 3005, 3009, 3012 },
		regions = { 3003, 3007, 3008 },
		triggers = { "ENTER_REGION_3003", "GADGET_STATE_CHANGE_3006", "ENTER_REGION_3007", "ENTER_REGION_3008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3003(context, evt)
	if evt.param1 ~= 3003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3003(context, evt)
	-- 触发镜头注目，注目位置为坐标（-114，17，43），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-114, y=17, z=43}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为3010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	if 3002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3006(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3007(context, evt)
	if evt.param1 ~= 3007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3007(context, evt)
	-- 将configid为 3005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
	-- 将configid为 3005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end