-- 基础信息
local base_info = {
	group_id = 199004170
}

-- Trigger变量
local defs = {
	point_sum = 21,
	route_2 = 900400018,
	gadget_seelie = 170002
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
	{ config_id = 170001, gadget_id = 70710006, pos = { x = -227.887, y = 119.961, z = -515.029 }, rot = { x = 0.000, y = 22.208, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 170002, gadget_id = 70710010, pos = { x = -403.632, y = 225.135, z = -602.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400019, area_id = 400 },
	{ config_id = 170004, gadget_id = 70211101, pos = { x = -229.860, y = 119.867, z = -517.784 }, rot = { x = 0.984, y = 28.444, z = 0.530 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 170005, gadget_id = 70360001, pos = { x = -387.260, y = 217.704, z = -602.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 170008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -402.130, y = 224.983, z = -603.427 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1170003, name = "GROUP_LOAD_170003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_170003", trigger_count = 0 },
	{ config_id = 1170006, name = "PLATFORM_REACH_POINT_170006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_170006", action = "action_EVENT_PLATFORM_REACH_POINT_170006", trigger_count = 0 },
	{ config_id = 1170007, name = "AVATAR_NEAR_PLATFORM_170007", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_170007", action = "action_EVENT_AVATAR_NEAR_PLATFORM_170007", trigger_count = 0 },
	{ config_id = 1170008, name = "ENTER_REGION_170008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_170008", action = "action_EVENT_ENTER_REGION_170008", trigger_count = 0 },
	{ config_id = 1170009, name = "GADGET_STATE_CHANGE_170009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170009", action = "action_EVENT_GADGET_STATE_CHANGE_170009" },
	{ config_id = 1170010, name = "GADGET_CREATE_170010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170010", action = "action_EVENT_GADGET_CREATE_170010", trigger_count = 0 },
	{ config_id = 1170011, name = "LEVEL_TAG_CHANGE_170011", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_170011", trigger_count = 0 },
	{ config_id = 1170012, name = "GROUP_REFRESH_170012", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_170012", trigger_count = 0 }
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
		gadgets = { 170005 },
		regions = { },
		triggers = { "GROUP_LOAD_170003", "LEVEL_TAG_CHANGE_170011", "GROUP_REFRESH_170012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 170001, 170004 },
		regions = { },
		triggers = { "GADGET_CREATE_170010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 170001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 170001, 170002 },
		regions = { 170008 },
		triggers = { "PLATFORM_REACH_POINT_170006", "AVATAR_NEAR_PLATFORM_170007", "ENTER_REGION_170008", "GADGET_STATE_CHANGE_170009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_170003(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_170006(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_170006(context, evt)
	-- 将configid为 170001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 170002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 170002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_170007(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_170007(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 170002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_170008(context, evt)
	if evt.param1 ~= 170008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_170008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 170002, 900400018) then
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
function condition_EVENT_GADGET_STATE_CHANGE_170009(context, evt)
	if 170001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170009(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004170, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170010(context, evt)
	if 170004 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170010(context, evt)
	-- 将configid为 170001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "chest2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "chest2", 1, 199004219) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_170011(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1024 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 199004170, 4)
	end
	
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_170012(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	
	if ScriptLib.CheckSceneTag(context, 9,1024 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
	end
	
	return 0
end