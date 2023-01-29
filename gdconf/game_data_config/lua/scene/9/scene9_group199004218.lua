-- 基础信息
local base_info = {
	group_id = 199004218
}

-- Trigger变量
local defs = {
	point_sum = 21,
	route_2 = 900400028,
	gadget_seelie = 218002
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
	{ config_id = 218001, gadget_id = 70710006, pos = { x = -214.269, y = 119.861, z = -512.232 }, rot = { x = 358.819, y = 300.446, z = 359.300 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 218002, gadget_id = 70710010, pos = { x = -362.898, y = 191.832, z = -604.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400029, area_id = 400 },
	{ config_id = 218004, gadget_id = 70211101, pos = { x = -212.265, y = 119.790, z = -514.231 }, rot = { x = 0.000, y = 318.662, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 218010, gadget_id = 70620001, pos = { x = -363.709, y = 190.002, z = -604.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, isOneoff = true, area_id = 400 },
	{ config_id = 218011, gadget_id = 70360001, pos = { x = -364.792, y = 188.176, z = -598.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 218014, gadget_id = 70360001, pos = { x = -222.947, y = 120.510, z = -515.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 218007, shape = RegionShape.SPHERE, radius = 2.3, pos = { x = -363.961, y = 189.567, z = -604.518 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1218003, name = "GROUP_LOAD_218003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218003", trigger_count = 0 },
	{ config_id = 1218005, name = "PLATFORM_REACH_POINT_218005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_218005", action = "action_EVENT_PLATFORM_REACH_POINT_218005", trigger_count = 0 },
	{ config_id = 1218006, name = "AVATAR_NEAR_PLATFORM_218006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_218006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_218006", trigger_count = 0 },
	{ config_id = 1218007, name = "ENTER_REGION_218007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_218007", action = "action_EVENT_ENTER_REGION_218007", trigger_count = 0 },
	{ config_id = 1218008, name = "GADGET_STATE_CHANGE_218008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218008", action = "action_EVENT_GADGET_STATE_CHANGE_218008" },
	{ config_id = 1218009, name = "GADGET_CREATE_218009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218009", action = "action_EVENT_GADGET_CREATE_218009", trigger_count = 0 },
	{ config_id = 1218012, name = "LEVEL_TAG_CHANGE_218012", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_218012", trigger_count = 0 },
	{ config_id = 1218013, name = "GROUP_REFRESH_218013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_218013", trigger_count = 0 }
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
		gadgets = { 218011, 218014 },
		regions = { },
		triggers = { "GROUP_LOAD_218003", "LEVEL_TAG_CHANGE_218012", "GROUP_REFRESH_218013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 218001, 218004 },
		regions = { },
		triggers = { "GADGET_CREATE_218009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 218001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 218001, 218002, 218010 },
		regions = { 218007 },
		triggers = { "PLATFORM_REACH_POINT_218005", "AVATAR_NEAR_PLATFORM_218006", "ENTER_REGION_218007", "GADGET_STATE_CHANGE_218008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_218003(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_218005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_218005(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 218002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_218006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_218006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 218002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_218007(context, evt)
	if evt.param1 ~= 218007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_218007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 218002, 900400028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	if 218001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004218, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_218009(context, evt)
	if 218004 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218009(context, evt)
	-- 将本组内变量名为 "chest3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chest3", 1, 199004219) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_218012(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004218, 4)
	end
	
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_218013(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	if ScriptLib.CheckSceneTag(context, 9,1022 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	end
	
	return 0
end