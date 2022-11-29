-- 基础信息
local base_info = {
	group_id = 133220604
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 322000197,
	gadget_seelie = 604002
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
	{ config_id = 604001, gadget_id = 70710006, pos = { x = -1851.397, y = 210.806, z = -4185.578 }, rot = { x = 0.000, y = 30.078, z = 0.000 }, level = 32, area_id = 11 },
	{ config_id = 604002, gadget_id = 70710010, pos = { x = -1867.008, y = 222.910, z = -4188.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 322000198, area_id = 11 },
	{ config_id = 604003, gadget_id = 70710007, pos = { x = -1852.680, y = 210.647, z = -4183.246 }, rot = { x = 0.000, y = 265.859, z = 0.000 }, level = 32, area_id = 11 },
	{ config_id = 604004, gadget_id = 70211101, pos = { x = -1849.830, y = 210.759, z = -4186.567 }, rot = { x = 0.000, y = 353.233, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 604007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1865.311, y = 220.495, z = -4191.359 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1604005, name = "PLATFORM_REACH_POINT_604005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_604005", action = "action_EVENT_PLATFORM_REACH_POINT_604005", trigger_count = 0 },
	{ config_id = 1604006, name = "AVATAR_NEAR_PLATFORM_604006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_604006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_604006", trigger_count = 0 },
	{ config_id = 1604007, name = "ENTER_REGION_604007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_604007", action = "action_EVENT_ENTER_REGION_604007", trigger_count = 0 },
	{ config_id = 1604008, name = "GADGET_STATE_CHANGE_604008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_604008", action = "action_EVENT_GADGET_STATE_CHANGE_604008" },
	{ config_id = 1604009, name = "GADGET_CREATE_604009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_604009", action = "action_EVENT_GADGET_CREATE_604009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "num", value = 0, no_refresh = true }
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
		gadgets = { 604001, 604002, 604003 },
		regions = { 604007 },
		triggers = { "PLATFORM_REACH_POINT_604005", "AVATAR_NEAR_PLATFORM_604006", "ENTER_REGION_604007", "GADGET_STATE_CHANGE_604008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 604001, 604004 },
		regions = { },
		triggers = { "GADGET_CREATE_604009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_604005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_604005(context, evt)
	-- 将configid为 604001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 604001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 604002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 604002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_604006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_604006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 604002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_604007(context, evt)
	if evt.param1 ~= 604007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"num"为1
	if ScriptLib.GetGroupVariableValue(context, "num") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_604007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 604002, 322000197) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 604003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_604008(context, evt)
	if 604001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_604008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220604, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_604009(context, evt)
	if 604001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_604009(context, evt)
	-- 将configid为 604001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 604001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end