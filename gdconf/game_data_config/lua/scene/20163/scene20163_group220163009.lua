-- 基础信息
local base_info = {
	group_id = 220163009
}

-- DEFS_MISCS
local defs = {

	option_turn = 613,
	option_start = 7,
    option_stop = 920,
    station_region = 9020,
play_region = 9026,

	point_array = 3,
	--运输装置config_id

	--打开旋转选项point{15,16,17}
recover_points = {15,16,17},

	carrier_list = {9001,9006,9021,9022,9023,9024},
	switcher_control = 
	{--[操作台configID] = {被控岔路装置1, 被控岔路装置2},
		[9007] = {9002},
		[9008] = {9005},
	},

	end_point = {14},
	    --转弯
    turn_point = {5,12},

    --option_gadget = 9003,

	--几条路 注意是point_list有向的 倒数第二个点为岔路判定点
	way_info = 
	{
		--key为路径几 顺序无所谓
		[1] = 
		{
			point_list = {1,2,3},

			spawn_point = 0,

			gear_id = 9002, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 0,
				[201] = 0,
				[202] = 0,
				[203] = 2,
			}, 
		},
		[2] = 
		{
			point_list = {4,15,5,6},

			spawn_point = 0,

			gear_id = 9005, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 3,
				[201] = 4,
				[202] = 0,
				[203] = 0,
			}, 
		},
		[3] = 
		{
			point_list = {7,17,8,9,10},

			spawn_point = 0,

			gear_id = 9002, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 2,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},
		[4] = 
		{
			point_list = {7,16,11,12,13,14},

			spawn_point = 16,

			gear_id = 0, --此判定点依据哪个岔路物件

			dir = --岔路物件每个State通向哪
			{	--GadgetState索引way_info ID
				[0] = 0,
				[201] = 0,
				[202] = 0,
				[203] = 0,
			}, 
		},

	},

	--停车点 到此点时会判断是否需要停车
	stop_points = 
	{
		5
	},
        --下车点 当到达下车点时，如果上面有人则停
    leave_points=
    {
        12

    }
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
	[9001] = { config_id = 9001, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 右边岔路
	[9002] = { config_id = 9002, gadget_id = 70320027, pos = { x = 83.685, y = 88.041, z = -48.161 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	-- 左边岔路
	[9005] = { config_id = 9005, gadget_id = 70320027, pos = { x = 83.676, y = 88.060, z = -12.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9006] = { config_id = 9006, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	-- 右边操作机关
	[9007] = { config_id = 9007, gadget_id = 70350439, pos = { x = 89.127, y = 81.548, z = -38.587 }, rot = { x = 0.600, y = 43.600, z = 0.585 }, level = 1, persistent = true, worktop_config = { init_options = { 613 } }, server_global_value_config = { ["SGV_MACHINE_ENERGY_LEVEL"] = 1 } },
	-- 左边操作机关
	[9008] = { config_id = 9008, gadget_id = 70350439, pos = { x = 89.086, y = 81.548, z = -30.647 }, rot = { x = 0.000, y = 138.976, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 613 } }, server_global_value_config = { ["SGV_MACHINE_ENERGY_LEVEL"] = 1 } },
	[9013] = { config_id = 9013, gadget_id = 70300118, pos = { x = 86.742, y = 81.548, z = -34.678 }, rot = { x = 0.600, y = 43.600, z = 0.585 }, level = 1 },
	[9021] = { config_id = 9021, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[9022] = { config_id = 9022, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[9023] = { config_id = 9023, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[9024] = { config_id = 9024, gadget_id = 70320028, pos = { x = 61.627, y = 86.810, z = -37.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	[9020] = { config_id = 9020, shape = RegionShape.CUBIC, size = { x = 4.000, y = 3.000, z = 8.000 }, pos = { x = 87.809, y = 83.019, z = -34.551 } },
	[9025] = { config_id = 9025, shape = RegionShape.SPHERE, radius = 5, pos = { x = 90.397, y = 81.734, z = -34.123 } },
	-- play region
	[9026] = { config_id = 9026, shape = RegionShape.SPHERE, radius = 100, pos = { x = 49.232, y = 97.717, z = -32.435 } },
	[9027] = { config_id = 9027, shape = RegionShape.SPHERE, radius = 8, pos = { x = 91.890, y = 81.691, z = -34.993 } }
}

-- 触发器
triggers = {
	{ config_id = 1009009, name = "GROUP_LOAD_9009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9009", trigger_count = 0 },
	{ config_id = 1009011, name = "PLATFORM_ARRIVAL_9011", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_9011", action = "action_EVENT_PLATFORM_ARRIVAL_9011" },
	{ config_id = 1009016, name = "SELECT_OPTION_9016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9016", action = "action_EVENT_SELECT_OPTION_9016", trigger_count = 0 },
	{ config_id = 1009017, name = "SELECT_OPTION_9017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9017", action = "action_EVENT_SELECT_OPTION_9017", trigger_count = 0 },
	{ config_id = 1009025, name = "ENTER_REGION_9025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- play region
	{ config_id = 1009026, name = "ENTER_REGION_9026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1009027, name = "ENTER_REGION_9027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9027", action = "action_EVENT_ENTER_REGION_9027" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 9003, gadget_id = 70350439, pos = { x = 88.363, y = 81.559, z = -34.629 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 920 } } },
		{ config_id = 9004, gadget_id = 70320027, pos = { x = 106.199, y = 87.186, z = -47.985 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 9010, gadget_id = 70320027, pos = { x = 106.199, y = 87.107, z = -21.629 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 9012, gadget_id = 70300118, pos = { x = 88.355, y = 81.603, z = -34.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 9014, gadget_id = 70300118, pos = { x = 89.089, y = 81.548, z = -30.628 }, rot = { x = 0.000, y = 138.976, z = 0.000 }, level = 1 },
		{ config_id = 9015, gadget_id = 70360002, pos = { x = 94.148, y = 80.801, z = -36.867 }, rot = { x = 0.000, y = 91.367, z = 0.000 }, level = 1, worktop_config = { init_options = { 7, 613 } } }
	},
	triggers = {
		{ config_id = 1009018, name = "PLATFORM_ARRIVAL_9018", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_9018", action = "action_EVENT_PLATFORM_ARRIVAL_9018", trigger_count = 0 },
		{ config_id = 1009019, name = "PLATFORM_ARRIVAL_9019", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_9019", action = "action_EVENT_PLATFORM_ARRIVAL_9019", trigger_count = 0 }
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
		gadgets = { 9001, 9002, 9005, 9007, 9008, 9013 },
		regions = { 9020, 9025, 9026, 9027 },
		triggers = { "GROUP_LOAD_9009", "PLATFORM_ARRIVAL_9011", "SELECT_OPTION_9016", "SELECT_OPTION_9017", "ENTER_REGION_9025", "ENTER_REGION_9026", "ENTER_REGION_9027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_9009(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_9011(context, evt)
	-- 判断是gadgetid 为 9001的移动平台，是否到达了3 的点集中的 9 点
	
	if 9001 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_9011(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9016(context, evt)
	-- 判断是gadgetid 9007 option_id 613
	if 9007 ~= evt.param1 then
		return false	
	end
	
	if 613 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9016(context, evt)
	-- 触发镜头注目，注目位置为坐标（83.68531，85.10368，-48.1614），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=83.68531, y=85.10368, z=-48.1614}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9017(context, evt)
	-- 判断是gadgetid 9008 option_id 613
	if 9008 ~= evt.param1 then
		return false	
	end
	
	if 613 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9017(context, evt)
	-- 触发镜头注目，注目位置为坐标（83.67647，85.10368，-12.60524），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=83.67647, y=85.10368, z=-12.60524}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9027(context, evt)
	if evt.param1 ~= 9027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9027(context, evt)
	-- 将configid为 9007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_2/MachineCarrier"