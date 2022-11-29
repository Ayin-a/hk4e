-- 基础信息
local base_info = {
	group_id = 177006091
}

-- Trigger变量
local defs = {
	point_sum = 15,
	route_2 = 700600013,
	gadget_seelie = 91002
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
	{ config_id = 91001, gadget_id = 70710006, pos = { x = 156.497, y = 186.217, z = -402.819 }, rot = { x = 0.000, y = 72.637, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 91002, gadget_id = 70710010, pos = { x = 196.440, y = 176.216, z = -431.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 700600014, area_id = 210 },
	{ config_id = 91003, gadget_id = 70710007, pos = { x = 157.849, y = 186.535, z = -402.665 }, rot = { x = 0.000, y = 85.940, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 91004, gadget_id = 70211160, pos = { x = 157.709, y = 186.060, z = -405.759 }, rot = { x = 0.000, y = 61.592, z = 0.000 }, level = 26, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 91007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 196.553, y = 176.979, z = -433.042 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1091005, name = "PLATFORM_REACH_POINT_91005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_91005", action = "action_EVENT_PLATFORM_REACH_POINT_91005", trigger_count = 0 },
	{ config_id = 1091006, name = "AVATAR_NEAR_PLATFORM_91006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_91006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_91006", trigger_count = 0 },
	{ config_id = 1091007, name = "ENTER_REGION_91007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91007", action = "action_EVENT_ENTER_REGION_91007", trigger_count = 0 },
	{ config_id = 1091008, name = "GADGET_STATE_CHANGE_91008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91008", action = "action_EVENT_GADGET_STATE_CHANGE_91008" },
	{ config_id = 1091009, name = "GADGET_CREATE_91009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91009", action = "action_EVENT_GADGET_CREATE_91009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 91001, 91002, 91003 },
		regions = { 91007 },
		triggers = { "PLATFORM_REACH_POINT_91005", "AVATAR_NEAR_PLATFORM_91006", "ENTER_REGION_91007", "GADGET_STATE_CHANGE_91008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 91001, 91004 },
		regions = { },
		triggers = { "GADGET_CREATE_91009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_91005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_91005(context, evt)
	-- 将configid为 91001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 91002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_91006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_91006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 91002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91007(context, evt)
	if evt.param1 ~= 91007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 91002, 700600013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 91003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_91008(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91008(context, evt)
	-- 改变指定group组177006026中， configid为26007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006026, 26007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91009(context, evt)
	if 91001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91009(context, evt)
	-- 将configid为 91001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组177006026中， configid为26007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006026, 26007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end