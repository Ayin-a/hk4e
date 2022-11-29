-- 基础信息
local base_info = {
	group_id = 133301637
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330100138,
	gadget_seelie = 637002
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
	{ config_id = 637001, gadget_id = 70710006, pos = { x = -359.132, y = 223.544, z = 3454.619 }, rot = { x = 0.000, y = 111.079, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 637002, gadget_id = 70710010, pos = { x = -384.429, y = 212.217, z = 3423.102 }, rot = { x = 0.000, y = 340.648, z = 0.000 }, level = 27, route_id = 330100139, area_id = 22 },
	{ config_id = 637003, gadget_id = 70710007, pos = { x = -358.544, y = 223.887, z = 3453.447 }, rot = { x = 1.176, y = 155.936, z = 354.782 }, level = 27, area_id = 29 },
	{ config_id = 637004, gadget_id = 70211101, pos = { x = -359.287, y = 222.729, z = 3459.158 }, rot = { x = 349.772, y = 161.999, z = 352.460 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 },
	{ config_id = 637010, gadget_id = 70290544, pos = { x = -355.767, y = 228.813, z = 3455.105 }, rot = { x = 0.000, y = 24.948, z = 0.000 }, level = 27, area_id = 29 }
}

-- 区域
regions = {
	{ config_id = 637007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -384.306, y = 212.243, z = 3423.112 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1637005, name = "PLATFORM_REACH_POINT_637005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_637005", action = "action_EVENT_PLATFORM_REACH_POINT_637005", trigger_count = 0 },
	{ config_id = 1637006, name = "AVATAR_NEAR_PLATFORM_637006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_637006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_637006", trigger_count = 0 },
	{ config_id = 1637007, name = "ENTER_REGION_637007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_637007", action = "action_EVENT_ENTER_REGION_637007", trigger_count = 0 },
	{ config_id = 1637008, name = "GADGET_STATE_CHANGE_637008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_637008", action = "action_EVENT_GADGET_STATE_CHANGE_637008" },
	{ config_id = 1637009, name = "GADGET_CREATE_637009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_637009", action = "action_EVENT_GADGET_CREATE_637009", trigger_count = 0 }
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
		gadgets = { 637001, 637002, 637003, 637010 },
		regions = { 637007 },
		triggers = { "PLATFORM_REACH_POINT_637005", "AVATAR_NEAR_PLATFORM_637006", "ENTER_REGION_637007", "GADGET_STATE_CHANGE_637008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 637001, 637004 },
		regions = { },
		triggers = { "GADGET_CREATE_637009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_637005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_637005(context, evt)
	-- 将configid为 637001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 637001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 637002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 637002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 637010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 637010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_637006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_637006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 637002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_637007(context, evt)
	if evt.param1 ~= 637007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_637007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 637002, 330100138) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 637003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_637008(context, evt)
	if 637001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_637008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301637, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_637009(context, evt)
	if 637001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_637009(context, evt)
	-- 将configid为 637001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 637001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end