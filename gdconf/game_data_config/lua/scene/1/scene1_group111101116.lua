-- 基础信息
local base_info = {
	group_id = 111101116
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 110100051,
	gadget_seelie = 116002
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
	{ config_id = 116001, gadget_id = 70710006, pos = { x = 2641.969, y = 249.163, z = -1249.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 116002, gadget_id = 70710010, pos = { x = 2656.969, y = 247.880, z = -1263.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100052 },
	{ config_id = 116003, gadget_id = 70710007, pos = { x = 2642.669, y = 248.994, z = -1250.590 }, rot = { x = 0.000, y = 148.000, z = 0.000 }, level = 1 },
	{ config_id = 116004, gadget_id = 70211111, pos = { x = 2641.853, y = 247.996, z = -1248.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 116007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2658.469, y = 247.996, z = -1263.691 } }
}

-- 触发器
triggers = {
	{ config_id = 1116005, name = "PLATFORM_REACH_POINT_116005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_116005", action = "action_EVENT_PLATFORM_REACH_POINT_116005", trigger_count = 0 },
	{ config_id = 1116006, name = "AVATAR_NEAR_PLATFORM_116006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_116006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_116006", trigger_count = 0 },
	{ config_id = 1116007, name = "ENTER_REGION_116007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_116007", action = "action_EVENT_ENTER_REGION_116007", trigger_count = 0 },
	{ config_id = 1116008, name = "GADGET_STATE_CHANGE_116008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116008", action = "action_EVENT_GADGET_STATE_CHANGE_116008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
			{ config_id = 116001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 116001, state = 0 },
			{ config_id = 116002, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } },
			{ config_id = 116003, state = 0 }
		},
		monsters = {
		},
		regions = { 116007 },
		triggers = { "PLATFORM_REACH_POINT_116005", "AVATAR_NEAR_PLATFORM_116006", "ENTER_REGION_116007", "GADGET_STATE_CHANGE_116008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 116001, state = 203 },
			{ config_id = 116004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinish", value = 1, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_116005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_116005(context, evt)
	-- 将configid为 116001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 116002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 116002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_116006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_116006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 116002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_116007(context, evt)
	if evt.param1 ~= 116007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_116007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 116002, 110100051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 116003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_116008(context, evt)
	if 116001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116008(context, evt)
	
	ScriptLib.GoToFlowSuite(context, 111101116, 3)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 111101114, 114002, GadgetState.Default) 
	return 0
end