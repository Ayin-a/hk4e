-- 基础信息
local base_info = {
	group_id = 220173005
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
	{ config_id = 5001, gadget_id = 70380003, pos = { x = 595.730, y = 114.696, z = 507.239 }, rot = { x = 0.000, y = 304.539, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 5005, gadget_id = 70290517, pos = { x = 457.665, y = 166.462, z = 504.062 }, rot = { x = 0.000, y = 298.231, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 596.039, y = 115.024, z = 507.534 } },
	{ config_id = 5003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 608.307, y = 114.034, z = 498.568 } },
	{ config_id = 5004, shape = RegionShape.SPHERE, radius = 6, pos = { x = 450.818, y = 159.185, z = 505.730 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5002", action = "action_EVENT_ENTER_REGION_5002" },
	{ config_id = 1005003, name = "ENTER_REGION_5003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5003", action = "action_EVENT_ENTER_REGION_5003" },
	{ config_id = 1005004, name = "ENTER_REGION_5004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5004", action = "action_EVENT_ENTER_REGION_5004" }
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
		gadgets = { 5001, 5005 },
		regions = { 5002, 5003, 5004 },
		triggers = { "ENTER_REGION_5002", "ENTER_REGION_5003", "ENTER_REGION_5004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5002(context, evt)
	if evt.param1 ~= 5002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5003(context, evt)
	if evt.param1 ~= 5003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5003(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=590, y=123, z=503}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=590, y=123, z=503}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5004(context, evt)
	if evt.param1 ~= 5004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5004(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end