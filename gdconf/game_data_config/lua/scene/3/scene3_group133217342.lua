-- 基础信息
local base_info = {
	group_id = 133217342
}

-- Trigger变量
local defs = {
	point_sum = 71,
	route_2 = 321700047,
	gadget_seelie = 342002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 342001, gadget_id = 70710006, pos = { x = -4442.583, y = 206.418, z = -3704.823 }, rot = { x = 0.000, y = 139.525, z = 0.000 }, level = 32, area_id = 14 },
	{ config_id = 342002, gadget_id = 70710010, pos = { x = -4420.598, y = 193.378, z = -3765.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 321700048, area_id = 14 },
	{ config_id = 342003, gadget_id = 70710007, pos = { x = -4442.378, y = 206.284, z = -3705.887 }, rot = { x = 0.000, y = 156.441, z = 0.000 }, level = 32, area_id = 14 },
	{ config_id = 342004, gadget_id = 70211101, pos = { x = -4442.374, y = 207.548, z = -3701.346 }, rot = { x = 14.527, y = 174.679, z = 4.171 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 342007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -4420.645, y = 192.723, z = -3764.686 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1342005, name = "PLATFORM_REACH_POINT_342005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_342005", action = "action_EVENT_PLATFORM_REACH_POINT_342005", trigger_count = 0 },
	{ config_id = 1342006, name = "AVATAR_NEAR_PLATFORM_342006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_342006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_342006", trigger_count = 0 },
	{ config_id = 1342007, name = "ENTER_REGION_342007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_342007", action = "action_EVENT_ENTER_REGION_342007", trigger_count = 0 },
	{ config_id = 1342008, name = "GADGET_STATE_CHANGE_342008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_342008", action = "action_EVENT_GADGET_STATE_CHANGE_342008" },
	{ config_id = 1342009, name = "GADGET_CREATE_342009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_342009", action = "action_EVENT_GADGET_CREATE_342009", trigger_count = 0 }
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
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 342001, 342002, 342003 },
		regions = { 342007 },
		triggers = { "PLATFORM_REACH_POINT_342005", "AVATAR_NEAR_PLATFORM_342006", "ENTER_REGION_342007", "GADGET_STATE_CHANGE_342008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 342001, 342004 },
		regions = { },
		triggers = { "GADGET_CREATE_342009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_342005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_342005(context, evt)
	-- 将configid为 342001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 342001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 342002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 342002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_342006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_342006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 342002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_342007(context, evt)
	if evt.param1 ~= 342007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_342007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 342002, 321700047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 342003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_342008(context, evt)
	if 342001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_342008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133217342, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_342009(context, evt)
	if 342001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_342009(context, evt)
	-- 将configid为 342001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 342001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end