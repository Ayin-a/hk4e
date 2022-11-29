-- 基础信息
local base_info = {
	group_id = 155005347
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 500500108,
	gadget_seelie = 347002
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
	{ config_id = 347001, gadget_id = 70290293, pos = { x = 618.332, y = 207.504, z = 633.403 }, rot = { x = 359.886, y = 293.310, z = 3.020 }, level = 36, area_id = 200 },
	{ config_id = 347002, gadget_id = 70710010, pos = { x = 588.782, y = 211.505, z = 622.014 }, rot = { x = 0.000, y = 118.667, z = 0.000 }, level = 36, route_id = 500500109, area_id = 200 },
	{ config_id = 347003, gadget_id = 70710007, pos = { x = 615.721, y = 208.800, z = 632.578 }, rot = { x = 0.000, y = 72.828, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 347004, gadget_id = 70211111, pos = { x = 618.886, y = 207.656, z = 634.636 }, rot = { x = 1.160, y = 300.676, z = 8.161 }, level = 16, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 347007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 585.151, y = 210.637, z = 624.326 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1347005, name = "PLATFORM_REACH_POINT_347005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_347005", action = "action_EVENT_PLATFORM_REACH_POINT_347005", trigger_count = 0 },
	{ config_id = 1347006, name = "AVATAR_NEAR_PLATFORM_347006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_347006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_347006", trigger_count = 0 },
	{ config_id = 1347007, name = "ENTER_REGION_347007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_347007", action = "action_EVENT_ENTER_REGION_347007", trigger_count = 0 },
	{ config_id = 1347008, name = "GADGET_STATE_CHANGE_347008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_347008", action = "action_EVENT_GADGET_STATE_CHANGE_347008" },
	{ config_id = 1347009, name = "GADGET_CREATE_347009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_347009", action = "action_EVENT_GADGET_CREATE_347009", trigger_count = 0 },
	{ config_id = 1347010, name = "GROUP_LOAD_347010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_347010", action = "action_EVENT_GROUP_LOAD_347010", trigger_count = 0 },
	{ config_id = 1347011, name = "VARIABLE_CHANGE_347011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_347011", action = "action_EVENT_VARIABLE_CHANGE_347011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reachPoint", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 347001, 347002, 347003 },
		regions = { 347007 },
		triggers = { "PLATFORM_REACH_POINT_347005", "AVATAR_NEAR_PLATFORM_347006", "ENTER_REGION_347007", "GADGET_STATE_CHANGE_347008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 347001, 347004 },
		regions = { },
		triggers = { "GADGET_CREATE_347009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 347001, 347003 },
		regions = { },
		triggers = { "GROUP_LOAD_347010", "VARIABLE_CHANGE_347011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_347005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_347005(context, evt)
	-- 将configid为 347001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 347002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 347002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_347006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_347006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 347002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_347007(context, evt)
	if evt.param1 ~= 347007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_347007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 347002, 500500108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 347003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_347008(context, evt)
	if 347001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_347008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005347, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_347009(context, evt)
	if 347001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_347009(context, evt)
	-- 将configid为 347001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_347010(context, evt)
	-- 判断变量"reachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "reachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_347010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155005347, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_347011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reachPoint"为1
	if ScriptLib.GetGroupVariableValue(context, "reachPoint") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_347011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155005347, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end