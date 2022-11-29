-- 基础信息
local base_info = {
	group_id = 220010001
}

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
	{ config_id = 1001, gadget_id = 70350002, pos = { x = 28.452, y = 12.839, z = 48.155 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360021, pos = { x = 160.793, y = -10.000, z = 10.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010012 },
	{ config_id = 1003, gadget_id = 70360021, pos = { x = 160.278, y = -36.000, z = 55.183 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010011 },
	{ config_id = 1004, gadget_id = 70360021, pos = { x = 299.617, y = -8.000, z = 9.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1005, gadget_id = 70360021, pos = { x = 299.617, y = -40.000, z = 54.618 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1007, gadget_id = 70690006, pos = { x = 107.564, y = 5.201, z = 62.076 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1008, gadget_id = 70690006, pos = { x = 105.446, y = -9.735, z = 14.090 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70690006, pos = { x = 231.236, y = -33.904, z = 54.578 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70690006, pos = { x = 233.413, y = -24.319, z = 7.330 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70360021, pos = { x = 299.617, y = -1.997, z = 9.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1012, gadget_id = 70360021, pos = { x = 299.617, y = -45.951, z = 54.620 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1013, gadget_id = 70360021, pos = { x = 299.617, y = 3.695, z = 9.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010014 },
	{ config_id = 1014, gadget_id = 70360021, pos = { x = 299.617, y = -51.644, z = 54.589 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010013 },
	{ config_id = 1015, gadget_id = 70360021, pos = { x = 232.000, y = 5.000, z = 44.000 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010016 },
	{ config_id = 1016, gadget_id = 70360021, pos = { x = 230.000, y = 5.000, z = 22.000 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 20010017 },
	{ config_id = 1017, gadget_id = 70690006, pos = { x = 208.559, y = -42.653, z = -22.072 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70690006, pos = { x = 204.498, y = -28.260, z = -70.075 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70900201, pos = { x = 192.809, y = -32.513, z = 31.582 }, rot = { x = 0.000, y = 86.335, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70900201, pos = { x = 365.738, y = -33.580, z = 32.243 }, rot = { x = 0.000, y = 86.335, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70690006, pos = { x = 352.569, y = -70.000, z = 32.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 56, shape = RegionShape.CUBIC, size = { x = 20.000, y = 15.000, z = 30.000 }, pos = { x = 66.072, y = 11.319, z = 41.488 } },
	{ config_id = 64, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 196.194, y = -29.973, z = 29.252 } }
}

-- 触发器
triggers = {
	{ config_id = 1000056, name = "ENTER_REGION_56", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56", action = "action_EVENT_ENTER_REGION_56", forbid_guest = false },
	{ config_id = 1000058, name = "TIMER_EVENT_58", event = EventType.EVENT_TIMER_EVENT, source = "W1_1", condition = "", action = "action_EVENT_TIMER_EVENT_58", trigger_count = 0 },
	{ config_id = 1000059, name = "TIMER_EVENT_59", event = EventType.EVENT_TIMER_EVENT, source = "W1_2", condition = "", action = "action_EVENT_TIMER_EVENT_59", trigger_count = 0 },
	{ config_id = 1000064, name = "ENTER_REGION_64", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64", action = "action_EVENT_ENTER_REGION_64", forbid_guest = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1021 },
		regions = { 56 },
		triggers = { "ENTER_REGION_56", "TIMER_EVENT_58", "TIMER_EVENT_59" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1019 },
		regions = { 64 },
		triggers = { "ENTER_REGION_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_56(context, evt)
	if evt.param1 ~= 56 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220010001, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_58(context, evt)
	-- 创建id为1007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1010} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组220010001中， configid为139的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 139, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220010001中， configid为140的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 140, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：220010001的对象,请求一次调用,并将string参数："W1_2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220010001, "W1_2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_59(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1007} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1009} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：220010001的对象,请求一次调用,并将string参数："W1_1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220010001, "W1_1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220010001中， configid为139的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 139, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220010001中， configid为140的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010001, 140, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_64(context, evt)
	if evt.param1 ~= 64 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010001, monsters = {}, gadgets = {1019} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end