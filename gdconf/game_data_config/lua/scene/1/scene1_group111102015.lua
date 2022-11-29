-- 基础信息
local base_info = {
	group_id = 111102015
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 110200003,
	gadget_seelie = 15002
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
	{ config_id = 15001, gadget_id = 70710006, pos = { x = 1243.068, y = 313.474, z = -1982.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15002, gadget_id = 70710010, pos = { x = 1258.068, y = 313.474, z = -1997.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110200004 },
	{ config_id = 15003, gadget_id = 70710007, pos = { x = 1243.768, y = 313.474, z = -1983.858 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 1 },
	{ config_id = 15004, gadget_id = 70211111, pos = { x = 1242.952, y = 313.474, z = -1981.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 15007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1259.568, y = 313.474, z = -1996.958 } }
}

-- 触发器
triggers = {
	{ config_id = 1015005, name = "PLATFORM_REACH_POINT_15005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_15005", action = "action_EVENT_PLATFORM_REACH_POINT_15005", trigger_count = 0 },
	{ config_id = 1015006, name = "AVATAR_NEAR_PLATFORM_15006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_15006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_15006", trigger_count = 0 },
	{ config_id = 1015007, name = "ENTER_REGION_15007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15007", action = "action_EVENT_ENTER_REGION_15007", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 15001, state = 0 },
			{ config_id = 15002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 15003, state = 0 }
		},
		monsters = {
		},
		regions = { 15007 },
		triggers = { "PLATFORM_REACH_POINT_15005", "AVATAR_NEAR_PLATFORM_15006", "ENTER_REGION_15007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 15001, state = 203 },
			{ config_id = 15004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_15005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_15005(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 15002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 111102015, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_15006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_15006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 15002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15007(context, evt)
	if evt.param1 ~= 15007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 15002, 110200003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15003 }) then
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