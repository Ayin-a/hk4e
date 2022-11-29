-- 基础信息
local base_info = {
	group_id = 177005160
}

-- Trigger变量
local defs = {
	point_sum = 41,
	route_2 = 700500032,
	gadget_seelie = 160002
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
	{ config_id = 160001, gadget_id = 70290293, pos = { x = 380.204, y = 144.479, z = 856.376 }, rot = { x = 0.000, y = 122.493, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 160002, gadget_id = 70710010, pos = { x = 353.935, y = 120.801, z = 918.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 700500033, area_id = 210 },
	{ config_id = 160003, gadget_id = 70710007, pos = { x = 380.400, y = 145.821, z = 856.558 }, rot = { x = 0.000, y = 0.550, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 160004, gadget_id = 70211160, pos = { x = 382.496, y = 144.403, z = 857.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 160007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 352.257, y = 121.587, z = 918.932 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 终点
	{ config_id = 1160005, name = "PLATFORM_REACH_POINT_160005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_160005", action = "action_EVENT_PLATFORM_REACH_POINT_160005", trigger_count = 0 },
	{ config_id = 1160006, name = "AVATAR_NEAR_PLATFORM_160006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_160006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_160006", trigger_count = 0 },
	{ config_id = 1160007, name = "ENTER_REGION_160007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_160007", action = "action_EVENT_ENTER_REGION_160007", trigger_count = 0 },
	{ config_id = 1160008, name = "GADGET_STATE_CHANGE_160008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160008", action = "action_EVENT_GADGET_STATE_CHANGE_160008" },
	{ config_id = 1160009, name = "GADGET_CREATE_160009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_160009", action = "action_EVENT_GADGET_CREATE_160009", trigger_count = 0 },
	{ config_id = 1160010, name = "ANY_GADGET_DIE_160010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_160010", action = "action_EVENT_ANY_GADGET_DIE_160010", trigger_count = 0 },
	{ config_id = 1160011, name = "GADGET_STATE_CHANGE_160011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160011", action = "action_EVENT_GADGET_STATE_CHANGE_160011", trigger_count = 0 },
	{ config_id = 1160012, name = "GADGET_STATE_CHANGE_160012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160012", action = "action_EVENT_GADGET_STATE_CHANGE_160012", trigger_count = 0 },
	-- 石堆
	{ config_id = 1160013, name = "PLATFORM_REACH_POINT_160013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_160013", action = "action_EVENT_PLATFORM_REACH_POINT_160013", trigger_count = 0 },
	-- 栅栏1
	{ config_id = 1160014, name = "PLATFORM_REACH_POINT_160014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_160014", action = "action_EVENT_PLATFORM_REACH_POINT_160014", trigger_count = 0 },
	-- 栅栏2
	{ config_id = 1160015, name = "PLATFORM_REACH_POINT_160015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_160015", action = "action_EVENT_PLATFORM_REACH_POINT_160015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		gadgets = { 160001, 160002, 160003 },
		regions = { 160007 },
		triggers = { "PLATFORM_REACH_POINT_160005", "AVATAR_NEAR_PLATFORM_160006", "ENTER_REGION_160007", "GADGET_STATE_CHANGE_160008", "ANY_GADGET_DIE_160010", "GADGET_STATE_CHANGE_160011", "GADGET_STATE_CHANGE_160012", "PLATFORM_REACH_POINT_160013", "PLATFORM_REACH_POINT_160014", "PLATFORM_REACH_POINT_160015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 160001, 160004 },
		regions = { },
		triggers = { "GADGET_CREATE_160009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_160005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_160005(context, evt)
	-- 将configid为 160001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 160001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 160002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_160006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_160006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 160002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_160007(context, evt)
	if evt.param1 ~= 160007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_160007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 160002, 700500032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 160003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_160008(context, evt)
	if 160001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177005160, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_160009(context, evt)
	if 160001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_160009(context, evt)
	-- 将configid为 160001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 160001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_160010(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177005158}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_160010(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 160002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_160011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 177005059, 59011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160011(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 160002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_160012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 177005170, 170001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160012(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 160002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_160013(context, evt)
	-- 判断是gadgetid 为 160002的移动平台，是否到达了700500032 的路线中的 4 点
	
	if 160002 ~= evt.param1 then
	  return false
	end
	
	if 700500032 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断指定group组剩余gadget数量是否是3 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177005158}) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_160013(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_160014(context, evt)
	-- 判断是gadgetid 为 160002的移动平台，是否到达了700500032 的路线中的 19 点
	
	if 160002 ~= evt.param1 then
	  return false
	end
	
	if 700500032 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 177005059, 59011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_160014(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_160015(context, evt)
	-- 判断是gadgetid 为 160002的移动平台，是否到达了700500032 的路线中的 30 点
	
	if 160002 ~= evt.param1 then
	  return false
	end
	
	if 700500032 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 177005170, 170001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_160015(context, evt)
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end