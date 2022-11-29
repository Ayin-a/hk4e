-- 基础信息
local base_info = {
	group_id = 133302611
}

-- Trigger变量
local defs = {
	point_sum = 18,
	route_2 = 330200013,
	gadget_seelie = 611002
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
	{ config_id = 611001, gadget_id = 70310460, pos = { x = -349.083, y = 105.039, z = 2258.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 611002, gadget_id = 70310190, pos = { x = -353.480, y = 109.275, z = 2252.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200014, area_id = 24 },
	{ config_id = 611003, gadget_id = 70310461, pos = { x = -347.273, y = 104.144, z = 2257.157 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 611004, gadget_id = 70211101, pos = { x = -351.687, y = 106.240, z = 2258.231 }, rot = { x = 6.185, y = 350.350, z = 345.312 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 611007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -351.980, y = 109.275, z = 2252.505 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1611005, name = "PLATFORM_REACH_POINT_611005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_611005", action = "action_EVENT_PLATFORM_REACH_POINT_611005", trigger_count = 0 },
	{ config_id = 1611006, name = "AVATAR_NEAR_PLATFORM_611006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_611006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_611006", trigger_count = 0 },
	{ config_id = 1611007, name = "ENTER_REGION_611007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_611007", action = "action_EVENT_ENTER_REGION_611007", trigger_count = 0 },
	{ config_id = 1611008, name = "GADGET_STATE_CHANGE_611008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_611008", action = "action_EVENT_GADGET_STATE_CHANGE_611008" },
	{ config_id = 1611009, name = "GADGET_CREATE_611009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_611009", action = "action_EVENT_GADGET_CREATE_611009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 611010, gadget_id = 70310198, pos = { x = -360.384, y = 108.339, z = 2248.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
		{ config_id = 611011, gadget_id = 70310198, pos = { x = -376.954, y = 103.600, z = 2266.860 }, rot = { x = 0.000, y = 191.991, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 }
	},
	triggers = {
		{ config_id = 1611012, name = "PLATFORM_ARRIVAL_611012", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_611012", action = "action_EVENT_PLATFORM_ARRIVAL_611012", trigger_count = 0 },
		{ config_id = 1611013, name = "PLATFORM_ARRIVAL_611013", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_611013", action = "action_EVENT_PLATFORM_ARRIVAL_611013", trigger_count = 0 },
		{ config_id = 1611014, name = "QUEST_START_611014", event = EventType.EVENT_QUEST_START, source = "7306117", condition = "", action = "action_EVENT_QUEST_START_611014" }
	}
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
		gadgets = { 611001, 611002, 611003 },
		regions = { 611007 },
		triggers = { "PLATFORM_REACH_POINT_611005", "AVATAR_NEAR_PLATFORM_611006", "ENTER_REGION_611007", "GADGET_STATE_CHANGE_611008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 611001, 611004 },
		regions = { },
		triggers = { "GADGET_CREATE_611009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_611005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_611005(context, evt)
	-- 将configid为 611001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 611001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 611002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 611002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_611006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_611006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 611002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_611007(context, evt)
	if evt.param1 ~= 611007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_611007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 611002, 330200013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 611003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_611008(context, evt)
	if 611001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_611008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302611, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_611009(context, evt)
	if 611001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_611009(context, evt)
	-- 将configid为 611001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 611001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"