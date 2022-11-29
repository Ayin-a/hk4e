-- 基础信息
local base_info = {
	group_id = 133315217
}

-- Trigger变量
local defs = {
	point_sum = 49,
	route_2 = 331500071,
	gadget_seelie = 217002
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
	{ config_id = 217001, gadget_id = 70310460, pos = { x = 490.562, y = 132.040, z = 2421.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 217002, gadget_id = 70310190, pos = { x = 442.656, y = 155.402, z = 2324.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500072, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 217003, gadget_id = 70310461, pos = { x = 490.271, y = 131.704, z = 2421.104 }, rot = { x = 335.022, y = 199.302, z = 357.822 }, level = 27, area_id = 20 },
	{ config_id = 217004, gadget_id = 70211111, pos = { x = 490.872, y = 131.319, z = 2429.592 }, rot = { x = 0.000, y = 0.000, z = 354.644 }, level = 26, drop_tag = "解谜中级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 217007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 442.656, y = 155.402, z = 2324.039 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1217005, name = "PLATFORM_REACH_POINT_217005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_217005", action = "action_EVENT_PLATFORM_REACH_POINT_217005", trigger_count = 0 },
	{ config_id = 1217006, name = "AVATAR_NEAR_PLATFORM_217006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_217006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_217006", trigger_count = 0 },
	{ config_id = 1217007, name = "ENTER_REGION_217007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_217007", action = "action_EVENT_ENTER_REGION_217007", trigger_count = 0 },
	{ config_id = 1217008, name = "GADGET_STATE_CHANGE_217008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217008", action = "action_EVENT_GADGET_STATE_CHANGE_217008" },
	{ config_id = 1217009, name = "GADGET_CREATE_217009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_217009", action = "action_EVENT_GADGET_CREATE_217009", trigger_count = 0 },
	{ config_id = 1217010, name = "VARIABLE_CHANGE_217010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217010", action = "action_EVENT_VARIABLE_CHANGE_217010" },
	{ config_id = 1217011, name = "VARIABLE_CHANGE_217011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217011", action = "action_EVENT_VARIABLE_CHANGE_217011" },
	{ config_id = 1217012, name = "VARIABLE_CHANGE_217012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_217012", action = "action_EVENT_VARIABLE_CHANGE_217012" },
	{ config_id = 1217014, name = "QUEST_START_217014", event = EventType.EVENT_QUEST_START, source = "7306641", condition = "", action = "action_EVENT_QUEST_START_217014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "go1", value = 0, no_refresh = true },
	{ config_id = 2, name = "go2", value = 0, no_refresh = true },
	{ config_id = 3, name = "go3", value = 0, no_refresh = true }
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
		gadgets = { 217001, 217002, 217003 },
		regions = { 217007 },
		triggers = { "PLATFORM_REACH_POINT_217005", "AVATAR_NEAR_PLATFORM_217006", "ENTER_REGION_217007", "GADGET_STATE_CHANGE_217008", "VARIABLE_CHANGE_217010", "VARIABLE_CHANGE_217011", "VARIABLE_CHANGE_217012", "QUEST_START_217014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 217001, 217004 },
		regions = { },
		triggers = { "GADGET_CREATE_217009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_217005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_217005(context, evt)
	-- 将configid为 217001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 217002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 217002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_217006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 7 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go1") ~= 1 then
	return false
	end
	
	if 27 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go2") ~= 1 then
	return false
	end
	
	if 41 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go3") ~= 1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_217006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 217002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_217007(context, evt)
	if evt.param1 ~= 217007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_217007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 217002, 331500071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 217003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_217008(context, evt)
	if 217001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315217, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_217009(context, evt)
	if 217001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_217009(context, evt)
	-- 将configid为 217001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 217001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"go1"为1
	if ScriptLib.GetGroupVariableValue(context, "go1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 217002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"go2"为1
	if ScriptLib.GetGroupVariableValue(context, "go2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 217002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_217012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"go3"为1
	if ScriptLib.GetGroupVariableValue(context, "go3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_217012(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 217002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_217014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133315217, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"