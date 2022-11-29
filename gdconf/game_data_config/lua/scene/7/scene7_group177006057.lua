-- 基础信息
local base_info = {
	group_id = 177006057
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 700600005,
	gadget_seelie = 57002
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
	{ config_id = 57001, gadget_id = 70710006, pos = { x = 438.279, y = 141.244, z = -168.182 }, rot = { x = 0.000, y = 139.003, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 57002, gadget_id = 70710010, pos = { x = 421.022, y = 144.662, z = -150.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 700600006, area_id = 210 },
	{ config_id = 57003, gadget_id = 70710007, pos = { x = 437.597, y = 141.528, z = -167.439 }, rot = { x = 0.000, y = 322.291, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 57004, gadget_id = 70211160, pos = { x = 439.934, y = 141.235, z = -167.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 57010, gadget_id = 70900387, pos = { x = 422.965, y = 143.763, z = -152.711 }, rot = { x = 10.636, y = 288.225, z = 343.062 }, level = 36, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 57007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 420.476, y = 144.107, z = -149.536 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1057005, name = "PLATFORM_REACH_POINT_57005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_57005", action = "action_EVENT_PLATFORM_REACH_POINT_57005", trigger_count = 0 },
	{ config_id = 1057006, name = "AVATAR_NEAR_PLATFORM_57006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_57006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_57006", trigger_count = 0 },
	{ config_id = 1057007, name = "ENTER_REGION_57007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57007", action = "action_EVENT_ENTER_REGION_57007", trigger_count = 0 },
	{ config_id = 1057008, name = "GADGET_STATE_CHANGE_57008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57008", action = "action_EVENT_GADGET_STATE_CHANGE_57008" },
	{ config_id = 1057009, name = "GADGET_CREATE_57009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_57009", action = "action_EVENT_GADGET_CREATE_57009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 57001, 57002, 57003, 57010 },
		regions = { 57007 },
		triggers = { "PLATFORM_REACH_POINT_57005", "AVATAR_NEAR_PLATFORM_57006", "ENTER_REGION_57007", "GADGET_STATE_CHANGE_57008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 57001, 57004 },
		regions = { },
		triggers = { "GADGET_CREATE_57009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_57005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_57005(context, evt)
	-- 将configid为 57001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 57002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_57006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_57006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 57002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57007(context, evt)
	if evt.param1 ~= 57007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 57002, 700600005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_57008(context, evt)
	if 57001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006057, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "flag" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "flag", 1, 177006064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_57009(context, evt)
	if 57001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_57009(context, evt)
	-- 将configid为 57001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end