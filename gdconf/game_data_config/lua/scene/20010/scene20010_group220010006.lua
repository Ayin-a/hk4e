-- 基础信息
local base_info = {
	group_id = 220010006
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
	{ config_id = 42, gadget_id = 70380001, pos = { x = 380.439, y = -41.200, z = 24.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20010009, start_route = false },
	{ config_id = 43, gadget_id = 70350004, pos = { x = 380.510, y = -34.464, z = 15.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 44, gadget_id = 70350004, pos = { x = 388.765, y = -34.554, z = 3.352 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 46, gadget_id = 70360016, pos = { x = 388.445, y = -31.898, z = 28.067 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 47, gadget_id = 70360016, pos = { x = 388.660, y = -32.047, z = 25.179 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 48, gadget_id = 70360019, pos = { x = 386.834, y = -31.136, z = 15.619 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 50, gadget_id = 70360016, pos = { x = 386.992, y = -27.484, z = 0.366 }, rot = { x = 86.480, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 51, gadget_id = 70360016, pos = { x = 384.682, y = -27.348, z = 0.333 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 53, gadget_id = 70360019, pos = { x = 388.580, y = -27.753, z = 3.424 }, rot = { x = 90.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 54, gadget_id = 70900023, pos = { x = 379.210, y = -42.168, z = 26.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 84, gadget_id = 70360016, pos = { x = 377.309, y = -32.391, z = 7.232 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 85, gadget_id = 70360016, pos = { x = 377.246, y = -29.808, z = 1.000 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 89, gadget_id = 70360016, pos = { x = 388.330, y = -32.030, z = 21.507 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 92, gadget_id = 70360016, pos = { x = 388.681, y = -32.466, z = 18.238 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 96, gadget_id = 70900023, pos = { x = 389.031, y = -42.168, z = 26.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 97, gadget_id = 70900023, pos = { x = 384.131, y = -42.168, z = 26.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 98, gadget_id = 70900023, pos = { x = 379.210, y = -42.168, z = 21.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 99, gadget_id = 70900023, pos = { x = 384.080, y = -42.168, z = 21.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100, gadget_id = 70900023, pos = { x = 389.074, y = -42.168, z = 21.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 101, gadget_id = 70900023, pos = { x = 388.119, y = -42.168, z = 16.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 102, gadget_id = 70900023, pos = { x = 381.339, y = -42.168, z = 16.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 103, gadget_id = 70900023, pos = { x = 381.339, y = -42.168, z = 11.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 104, gadget_id = 70900023, pos = { x = 381.339, y = -42.168, z = 6.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 105, gadget_id = 70900023, pos = { x = 381.339, y = -42.168, z = 1.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 106, gadget_id = 70900023, pos = { x = 386.346, y = -42.168, z = 1.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 107, gadget_id = 70900023, pos = { x = 391.359, y = -42.168, z = 1.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 108, gadget_id = 70900023, pos = { x = 396.343, y = -42.168, z = 1.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 109, gadget_id = 70900023, pos = { x = 395.984, y = -42.168, z = 6.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 110, gadget_id = 70900023, pos = { x = 391.177, y = -42.168, z = 6.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 111, gadget_id = 70900023, pos = { x = 386.270, y = -42.168, z = 6.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 112, gadget_id = 70900023, pos = { x = 386.215, y = -42.168, z = 11.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 113, gadget_id = 70900023, pos = { x = 378.538, y = -42.168, z = 1.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 114, gadget_id = 70900023, pos = { x = 378.549, y = -42.168, z = 6.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 115, gadget_id = 70900023, pos = { x = 378.600, y = -42.168, z = 11.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 116, gadget_id = 70900023, pos = { x = 378.601, y = -42.168, z = 16.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 190, gadget_id = 70900202, pos = { x = 387.502, y = -27.302, z = 3.460 }, rot = { x = 0.000, y = 90.080, z = 0.000 }, level = 1 },
	{ config_id = 6001, gadget_id = 70360016, pos = { x = 376.546, y = -32.776, z = 3.890 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70360016, pos = { x = 377.293, y = -32.642, z = 0.978 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70360016, pos = { x = 377.404, y = -27.276, z = 0.979 }, rot = { x = 0.000, y = 180.000, z = 90.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70360016, pos = { x = 381.224, y = -27.325, z = 0.336 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70380001, pos = { x = 380.420, y = -40.869, z = 18.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20010018, start_route = false },
	{ config_id = 6012, gadget_id = 70380001, pos = { x = 393.486, y = -35.628, z = 3.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "GADGET_STATE_CHANGE_9", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9", action = "action_EVENT_GADGET_STATE_CHANGE_9" },
	{ config_id = 1000010, name = "GADGET_STATE_CHANGE_10", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10", action = "action_EVENT_GADGET_STATE_CHANGE_10" },
	{ config_id = 1000049, name = "CLIENT_EXECUTE_49", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricSwitch_Hit", condition = "condition_EVENT_CLIENT_EXECUTE_49", action = "action_EVENT_CLIENT_EXECUTE_49" }
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
	rand_suite = true
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
		gadgets = { 42, 43, 44, 46, 47, 48, 50, 51, 53, 54, 84, 85, 89, 92, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 6001, 6002, 6003, 6004, 6005, 6012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9", "GADGET_STATE_CHANGE_10", "CLIENT_EXECUTE_49" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	if 48 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9(context, evt)
	-- 将configid为 43 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 43, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010005, monsters = {}, gadgets = {189} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为190的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 190 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 42) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 6005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10(context, evt)
	if 53 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10(context, evt)
	-- 将configid为 44 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220010006, monsters = {}, gadgets = {190} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为0的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_49(context, evt)
	if 95 == ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
	
	return true
	
	end
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_49(context, evt)
	-- 将configid为 44 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end