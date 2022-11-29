-- 基础信息
local base_info = {
	group_id = 133301667
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 330100157,
	gadget_seelie = 667002
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
	{ config_id = 667001, gadget_id = 70710006, pos = { x = -792.178, y = 192.316, z = 3142.183 }, rot = { x = 4.809, y = 171.033, z = 2.278 }, level = 30, area_id = 23 },
	{ config_id = 667002, gadget_id = 70710010, pos = { x = -862.900, y = 205.813, z = 3034.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330100158, area_id = 23 },
	{ config_id = 667003, gadget_id = 70710007, pos = { x = -792.102, y = 193.316, z = 3142.018 }, rot = { x = 0.000, y = 187.792, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 667004, gadget_id = 70211101, pos = { x = -792.467, y = 192.184, z = 3140.804 }, rot = { x = 0.000, y = 162.762, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 667010, gadget_id = 70330197, pos = { x = -862.645, y = 198.502, z = 3035.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	{ config_id = 667011, gadget_id = 70220103, pos = { x = -863.112, y = 202.118, z = 3034.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 667007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -862.900, y = 207.691, z = 3034.969 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1667005, name = "PLATFORM_REACH_POINT_667005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_667005", action = "action_EVENT_PLATFORM_REACH_POINT_667005", trigger_count = 0 },
	{ config_id = 1667006, name = "AVATAR_NEAR_PLATFORM_667006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_667006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_667006", trigger_count = 0 },
	{ config_id = 1667007, name = "ENTER_REGION_667007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_667007", action = "action_EVENT_ENTER_REGION_667007", trigger_count = 0 },
	{ config_id = 1667008, name = "GADGET_STATE_CHANGE_667008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_667008", action = "action_EVENT_GADGET_STATE_CHANGE_667008" },
	{ config_id = 1667009, name = "GADGET_CREATE_667009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_667009", action = "action_EVENT_GADGET_CREATE_667009", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 667001, 667002, 667003, 667010, 667011 },
		regions = { 667007 },
		triggers = { "PLATFORM_REACH_POINT_667005", "AVATAR_NEAR_PLATFORM_667006", "ENTER_REGION_667007", "GADGET_STATE_CHANGE_667008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 667001, 667004 },
		regions = { },
		triggers = { "GADGET_CREATE_667009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_667005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_667005(context, evt)
	-- 将configid为 667001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 667001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 667002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 667002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_667006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_667006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 667002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_667007(context, evt)
	if evt.param1 ~= 667007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_667007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 667002, 330100157) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 667003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_667008(context, evt)
	if 667001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_667008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301667, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_667009(context, evt)
	if 667001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_667009(context, evt)
	-- 将configid为 667001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 667001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end