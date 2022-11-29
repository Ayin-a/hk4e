-- 基础信息
local base_info = {
	group_id = 166001397
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 600100060,
	gadget_seelie = 397002
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
	{ config_id = 397001, gadget_id = 70720218, pos = { x = 763.350, y = 759.289, z = 319.442 }, rot = { x = 0.000, y = 63.494, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 397002, gadget_id = 70720217, pos = { x = 827.204, y = 757.448, z = 335.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 600100059, area_id = 300 },
	{ config_id = 397003, gadget_id = 70720219, pos = { x = 763.452, y = 759.199, z = 319.538 }, rot = { x = 0.000, y = 64.945, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 397004, gadget_id = 70211101, pos = { x = 763.089, y = 759.710, z = 322.996 }, rot = { x = 10.029, y = 88.242, z = 1.673 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 397007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 826.920, y = 757.364, z = 335.706 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1397005, name = "PLATFORM_REACH_POINT_397005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_397005", action = "action_EVENT_PLATFORM_REACH_POINT_397005", trigger_count = 0 },
	{ config_id = 1397006, name = "AVATAR_NEAR_PLATFORM_397006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_397006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_397006", trigger_count = 0 },
	{ config_id = 1397007, name = "ENTER_REGION_397007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_397007", action = "action_EVENT_ENTER_REGION_397007", trigger_count = 0 },
	{ config_id = 1397008, name = "GADGET_STATE_CHANGE_397008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397008", action = "action_EVENT_GADGET_STATE_CHANGE_397008" },
	{ config_id = 1397009, name = "GADGET_CREATE_397009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_397009", action = "action_EVENT_GADGET_CREATE_397009", trigger_count = 0 }
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
		gadgets = { 397001, 397002, 397003 },
		regions = { 397007 },
		triggers = { "PLATFORM_REACH_POINT_397005", "AVATAR_NEAR_PLATFORM_397006", "ENTER_REGION_397007", "GADGET_STATE_CHANGE_397008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 397001, 397004 },
		regions = { },
		triggers = { "GADGET_CREATE_397009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_397005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_397005(context, evt)
	-- 将configid为 397001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 397002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_397006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_397006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 397002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_397007(context, evt)
	if evt.param1 ~= 397007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_397007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 397002, 600100060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_397008(context, evt)
	if 397001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001397, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_397009(context, evt)
	if 397001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_397009(context, evt)
	-- 将configid为 397001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end