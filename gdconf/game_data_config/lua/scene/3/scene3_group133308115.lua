-- 基础信息
local base_info = {
	group_id = 133308115
}

-- Trigger变量
local defs = {
	point_sum = 35,
	route_2 = 330800050,
	gadget_seelie = 115002
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
	{ config_id = 115001, gadget_id = 70330331, pos = { x = -2259.193, y = 271.177, z = 4007.119 }, rot = { x = 0.000, y = 86.594, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 115002, gadget_id = 70710010, pos = { x = -2200.719, y = 288.331, z = 4048.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330800051, area_id = 26 },
	{ config_id = 115003, gadget_id = 70710007, pos = { x = -2258.520, y = 272.369, z = 4007.298 }, rot = { x = 0.000, y = 55.598, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 115004, gadget_id = 70211101, pos = { x = -2258.731, y = 270.983, z = 4005.424 }, rot = { x = 357.221, y = 58.934, z = 350.284 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 115007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2200.441, y = 288.359, z = 4048.687 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1115005, name = "PLATFORM_ARRIVAL_115005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_115005", action = "action_EVENT_PLATFORM_ARRIVAL_115005", trigger_count = 0 },
	{ config_id = 1115006, name = "AVATAR_NEAR_PLATFORM_115006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_115006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_115006", trigger_count = 0 },
	{ config_id = 1115007, name = "ENTER_REGION_115007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115007", action = "action_EVENT_ENTER_REGION_115007", trigger_count = 0 },
	{ config_id = 1115008, name = "GADGET_STATE_CHANGE_115008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115008", action = "action_EVENT_GADGET_STATE_CHANGE_115008" },
	{ config_id = 1115009, name = "GADGET_CREATE_115009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_115009", action = "action_EVENT_GADGET_CREATE_115009", trigger_count = 0 }
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
		gadgets = { 115001, 115002, 115003 },
		regions = { 115007 },
		triggers = { "PLATFORM_ARRIVAL_115005", "AVATAR_NEAR_PLATFORM_115006", "ENTER_REGION_115007", "GADGET_STATE_CHANGE_115008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 115001, 115004 },
		regions = { },
		triggers = { "GADGET_CREATE_115009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_115005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_115005(context, evt)
	-- 将configid为 115001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 115002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 115002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_115006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_115006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 115002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_115007(context, evt)
	if evt.param1 ~= 115007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 115002, 330800050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 115003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	if 115001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308115, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_115009(context, evt)
	if 115001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_115009(context, evt)
	-- 将configid为 115001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end