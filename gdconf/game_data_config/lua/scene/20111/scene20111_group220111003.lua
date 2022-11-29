-- 基础信息
local base_info = {
	group_id = 220111003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 25080401, pos = { x = 20.979, y = 1.940, z = 46.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 3009, monster_id = 25050301, pos = { x = 28.016, y = 1.869, z = 47.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 25050301, pos = { x = 9.347, y = 1.869, z = 59.268 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 25050301, pos = { x = 14.133, y = 1.877, z = 47.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, monster_id = 25050301, pos = { x = 33.025, y = 1.868, z = 59.142 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70290137, pos = { x = 19.236, y = 2.117, z = 74.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3007, gadget_id = 70290137, pos = { x = 6.401, y = 2.117, z = 59.323 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360291, pos = { x = 5.532, y = 3.401, z = 59.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70360291, pos = { x = -2.099, y = 3.401, z = 59.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70360282, pos = { x = 2.707, y = 2.577, z = 68.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 7, start_route = false, persistent = true },
	{ config_id = 3022, gadget_id = 70360280, pos = { x = 35.478, y = 3.401, z = 59.209 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 16.628, y = 4.151, z = 80.576 } },
	{ config_id = 3003, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 10.000 }, pos = { x = 31.624, y = 5.654, z = 84.064 } },
	{ config_id = 3004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -0.546, y = 2.658, z = 59.964 } },
	{ config_id = 3014, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 4.000 }, pos = { x = 18.042, y = 4.697, z = 71.307 } },
	{ config_id = 3023, shape = RegionShape.CUBIC, size = { x = 30.000, y = 4.000, z = 5.500 }, pos = { x = 21.464, y = 3.708, z = 59.256 } }
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "ENTER_REGION_3001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3001", action = "action_EVENT_ENTER_REGION_3001" },
	{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003", trigger_count = 0 },
	{ config_id = 1003004, name = "ENTER_REGION_3004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3004", action = "action_EVENT_ENTER_REGION_3004" },
	{ config_id = 1003005, name = "ANY_MONSTER_DIE_3005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3005", action = "action_EVENT_ANY_MONSTER_DIE_3005" },
	{ config_id = 1003014, name = "ENTER_REGION_3014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3014", action = "action_EVENT_ENTER_REGION_3014", trigger_count = 0 },
	{ config_id = 1003018, name = "GADGET_STATE_CHANGE_3018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3018", action = "action_EVENT_GADGET_STATE_CHANGE_3018", trigger_count = 0 },
	{ config_id = 1003019, name = "PLATFORM_REACH_POINT_3019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3019", action = "action_EVENT_PLATFORM_REACH_POINT_3019", trigger_count = 0 },
	{ config_id = 1003020, name = "TIMER_EVENT_3020", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_3020", trigger_count = 0 },
	{ config_id = 1003021, name = "PLATFORM_REACH_POINT_3021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_3021", action = "action_EVENT_PLATFORM_REACH_POINT_3021", trigger_count = 0 },
	{ config_id = 1003023, name = "ENTER_REGION_3023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3023", action = "action_EVENT_ENTER_REGION_3023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive1", value = 0, no_refresh = false },
	{ config_id = 2, name = "battle1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 3006, 3007, 3008, 3017, 3022 },
		regions = { 3001, 3003, 3004, 3014, 3023 },
		triggers = { "ENTER_REGION_3001", "ENTER_REGION_3003", "ENTER_REGION_3004", "ENTER_REGION_3014", "GADGET_STATE_CHANGE_3018", "PLATFORM_REACH_POINT_3019", "TIMER_EVENT_3020", "PLATFORM_REACH_POINT_3021", "ENTER_REGION_3023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3002, 3009, 3010, 3011, 3012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3001(context, evt)
	if evt.param1 ~= 3001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111003, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3003(context, evt)
	if evt.param1 ~= 3003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"alive1"为1
	if ScriptLib.GetGroupVariableValue(context, "alive1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3003(context, evt)
	-- 改变指定group组220111003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111003, 3006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3004(context, evt)
	if evt.param1 ~= 3004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3004(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220111003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3005(context, evt)
	-- 改变指定group组220111003中， configid为3007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111003, 3007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220111003, EntityType.GADGET, 3008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为3013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "battle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3014(context, evt)
	if evt.param1 ~= 3014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3014(context, evt)
	-- 改变指定group组220111003中， configid为3006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111003, 3006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "alive1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "alive1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3018(context, evt)
	-- 检测config_id为3017的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 3017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3018(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3019(context, evt)
	-- 判断是gadgetid 为 3017的移动平台，是否到达了9 的路线中的 1 点
	
	if 3017 ~= evt.param1 then
	  return false
	end
	
	if 9 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3019(context, evt)
	-- 改变指定group组220111003中， configid为3017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111003, 3017, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3017, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3020(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 3017, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 3017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_3021(context, evt)
	-- 判断是gadgetid 为 3017的移动平台，是否到达了7 的路线中的 1 点
	
	if 3017 ~= evt.param1 then
	  return false
	end
	
	if 7 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_3021(context, evt)
	-- 延迟2秒后,向groupId为：220111003的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220111003, "time1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3023(context, evt)
	if evt.param1 ~= 3023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"battle1"为0
	if ScriptLib.GetGroupVariableValue(context, "battle1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3023(context, evt)
	-- 改变指定group组220111003中， configid为3022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111003, 3022, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end