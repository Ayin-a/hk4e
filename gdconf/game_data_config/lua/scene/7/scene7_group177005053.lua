-- 基础信息
local base_info = {
	group_id = 177005053
}

-- Trigger变量
local defs = {
	point_sum = 15,
	route_2 = 700500005,
	gadget_seelie = 53002
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
	{ config_id = 53001, gadget_id = 70290293, pos = { x = 680.348, y = 243.084, z = 670.716 }, rot = { x = 0.000, y = 274.277, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 53002, gadget_id = 70710010, pos = { x = 606.619, y = 233.104, z = 732.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 700500006, area_id = 210 },
	{ config_id = 53003, gadget_id = 70710007, pos = { x = 679.682, y = 243.820, z = 671.041 }, rot = { x = 0.000, y = 303.200, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 53004, gadget_id = 70211160, pos = { x = 679.724, y = 242.998, z = 668.735 }, rot = { x = 0.000, y = 294.951, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 53007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 609.246, y = 235.753, z = 734.180 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1053005, name = "PLATFORM_REACH_POINT_53005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_53005", action = "action_EVENT_PLATFORM_REACH_POINT_53005", trigger_count = 0 },
	{ config_id = 1053006, name = "AVATAR_NEAR_PLATFORM_53006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_53006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_53006", trigger_count = 0 },
	{ config_id = 1053007, name = "ENTER_REGION_53007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53007", action = "action_EVENT_ENTER_REGION_53007", trigger_count = 0 },
	{ config_id = 1053008, name = "GADGET_STATE_CHANGE_53008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53008", action = "action_EVENT_GADGET_STATE_CHANGE_53008" },
	{ config_id = 1053009, name = "GADGET_CREATE_53009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53009", action = "action_EVENT_GADGET_CREATE_53009", trigger_count = 0 }
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
		gadgets = { 53001, 53002, 53003 },
		regions = { 53007 },
		triggers = { "PLATFORM_REACH_POINT_53005", "AVATAR_NEAR_PLATFORM_53006", "ENTER_REGION_53007", "GADGET_STATE_CHANGE_53008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 53001, 53004 },
		regions = { },
		triggers = { "GADGET_CREATE_53009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_53005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_53005(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 53002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_53006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_53006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 53002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_53007(context, evt)
	if evt.param1 ~= 53007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 53002, 700500005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 53003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_53008(context, evt)
	if 53001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005053, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53009(context, evt)
	if 53001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53009(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end