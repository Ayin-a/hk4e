-- 基础信息
local base_info = {
	group_id = 250074001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1022, monster_id = 21030101, pos = { x = -486.926, y = -47.308, z = 259.832 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 1023, monster_id = 21010201, pos = { x = -486.158, y = -47.199, z = 262.979 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 9003 },
	{ config_id = 1024, monster_id = 21010201, pos = { x = -479.534, y = -47.273, z = 260.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 9002 },
	{ config_id = 1025, monster_id = 21020201, pos = { x = -483.333, y = -47.172, z = 256.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70310118, pos = { x = -586.340, y = 42.936, z = 367.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360002, pos = { x = -483.190, y = -47.411, z = 260.034 }, rot = { x = 0.000, y = 10.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1003, gadget_id = 70350009, pos = { x = -498.755, y = -11.169, z = 226.449 }, rot = { x = 350.000, y = 5.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70310020, pos = { x = -499.124, y = -31.944, z = 229.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 1005, gadget_id = 70350009, pos = { x = -461.603, y = -51.059, z = 255.048 }, rot = { x = 15.000, y = 100.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70330064, pos = { x = -520.356, y = -22.354, z = 244.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70310020, pos = { x = -522.237, y = -22.913, z = 252.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3 },
	{ config_id = 1008, gadget_id = 70360045, pos = { x = -456.352, y = -45.521, z = 253.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70360045, pos = { x = -536.571, y = 16.830, z = 245.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70360045, pos = { x = -464.859, y = -10.327, z = 267.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350009, pos = { x = -529.698, y = 3.850, z = 247.719 }, rot = { x = 350.000, y = 65.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70900404, pos = { x = -516.291, y = -31.246, z = 231.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70710123, pos = { x = -493.972, y = -1.852, z = 262.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70900380, pos = { x = -493.972, y = 0.102, z = 262.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70900380, pos = { x = -470.924, y = -30.578, z = 256.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70900380, pos = { x = -479.762, y = -9.800, z = 232.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70900380, pos = { x = -462.534, y = -9.209, z = 256.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70900380, pos = { x = -478.865, y = -9.550, z = 285.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220025, pos = { x = -483.774, y = -47.226, z = 256.335 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70220025, pos = { x = -479.648, y = -47.256, z = 259.885 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70220025, pos = { x = -482.556, y = -47.192, z = 256.556 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70220025, pos = { x = -486.735, y = -47.256, z = 258.200 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70220025, pos = { x = -487.187, y = -47.256, z = 260.093 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70220025, pos = { x = -487.187, y = -47.256, z = 261.941 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70220025, pos = { x = -485.900, y = -47.256, z = 263.187 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001011, name = "GADGET_CREATE_1011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1011", action = "action_EVENT_GADGET_CREATE_1011" }
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
		monsters = { 1022, 1023, 1024, 1025 },
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1012, 1013, 1014, 1015, 1016, 1018, 1019, 1020, 1021, 1026, 1027, 1028, 1029, 1030, 1031 },
		regions = { },
		triggers = { "GADGET_CREATE_1011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1011(context, evt)
	if 1004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end