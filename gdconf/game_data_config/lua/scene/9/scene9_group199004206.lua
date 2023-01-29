-- 基础信息
local base_info = {
	group_id = 199004206
}

-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 900400020,
	gadget_seelie = 206002
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
	{ config_id = 206001, gadget_id = 70710006, pos = { x = -218.799, y = 120.339, z = -515.500 }, rot = { x = 350.653, y = 343.056, z = 9.250 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 206002, gadget_id = 70710010, pos = { x = -340.076, y = 155.170, z = -684.698 }, rot = { x = 0.000, y = 172.723, z = 0.000 }, level = 20, start_route = false, area_id = 400 },
	{ config_id = 206004, gadget_id = 70211101, pos = { x = -218.006, y = 119.984, z = -517.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 206010, gadget_id = 70220024, pos = { x = -337.852, y = 152.950, z = -684.061 }, rot = { x = 3.703, y = 0.000, z = 8.932 }, level = 20, area_id = 400 },
	{ config_id = 206011, gadget_id = 70360001, pos = { x = -229.508, y = 120.090, z = -512.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 206003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -341.241, y = 152.122, z = -687.220 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1206003, name = "ENTER_REGION_206003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_206003", action = "action_EVENT_ENTER_REGION_206003", trigger_count = 0 },
	{ config_id = 1206005, name = "PLATFORM_REACH_POINT_206005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_206005", action = "action_EVENT_PLATFORM_REACH_POINT_206005", trigger_count = 0 },
	{ config_id = 1206006, name = "AVATAR_NEAR_PLATFORM_206006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_206006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_206006", trigger_count = 0 },
	{ config_id = 1206007, name = "ANY_GADGET_DIE_206007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_206007", action = "action_EVENT_ANY_GADGET_DIE_206007", trigger_count = 0 },
	{ config_id = 1206008, name = "GADGET_STATE_CHANGE_206008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206008", action = "action_EVENT_GADGET_STATE_CHANGE_206008" },
	{ config_id = 1206009, name = "GADGET_CREATE_206009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_206009", action = "action_EVENT_GADGET_CREATE_206009", trigger_count = 0 },
	{ config_id = 1206012, name = "LEVEL_TAG_CHANGE_206012", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_206012", trigger_count = 0 },
	{ config_id = 1206013, name = "GROUP_REFRESH_206013", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_206013", trigger_count = 0 },
	{ config_id = 1206014, name = "GROUP_LOAD_206014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_206014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "temp", value = 0, no_refresh = true }
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
		gadgets = { 206011 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_206012", "GROUP_REFRESH_206013", "GROUP_LOAD_206014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 206001, 206004 },
		regions = { },
		triggers = { "GADGET_CREATE_206009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 206001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 206001, 206002, 206010 },
		regions = { 206003 },
		triggers = { "ENTER_REGION_206003", "PLATFORM_REACH_POINT_206005", "AVATAR_NEAR_PLATFORM_206006", "ANY_GADGET_DIE_206007", "GADGET_STATE_CHANGE_206008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_206003(context, evt)
	if evt.param1 ~= 206003 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_206003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 206002, 900400020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_206005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_206005(context, evt)
	-- 将configid为 206001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 206002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 206002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_206006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_206006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 206002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_206007(context, evt)
	if 206010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_206007(context, evt)
	-- 将本组内变量名为 "start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 206002, 900400020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
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
function condition_EVENT_GADGET_STATE_CHANGE_206008(context, evt)
	if 206001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004206, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_206009(context, evt)
	if 206004 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_206009(context, evt)
	-- 将本组内变量名为 "chest1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chest1", 1, 199004219) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 206001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_206012(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1025 ) then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		if ScriptLib.GetGroupVariableValue(context, "start") == 1 then
			ScriptLib.KillEntityByConfigId(context, {group_id=199004206, config_id=206010, entity_type=EntityType.GADGET})
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004206, 4)
	end
	
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_206013(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	if ScriptLib.CheckSceneTag(context, 9,1025 ) then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		if ScriptLib.GetGroupVariableValue(context, "start") == 1 then
			ScriptLib.KillEntityByConfigId(context, {group_id=199004206, config_id=206010, entity_type=EntityType.GADGET})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_206014(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	return 0
end