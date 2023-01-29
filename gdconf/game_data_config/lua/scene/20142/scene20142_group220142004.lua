-- 基础信息
local base_info = {
	group_id = 220142004
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        4001
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [4001] = 1,
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
                        [4004] = {0, 102, 103, 104},
                        [4005] = {0, 102, 103, 104},
 	        [4006] = {0, 102, 103, 104},
 	        [4010] = {0, 102, 103, 104},
 	        [4011] = {0, 102, 103, 104},
 	        [4012] = {0, 102, 103, 104},
 	        [4013] = {0, 102, 103, 104},
 	        [4016] = {0, 102, 103, 104},
 	        [4017] = {0, 102, 103, 104},
 	        [4018] = {0, 102, 103, 104},
 	        [4019] = {0, 102, 103, 104},
 	        [4020] = {0, 102, 103, 104},
 	        [4025] = {0, 102, 103, 104},
 	        [4026] = {0, 102, 103, 104},
 	        [4027] = {0, 102, 103, 104},
 	        [4028] = {0, 102, 103, 104},
 	        [4029] = {0, 102, 103, 104},
 	        [4030] = {0, 102, 103, 104},
 	        [4031] = {0, 102, 103, 104},
 	        [4037] = {0, 102, 103, 104},
 	        [4039] = {0, 102, 103, 104},
 	        [4040] = {0, 102, 103, 104},

                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [4004] = {0, 302, 303, 304},
                        [4005] = {0, 302, 303, 304},
 	        [4006] = {0, 302, 303, 304},
 	        [4010] = {0, 302, 303, 304},
 	        [4011] = {0, 302, 303, 304},
 	        [4012] = {0, 302, 303, 304},
 	        [4013] = {0, 302, 303, 304},
 	        [4016] = {0, 302, 303, 304},
 	        [4017] = {0, 302, 303, 304},
 	        [4018] = {0, 302, 303, 304},
 	        [4019] = {0, 302, 303, 304},
 	        [4020] = {0, 302, 303, 304},
 	        [4025] = {0, 302, 303, 304},
 	        [4026] = {0, 302, 303, 304},
 	        [4027] = {0, 302, 303, 304},
 	        [4028] = {0, 302, 303, 304},
 	        [4029] = {0, 302, 303, 304},
	        [4030] = {0, 302, 303, 304},
	        [4031] = {0, 302, 303, 304},
	        [4037] = {0, 302, 303, 304},
	        [4039] = {0, 302, 303, 304},
	        [4040] = {0, 302, 303, 304},
                },
                --反射装置初始state
                init_state = {
                        [4006] = 303
                },
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
	{ config_id = 4001, gadget_id = 70310158, pos = { x = 147.357, y = 4.819, z = 49.725 }, rot = { x = 0.000, y = 91.723, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4002, gadget_id = 70211101, pos = { x = 180.299, y = 11.070, z = 52.251 }, rot = { x = 0.043, y = 91.104, z = 359.684 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 4003, gadget_id = 70211111, pos = { x = 196.173, y = 11.015, z = 50.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 4004, gadget_id = 70310159, pos = { x = 181.929, y = 12.090, z = 49.359 }, rot = { x = 0.000, y = 90.000, z = 90.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70310159, pos = { x = 159.483, y = 4.819, z = 49.608 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 613 } } },
	{ config_id = 4006, gadget_id = 70310159, pos = { x = 181.986, y = 12.214, z = 54.749 }, rot = { x = 0.000, y = 270.000, z = 90.000 }, level = 1, persistent = true, worktop_config = { init_options = { 612 } } },
	{ config_id = 4007, gadget_id = 70300118, pos = { x = 168.072, y = -19.149, z = 42.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 4009, gadget_id = 70211101, pos = { x = 168.192, y = -2.823, z = 55.530 }, rot = { x = 0.043, y = 180.000, z = 359.684 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 4010, gadget_id = 70310159, pos = { x = 168.122, y = 4.848, z = 46.725 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4011, gadget_id = 70310159, pos = { x = 175.448, y = 4.511, z = 54.051 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 612 } } },
	{ config_id = 4012, gadget_id = 70310159, pos = { x = 179.467, y = 7.684, z = 54.051 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4013, gadget_id = 70310159, pos = { x = 187.854, y = 9.019, z = 55.080 }, rot = { x = 270.000, y = 0.001, z = 0.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70310188, pos = { x = 196.036, y = 11.259, z = 50.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, isOneoff = true, persistent = true },
	{ config_id = 4016, gadget_id = 70310159, pos = { x = 166.536, y = 5.294, z = 49.725 }, rot = { x = 2.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4017, gadget_id = 70310159, pos = { x = 167.029, y = 4.834, z = 55.068 }, rot = { x = 11.000, y = 330.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4018, gadget_id = 70310159, pos = { x = 163.549, y = 3.481, z = 61.096 }, rot = { x = 11.000, y = 30.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4019, gadget_id = 70310159, pos = { x = 166.975, y = 2.149, z = 67.030 }, rot = { x = 14.000, y = 330.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4020, gadget_id = 70310159, pos = { x = 163.391, y = 0.362, z = 73.238 }, rot = { x = 14.000, y = 30.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4021, gadget_id = 70310164, pos = { x = 199.821, y = 5.064, z = 49.254 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 4022, gadget_id = 70220048, pos = { x = 162.981, y = -2.834, z = 54.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4023, gadget_id = 70220051, pos = { x = 179.483, y = -3.156, z = 49.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70310386, pos = { x = 199.821, y = 5.692, z = 49.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 4025, gadget_id = 70310159, pos = { x = 166.880, y = -1.378, z = 79.282 }, rot = { x = 14.000, y = 345.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4026, gadget_id = 70220048, pos = { x = 196.709, y = -3.156, z = 54.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70220048, pos = { x = 186.295, y = -3.156, z = 49.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4028, gadget_id = 70310159, pos = { x = 164.768, y = -2.401, z = 88.197 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4029, gadget_id = 70310159, pos = { x = 164.456, y = -9.237, z = 88.010 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 612 } } },
	{ config_id = 4030, gadget_id = 70310159, pos = { x = 164.739, y = -10.486, z = 82.190 }, rot = { x = 15.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4031, gadget_id = 70310159, pos = { x = 164.688, y = -12.922, z = 73.021 }, rot = { x = 15.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4032, gadget_id = 70310165, pos = { x = 164.483, y = -18.527, z = 45.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, server_global_value_config = { ["SGV_Kazuha_CrystalDis"]= 35 } },
	{ config_id = 4033, gadget_id = 70310188, pos = { x = 164.634, y = -18.054, z = 45.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 4037, gadget_id = 70310159, pos = { x = 187.898, y = 12.214, z = 54.749 }, rot = { x = 0.000, y = 270.000, z = 90.000 }, level = 1, persistent = true },
	{ config_id = 4038, gadget_id = 71700386, pos = { x = 167.930, y = -18.753, z = 43.016 }, rot = { x = 0.000, y = 350.158, z = 0.000 }, level = 1 },
	{ config_id = 4039, gadget_id = 70310159, pos = { x = 164.544, y = -15.019, z = 65.124 }, rot = { x = 17.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4040, gadget_id = 70310159, pos = { x = 164.688, y = -18.718, z = 51.893 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 612 } } },
	{ config_id = 4041, gadget_id = 70211101, pos = { x = 153.905, y = -16.968, z = 48.518 }, rot = { x = 0.000, y = 94.107, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true }
}

-- 区域
regions = {
	{ config_id = 4008, shape = RegionShape.SPHERE, radius = 2, pos = { x = 168.072, y = -19.149, z = 42.767 } }
}

-- 触发器
triggers = {
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008", trigger_count = 0 },
	{ config_id = 1004015, name = "ANY_GADGET_DIE_4015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4015", action = "action_EVENT_ANY_GADGET_DIE_4015", trigger_count = 0 },
	{ config_id = 1004034, name = "ANY_GADGET_DIE_4034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4034", action = "action_EVENT_ANY_GADGET_DIE_4034", trigger_count = 0 },
	{ config_id = 1004035, name = "GADGET_STATE_CHANGE_4035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4035", action = "action_EVENT_GADGET_STATE_CHANGE_4035", trigger_count = 0 },
	{ config_id = 1004036, name = "ANY_GADGET_DIE_4036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4036", action = "action_EVENT_ANY_GADGET_DIE_4036", trigger_count = 0 },
	{ config_id = 1004042, name = "GADGET_STATE_CHANGE_4042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4042", action = "action_EVENT_GADGET_STATE_CHANGE_4042", trigger_count = 0 },
	{ config_id = 1004043, name = "TIME_AXIS_PASS_4043", event = EventType.EVENT_TIME_AXIS_PASS, source = "stone1", condition = "condition_EVENT_TIME_AXIS_PASS_4043", action = "action_EVENT_TIME_AXIS_PASS_4043", trigger_count = 0 },
	{ config_id = 1004044, name = "VARIABLE_CHANGE_4044", event = EventType.EVENT_VARIABLE_CHANGE, source = "stone1", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4044", trigger_count = 0 },
	{ config_id = 1004045, name = "VARIABLE_CHANGE_4045", event = EventType.EVENT_VARIABLE_CHANGE, source = "stone2", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4045", trigger_count = 0 },
	{ config_id = 1004046, name = "LEVEL_TAG_CHANGE_4046", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_4046", trigger_count = 0 },
	{ config_id = 1004047, name = "GROUP_LOAD_4047", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4047", trigger_count = 0 },
	{ config_id = 1004048, name = "TIME_AXIS_PASS_4048", event = EventType.EVENT_TIME_AXIS_PASS, source = "stone2", condition = "condition_EVENT_TIME_AXIS_PASS_4048", action = "action_EVENT_TIME_AXIS_PASS_4048", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "stone1", value = 0, no_refresh = true },
	{ config_id = 3, name = "stone2", value = 0, no_refresh = true },
	{ config_id = 4, name = "chest", value = 0, no_refresh = true }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_4015", "ANY_GADGET_DIE_4034", "GADGET_STATE_CHANGE_4035", "ANY_GADGET_DIE_4036", "GADGET_STATE_CHANGE_4042", "TIME_AXIS_PASS_4043", "VARIABLE_CHANGE_4044", "VARIABLE_CHANGE_4045", "LEVEL_TAG_CHANGE_4046", "GROUP_LOAD_4047", "TIME_AXIS_PASS_4048" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4002, 4003, 4004, 4005, 4006, 4009, 4010, 4011, 4012, 4013, 4014, 4022, 4023, 4026, 4027, 4037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4007, 4016, 4017, 4018, 4019, 4020, 4025, 4028, 4029, 4030, 4031, 4032, 4033, 4038, 4039, 4040, 4041 },
		regions = { 4008 },
		triggers = { "ENTER_REGION_4008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4021, 4024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4015(context, evt)
	if 4014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4015(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 4003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4034(context, evt)
	if 4033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4034(context, evt)
	-- 将本组内变量名为 "stone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 4032 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4032, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4035(context, evt)
	-- 检测config_id为4021的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 4021 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4035(context, evt)
	-- 将本组内变量名为 "stone1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"stone1"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "stone1", {30}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4036(context, evt)
	if 4024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4036(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "stone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 4021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4042(context, evt)
	-- 检测config_id为4032的gadget是否从GadgetState.Default变为GadgetState.GearStop
	if 4032 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4042(context, evt)
	-- 将本组内变量名为 "stone2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"stone2"，时间节点为{35}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "stone2", {35}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4043(context, evt)
	if "stone1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4043(context, evt)
	-- 将本组内变量名为 "stone1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4044(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "stone1") == 1 and ScriptLib.CheckSceneTag(context, 20142,1056 ) then
		ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4045(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "stone2") == 1 and ScriptLib.CheckSceneTag(context, 20142,1057 ) then
		ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.Default)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_4046(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1056 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 1 or ScriptLib.GetGroupVariableValue(context, "stone1") == 3 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.Default)
			
			ScriptLib.SetGroupVariableValue(context, "stone1", 1)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.GearStop)
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142004, 4)
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1057 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 1 or ScriptLib.GetGroupVariableValue(context, "stone2") == 3 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.Default)
			
			ScriptLib.SetGroupVariableValue(context, "stone2", 1)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.GearStop)
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142004, 3)
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1058 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.Default)
		end
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142004, 2)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4047(context, evt)
	if ScriptLib.CheckSceneTag(context, 20142,1056 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 4)
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.Default)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,4021, GadgetState.Default)
			
			ScriptLib.SetGroupVariableValue(context, "stone1", 1)
		end
	else
		if ScriptLib.GetGroupVariableValue(context, "stone1") == 2 then
			ScriptLib.SetGroupVariableValue(context, "stone1", 1)
		end
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1057 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.Default)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 2 then
			ScriptLib.SetGadgetStateByConfigId(context,4032, GadgetState.Default)
			
			ScriptLib.SetGroupVariableValue(context, "stone2", 1)
		end
	else
		if ScriptLib.GetGroupVariableValue(context, "stone2") == 2 then
			ScriptLib.SetGroupVariableValue(context, "stone2", 1)
		end
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1058 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 0 then
			ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.ChestLocked)
		end
		
		if ScriptLib.GetGroupVariableValue(context, "chest") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.Default)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4048(context, evt)
	if "stone2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4048(context, evt)
	-- 将本组内变量名为 "stone2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "stone2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"