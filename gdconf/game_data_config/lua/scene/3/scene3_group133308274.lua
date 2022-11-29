-- 基础信息
local base_info = {
	group_id = 133308274
}

-- Trigger变量
local defs = {
	point_sum = 47,
	route_2 = 330800087,
	gadget_seelie = 274002
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
	{ config_id = 274001, gadget_id = 70330331, pos = { x = -1764.898, y = 123.796, z = 4931.864 }, rot = { x = 0.000, y = 185.980, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 274002, gadget_id = 70710010, pos = { x = -2017.501, y = 125.243, z = 4871.977 }, rot = { x = 0.000, y = 132.776, z = 0.000 }, level = 32, route_id = 330800088, area_id = 26 },
	{ config_id = 274003, gadget_id = 70710007, pos = { x = -1765.664, y = 124.474, z = 4931.962 }, rot = { x = 13.590, y = 258.402, z = 359.911 }, level = 32, area_id = 26 },
	{ config_id = 274004, gadget_id = 70211101, pos = { x = -1762.010, y = 124.007, z = 4933.999 }, rot = { x = 352.255, y = 221.704, z = 348.616 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 274010, gadget_id = 70220103, pos = { x = -1793.029, y = 122.220, z = 4900.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 274011, gadget_id = 70220103, pos = { x = -1769.082, y = 127.497, z = 4921.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 274007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2017.501, y = 125.243, z = 4871.977 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1274005, name = "PLATFORM_ARRIVAL_274005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_274005", action = "action_EVENT_PLATFORM_ARRIVAL_274005", trigger_count = 0 },
	{ config_id = 1274006, name = "AVATAR_NEAR_PLATFORM_274006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_274006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_274006", trigger_count = 0 },
	{ config_id = 1274007, name = "ENTER_REGION_274007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_274007", action = "action_EVENT_ENTER_REGION_274007", trigger_count = 0 },
	{ config_id = 1274008, name = "GADGET_STATE_CHANGE_274008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274008", action = "action_EVENT_GADGET_STATE_CHANGE_274008" },
	{ config_id = 1274009, name = "GADGET_CREATE_274009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_274009", action = "action_EVENT_GADGET_CREATE_274009", trigger_count = 0 }
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
		gadgets = { 274001, 274002, 274003, 274010, 274011 },
		regions = { 274007 },
		triggers = { "PLATFORM_ARRIVAL_274005", "AVATAR_NEAR_PLATFORM_274006", "ENTER_REGION_274007", "GADGET_STATE_CHANGE_274008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 274001, 274004, 274010, 274011 },
		regions = { },
		triggers = { "GADGET_CREATE_274009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_274005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_274005(context, evt)
	-- 将configid为 274001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 274002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 274002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_274006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_274006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 274002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_274007(context, evt)
	if evt.param1 ~= 274007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_274007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 274002, 330800087) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 274003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	if 274001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308274, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_274009(context, evt)
	if 274001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_274009(context, evt)
	-- 将configid为 274001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 274001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end