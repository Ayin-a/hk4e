-- 基础信息
local base_info = {
	group_id = 220140004
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        4007
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [4007] = 1,
                },

                --Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
                controlRelation = {
                },

                --左右旋转的SelectOptionID
                selectID_horizon = 613,

                --上下俯仰的SelectOptionID
                selectID_vertical = 612,

                --定义左右旋转的步长,key为传递装置configID，value为GadgetState
                horizon_steps = {
                        [4008] = {0, 102, 103, 104},
                        [4009] = {0, 102, 103, 104},
                        [4010] = {0, 102, 103, 104},
                        [4011] = {0, 102, 103, 104},
                        [4012] = {0, 102, 103, 104},	        
                        [4013] = {0, 102, 103, 104},
                        [4014] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [4008] = {0, 302, 303, 304},
                        [4009] = {0, 302, 303, 304},
                        [4010] = {0, 302, 303, 304},
                        [4011] = {0, 302, 303, 304},
                        [4012] = {0, 302, 303, 304},
                        [4013] = {0, 302, 303, 304},
                        [4014] = {0, 302, 303, 304},
 	        
                },
              serve_items = {4017,4019}
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
	{ config_id = 4001, gadget_id = 70290137, pos = { x = -0.802, y = 38.778, z = 275.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4002, gadget_id = 70211101, pos = { x = 9.050, y = 38.759, z = 237.518 }, rot = { x = 0.000, y = 268.374, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true },
	{ config_id = 4005, gadget_id = 70290373, pos = { x = -10.020, y = 39.925, z = 272.665 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4006, gadget_id = 70290373, pos = { x = 8.371, y = 39.922, z = 272.665 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4007, gadget_id = 70310158, pos = { x = -0.762, y = 38.518, z = 256.483 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4008, gadget_id = 70310159, pos = { x = 10.103, y = 38.863, z = 256.483 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4009, gadget_id = 70310159, pos = { x = 10.103, y = 38.863, z = 266.607 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4010, gadget_id = 70310159, pos = { x = 10.138, y = 38.863, z = 245.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4012, gadget_id = 70310159, pos = { x = -0.634, y = 38.642, z = 245.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4015, gadget_id = 70310165, pos = { x = -0.644, y = 38.587, z = 251.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 4016, gadget_id = 70310188, pos = { x = -0.665, y = 39.076, z = 251.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 4017, gadget_id = 70290374, pos = { x = -0.888, y = 38.863, z = 266.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 4018, gadget_id = 70310188, pos = { x = -0.956, y = 39.540, z = 266.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, isOneoff = true, persistent = true },
	{ config_id = 4019, gadget_id = 70290374, pos = { x = -58.647, y = 38.106, z = 219.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 4020, gadget_id = 70290373, pos = { x = -15.313, y = 38.512, z = 235.555 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 4021, gadget_id = 70690001, pos = { x = -36.099, y = 42.940, z = 227.968 }, rot = { x = 0.000, y = 246.409, z = 0.000 }, level = 1 },
	{ config_id = 4023, gadget_id = 70690027, pos = { x = -15.612, y = 37.414, z = 235.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70350292, pos = { x = -0.510, y = 38.521, z = 232.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, start_route = false, persistent = true },
	{ config_id = 4030, gadget_id = 70690027, pos = { x = -56.668, y = 37.551, z = 221.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4036, gadget_id = 70211101, pos = { x = -59.910, y = 37.587, z = 216.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true },
	{ config_id = 4048, gadget_id = 70211123, pos = { x = 104.835, y = 86.310, z = 772.224 }, rot = { x = 0.000, y = 305.454, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true },
	{ config_id = 4050, gadget_id = 70350292, pos = { x = 31.036, y = 84.005, z = 665.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, route_id = 5, start_route = false, persistent = true }
}

-- 区域
regions = {
	{ config_id = 4028, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1.239, y = 38.396, z = 239.648 } },
	{ config_id = 4029, shape = RegionShape.SPHERE, radius = 7, pos = { x = -62.102, y = 38.645, z = 220.010 } },
	{ config_id = 4031, shape = RegionShape.SPHERE, radius = 7, pos = { x = -11.438, y = 38.645, z = 235.216 } },
	{ config_id = 4034, shape = RegionShape.SPHERE, radius = 5, pos = { x = -0.736, y = 38.645, z = 279.456 } },
	{ config_id = 4043, shape = RegionShape.SPHERE, radius = 8, pos = { x = 111.085, y = 85.398, z = 681.224 } }
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "PLATFORM_ARRIVAL_4003", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4003", action = "action_EVENT_PLATFORM_ARRIVAL_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "TIME_AXIS_PASS_4004", event = EventType.EVENT_TIME_AXIS_PASS, source = "test1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_4004", trigger_count = 0 },
	{ config_id = 1004011, name = "TIME_AXIS_PASS_4011", event = EventType.EVENT_TIME_AXIS_PASS, source = "test1", condition = "condition_EVENT_TIME_AXIS_PASS_4011", action = "action_EVENT_TIME_AXIS_PASS_4011", trigger_count = 0 },
	{ config_id = 1004013, name = "VARIABLE_CHANGE_4013", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4013", action = "action_EVENT_VARIABLE_CHANGE_4013", trigger_count = 0 },
	{ config_id = 1004014, name = "VARIABLE_CHANGE_4014", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4014", action = "action_EVENT_VARIABLE_CHANGE_4014", trigger_count = 0 },
	{ config_id = 1004022, name = "ANY_GADGET_DIE_4022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4022", action = "action_EVENT_ANY_GADGET_DIE_4022", trigger_count = 0 },
	{ config_id = 1004024, name = "ANY_GADGET_DIE_4024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4024", action = "action_EVENT_ANY_GADGET_DIE_4024", trigger_count = 0 },
	{ config_id = 1004025, name = "GADGET_STATE_CHANGE_4025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4025", trigger_count = 0 },
	{ config_id = 1004026, name = "PLATFORM_ARRIVAL_4026", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4026", action = "action_EVENT_PLATFORM_ARRIVAL_4026", trigger_count = 0 },
	{ config_id = 1004028, name = "ENTER_REGION_4028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4028", action = "action_EVENT_ENTER_REGION_4028", trigger_count = 0 },
	{ config_id = 1004029, name = "ENTER_REGION_4029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4029", action = "action_EVENT_ENTER_REGION_4029", trigger_count = 0 },
	{ config_id = 1004031, name = "ENTER_REGION_4031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4031", action = "action_EVENT_ENTER_REGION_4031", trigger_count = 0 },
	{ config_id = 1004032, name = "GADGET_STATE_CHANGE_4032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4032", action = "action_EVENT_GADGET_STATE_CHANGE_4032", trigger_count = 0 },
	{ config_id = 1004033, name = "VARIABLE_CHANGE_4033", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4033", action = "action_EVENT_VARIABLE_CHANGE_4033", trigger_count = 0 },
	{ config_id = 1004034, name = "ENTER_REGION_4034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4034", action = "action_EVENT_ENTER_REGION_4034", trigger_count = 0 },
	{ config_id = 1004035, name = "GROUP_LOAD_4035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4035", action = "action_EVENT_GROUP_LOAD_4035", trigger_count = 0 },
	{ config_id = 1004037, name = "VARIABLE_CHANGE_4037", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4037", action = "action_EVENT_VARIABLE_CHANGE_4037", trigger_count = 0 },
	{ config_id = 1004038, name = "VARIABLE_CHANGE_4038", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4038", action = "action_EVENT_VARIABLE_CHANGE_4038", trigger_count = 0 },
	{ config_id = 1004039, name = "VARIABLE_CHANGE_4039", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4039", action = "action_EVENT_VARIABLE_CHANGE_4039", trigger_count = 0 },
	{ config_id = 1004040, name = "VARIABLE_CHANGE_4040", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4040", action = "action_EVENT_VARIABLE_CHANGE_4040", trigger_count = 0 },
	{ config_id = 1004041, name = "VARIABLE_CHANGE_4041", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4041", action = "action_EVENT_VARIABLE_CHANGE_4041", trigger_count = 0 },
	{ config_id = 1004042, name = "AVATAR_NEAR_PLATFORM_4042", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4042", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4042", trigger_count = 0 },
	{ config_id = 1004043, name = "ENTER_REGION_4043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4043", action = "action_EVENT_ENTER_REGION_4043", trigger_count = 0 },
	{ config_id = 1004044, name = "VARIABLE_CHANGE_4044", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4044", action = "action_EVENT_VARIABLE_CHANGE_4044", trigger_count = 0 },
	{ config_id = 1004045, name = "AVATAR_NEAR_PLATFORM_4045", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4045", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4045", trigger_count = 0 },
	{ config_id = 1004046, name = "VARIABLE_CHANGE_4046", event = EventType.EVENT_VARIABLE_CHANGE, source = "plat", condition = "condition_EVENT_VARIABLE_CHANGE_4046", action = "action_EVENT_VARIABLE_CHANGE_4046", trigger_count = 0 },
	{ config_id = 1004047, name = "PLATFORM_ARRIVAL_4047", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4047", action = "action_EVENT_PLATFORM_ARRIVAL_4047", trigger_count = 0 },
	{ config_id = 1004049, name = "VARIABLE_CHANGE_4049", event = EventType.EVENT_VARIABLE_CHANGE, source = "extra", condition = "condition_EVENT_VARIABLE_CHANGE_4049", action = "action_EVENT_VARIABLE_CHANGE_4049", trigger_count = 0 },
	{ config_id = 1004051, name = "PLATFORM_ARRIVAL_4051", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4051", action = "action_EVENT_PLATFORM_ARRIVAL_4051", trigger_count = 0 },
	-- 4006707 任务保底
	{ config_id = 1004052, name = "QUEST_START_4052", event = EventType.EVENT_QUEST_START, source = "4006707", condition = "condition_EVENT_QUEST_START_4052", action = "action_EVENT_QUEST_START_4052", trigger_count = 0 },
	-- 4006707 任务保底
	{ config_id = 1004053, name = "GROUP_LOAD_4053", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4053", action = "action_EVENT_GROUP_LOAD_4053", trigger_count = 0 },
	{ config_id = 1004054, name = "GROUP_LOAD_4054", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4054", trigger_count = 0 },
	{ config_id = 1004055, name = "PLATFORM_ARRIVAL_4055", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4055", action = "action_EVENT_PLATFORM_ARRIVAL_4055", trigger_count = 0 },
	{ config_id = 1004056, name = "GROUP_LOAD_4056", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4056", trigger_count = 0 },
	{ config_id = 1004057, name = "AVATAR_NEAR_PLATFORM_4057", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4057", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4057", trigger_count = 0 },
	{ config_id = 1004059, name = "AVATAR_NEAR_PLATFORM_4059", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4059", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4059", trigger_count = 0 },
	{ config_id = 1004060, name = "PLATFORM_ARRIVAL_4060", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_4060", action = "action_EVENT_PLATFORM_ARRIVAL_4060", trigger_count = 0 },
	{ config_id = 1004061, name = "GROUP_LOAD_4061", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4061", action = "action_EVENT_GROUP_LOAD_4061", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door", value = 0, no_refresh = true },
	{ config_id = 2, name = "plat", value = 0, no_refresh = true },
	{ config_id = 4, name = "extra", value = 0, no_refresh = true },
	{ config_id = 5, name = "isLock_1", value = 1, no_refresh = true },
	{ config_id = 6, name = "test", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1004058, name = "AVATAR_NEAR_PLATFORM_4058", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_4058", action = "action_EVENT_AVATAR_NEAR_PLATFORM_4058", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4005, 4006, 4007, 4008, 4009, 4010, 4012, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4027, 4036 },
		regions = { 4028, 4029, 4031, 4043 },
		triggers = { "PLATFORM_ARRIVAL_4003", "TIME_AXIS_PASS_4004", "TIME_AXIS_PASS_4011", "VARIABLE_CHANGE_4013", "VARIABLE_CHANGE_4014", "ANY_GADGET_DIE_4022", "ANY_GADGET_DIE_4024", "GADGET_STATE_CHANGE_4025", "PLATFORM_ARRIVAL_4026", "ENTER_REGION_4028", "ENTER_REGION_4029", "ENTER_REGION_4031", "GADGET_STATE_CHANGE_4032", "VARIABLE_CHANGE_4033", "GROUP_LOAD_4035", "VARIABLE_CHANGE_4037", "VARIABLE_CHANGE_4038", "VARIABLE_CHANGE_4039", "VARIABLE_CHANGE_4040", "VARIABLE_CHANGE_4041", "AVATAR_NEAR_PLATFORM_4042", "ENTER_REGION_4043", "VARIABLE_CHANGE_4044", "AVATAR_NEAR_PLATFORM_4045", "VARIABLE_CHANGE_4046", "PLATFORM_ARRIVAL_4047", "VARIABLE_CHANGE_4049", "PLATFORM_ARRIVAL_4051", "QUEST_START_4052", "GROUP_LOAD_4053", "GROUP_LOAD_4054", "PLATFORM_ARRIVAL_4055", "GROUP_LOAD_4056", "AVATAR_NEAR_PLATFORM_4057", "AVATAR_NEAR_PLATFORM_4059", "PLATFORM_ARRIVAL_4060", "GROUP_LOAD_4061" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 4034 },
		triggers = { "ENTER_REGION_4034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4003(context, evt)
	-- 判断是gadgetid 为 4027的移动平台，是否到达了15 的路线中的 0 点
	
	if 4027 ~= evt.param1 then
	  return false
	end
	
	if 15 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4003(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140020, 2)
	
	-- 创建id为4050的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4050 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4004(context, evt)
	if evt.source_name == "test1" then
		ScriptLib.SetGadgetStateByConfigId(context,4001, GadgetState.GearStart)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4011(context, evt)
	if "test1" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4011(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为3
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 3 then
			return false
	end
	
	-- 判断变量"extra"为1
	if ScriptLib.GetGroupVariableValue(context, "extra") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4013(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为4
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4014(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4022(context, evt)
	if 4016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4022(context, evt)
	-- 将configid为 4015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4024(context, evt)
	if 4018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4024(context, evt)
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 4017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4025(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 4005) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 4006) == 201 and ScriptLib.GetGroupVariableValue(context, "door") == 0 then
		ScriptLib.SetGroupVariableValue(context, "door", 1)
		
		ScriptLib.ChangeToTargetLevelTag(context, 31)
		
		ScriptLib.InitTimeAxis(context, "test1", {1,4}, false)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4026(context, evt)
	-- 判断是gadgetid 为 4027的移动平台，是否到达了6 的路线中的 4 点
	
	if 4027 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4026(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4028(context, evt)
	if evt.param1 ~= 4028 then return false end
	
	-- 判断变量"plat"为0
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4028(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4029(context, evt)
	if evt.param1 ~= 4029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4029(context, evt)
	-- 创建id为4030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4031(context, evt)
	if evt.param1 ~= 4031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4031(context, evt)
	-- 创建id为4023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4032(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 220140004, 4019) then
		return false
	end
	
	-- 判断变量"plat"为1
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4032(context, evt)
	-- 将本组内变量名为 "extra" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "extra", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "plat" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为5
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4033(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4034(context, evt)
	if evt.param1 ~= 4034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4035(context, evt)
	-- 判断变量"door"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 220140004) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4035(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140004, 2)
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为6
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4037(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为7
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4038(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为8
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4039(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为9
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4040(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为10
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4041(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_4042(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了1 的路线中的 1 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_4042(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 11
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140021, 2)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220140013, monsters = {}, gadgets = {13008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4043(context, evt)
	if evt.param1 ~= 4043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"plat"为11
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 11 then
			return false
	end
	
	-- 判断变量"fire"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "fire", 220140021) ~= 0 then
			return false
	end
	
	-- 判断变量"test"为0
	if ScriptLib.GetGroupVariableValue(context, "test") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4043(context, evt)
	-- 将本组内变量名为 "test" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "test", 1, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 16) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为12
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4044(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 17) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_4045(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了17 的路线中的 2 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 17 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_4045(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 13
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 3)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220140013, monsters = {}, gadgets = {13014} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"plat"为14
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4046(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4047(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了3 的路线中的 3 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4047(context, evt)
	-- 创建id为4048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 4050 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4050, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"extra"为2
	if ScriptLib.GetGroupVariableValue(context, "extra") ~= 2 then
			return false
	end
	
	-- 判断变量"plat"为3
	if ScriptLib.GetGroupVariableValue(context, "plat") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4049(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 19) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4051(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了16 的路线中的 5 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 16 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4051(context, evt)
	-- 将本组内变量名为 "fire" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fire", 1, 220140021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4052(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4052(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4053(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220140004, 4001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006707") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4054(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "plat") == 1 then
		ScriptLib.SetPlatformRouteId(context, 4027, 20)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 2 and ScriptLib.GetGroupVariableValue(context, "door") == 0 then
		ScriptLib.SetPlatformRouteId(context, 4027, 21)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 2 and ScriptLib.GetGroupVariableValue(context, "door") == 1 then
		ScriptLib.SetPlatformRouteId(context, 4027, 34)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 3 and ScriptLib.GetGroupVariableValue(context, "extra") == 1 then
		ScriptLib.SetPlatformRouteId(context, 4027, 22)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 3 and ScriptLib.GetGroupVariableValue(context, "extra") == 2 then
		ScriptLib.SetPlatformRouteId(context, 4027, 23)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 4 then
		ScriptLib.SetPlatformRouteId(context, 4027, 24)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 5 then
		ScriptLib.SetPlatformRouteId(context, 4027, 25)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 6 then
		ScriptLib.SetPlatformRouteId(context, 4027, 26)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 7 then
		ScriptLib.SetPlatformRouteId(context, 4027, 27)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 8 then
		ScriptLib.SetPlatformRouteId(context, 4027, 28)
		
		ScriptLib.StartPlatform(context, 4027)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 9 and ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220140020) == 0 then
		ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140020)
		
		ScriptLib.AddExtraGroupSuite(context, 220140020, 2)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220140004, config_id=4027, entity_type=EntityType.GADGET})
		
		ScriptLib.CreateGadget(context, {config_id=4050})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4055(context, evt)
	-- 判断是gadgetid 为 4027的移动平台，是否到达了21 的路线中的 0 点
	
	if 4027 ~= evt.param1 then
	  return false
	end
	
	if 21 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4055(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4027, 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4056(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "plat") == 10 then
		ScriptLib.SetPlatformRouteId(context, 4050, 29)
		
		ScriptLib.StartPlatform(context, 4050)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 11 and ScriptLib.GetGroupVariableValueByGroup(context, "fire", 220140021) == 0 then
		if ScriptLib.GetGroupVariableValue(context, "test") == 0 then
			ScriptLib.SetPlatformRouteId(context, 4050, 35)
			
			ScriptLib.StartPlatform(context, 4050)
		else
			ScriptLib.SetPlatformRouteId(context, 4050, 30)
			
			ScriptLib.StartPlatform(context, 4050)
			
			ScriptLib.SetGroupVariableValueByGroup(context, "fire", 1, 220140021)
		end
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 11 and ScriptLib.GetGroupVariableValueByGroup(context, "fire", 220140021) == 1 then
		ScriptLib.StartPlatform(context, 4050)
		
		ScriptLib.SetPlatformRouteId(context, 4050, 30)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 12 then
		ScriptLib.SetPlatformRouteId(context, 4050, 31)
		
		ScriptLib.StartPlatform(context, 4050)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 13 then
		ScriptLib.SetPlatformRouteId(context, 4050, 32)
		
		ScriptLib.StartPlatform(context, 4050)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "plat") == 14 then
		ScriptLib.SetPlatformRouteId(context, 4050, 33)
		
		ScriptLib.StartPlatform(context, 4050)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_4057(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了29 的路线中的 0 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 29 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_4057(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "plat" 的变量设置为 11
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140021, 2)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220140013, monsters = {}, gadgets = {13008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_4059(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了31 的路线中的 0 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 31 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_4059(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 13
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "plat", 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 4050, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140013, 3)
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220140013, monsters = {}, gadgets = {13014} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_4060(context, evt)
	-- 判断是gadgetid 为 4050的移动平台，是否到达了33 的路线中的 0 点
	
	if 4050 ~= evt.param1 then
	  return false
	end
	
	if 33 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_4060(context, evt)
	-- 创建id为4048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 4050 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4050, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4061(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 220140004, 4015) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4061(context, evt)
	-- 将configid为 4015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"