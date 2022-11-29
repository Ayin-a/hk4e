-- 基础信息
local base_info = {
	group_id = 240013001
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
	{ config_id = 1001, gadget_id = 70900013, pos = { x = -73.042, y = -15.501, z = 112.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1002, gadget_id = 70900012, pos = { x = -118.981, y = -12.452, z = 128.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70900037, pos = { x = -47.140, y = -8.212, z = 93.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01 },
	{ config_id = 1004, gadget_id = 70900037, pos = { x = -47.140, y = -6.536, z = 93.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action02 },
	{ config_id = 1005, gadget_id = 70900205, pos = { x = -136.090, y = 14.486, z = 79.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70900013, pos = { x = -135.905, y = 14.514, z = 79.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1007, gadget_id = 70900205, pos = { x = -157.156, y = 10.257, z = 87.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70900013, pos = { x = -156.971, y = 10.296, z = 87.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1009, gadget_id = 70900205, pos = { x = -158.665, y = 4.754, z = 91.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70900013, pos = { x = -158.480, y = 3.803, z = 92.050 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1011, gadget_id = 70900205, pos = { x = -165.092, y = 1.232, z = 107.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70900013, pos = { x = -164.907, y = 1.270, z = 107.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1013, gadget_id = 70900007, pos = { x = -164.907, y = 1.249, z = 107.428 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1014, gadget_id = 70900007, pos = { x = -136.113, y = 13.386, z = 79.286 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1015, gadget_id = 70900007, pos = { x = -158.308, y = 4.867, z = 91.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1016, gadget_id = 70900037, pos = { x = -137.240, y = -12.405, z = 105.772 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1017, gadget_id = 70900037, pos = { x = -163.785, y = -6.079, z = 91.975 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1018, gadget_id = 70900037, pos = { x = -155.974, y = -6.090, z = 101.318 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1019, gadget_id = 70900012, pos = { x = -124.815, y = -12.362, z = 120.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1020, gadget_id = 70900012, pos = { x = -124.885, y = -12.452, z = 136.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1021, gadget_id = 70900012, pos = { x = -114.324, y = -12.452, z = 134.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1022, gadget_id = 70900012, pos = { x = -112.716, y = -12.362, z = 120.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1023, gadget_id = 70900205, pos = { x = -148.431, y = 5.286, z = 99.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70380001, pos = { x = -127.500, y = -13.300, z = 94.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 1025, gadget_id = 70380001, pos = { x = -127.500, y = -13.300, z = 99.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 1026, gadget_id = 70900037, pos = { x = -155.933, y = -6.090, z = 97.752 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1027, gadget_id = 70900037, pos = { x = -163.741, y = -6.079, z = 95.577 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1028, gadget_id = 70900205, pos = { x = -173.129, y = -12.277, z = 94.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70900205, pos = { x = -173.129, y = -12.277, z = 99.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70380001, pos = { x = -143.169, y = 4.305, z = 99.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 1031, gadget_id = 70380001, pos = { x = -172.872, y = -13.300, z = 109.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	{ config_id = 1032, gadget_id = 70380001, pos = { x = -169.852, y = -3.809, z = 77.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70380001, pos = { x = -169.841, y = 0.269, z = 99.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5 },
	{ config_id = 1034, gadget_id = 70900205, pos = { x = -154.540, y = 4.008, z = 107.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70900013, pos = { x = -154.355, y = 4.048, z = 108.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1036, gadget_id = 70900007, pos = { x = -154.355, y = 2.935, z = 108.013 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1037, gadget_id = 70900205, pos = { x = -165.162, y = 1.291, z = 99.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70380001, pos = { x = -159.876, y = 0.295, z = 99.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 1039, gadget_id = 70900205, pos = { x = -152.770, y = 14.486, z = 79.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70900013, pos = { x = -152.585, y = 14.514, z = 79.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1041, gadget_id = 70900007, pos = { x = -152.793, y = 13.386, z = 79.286 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1042, gadget_id = 70900201, pos = { x = -127.618, y = -11.431, z = 96.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1043, gadget_id = 70900201, pos = { x = -172.722, y = -10.072, z = 96.534 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1044, gadget_id = 70900201, pos = { x = -165.023, y = 1.249, z = 107.390 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1045, gadget_id = 70900201, pos = { x = -154.422, y = 1.206, z = 107.957 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1046, gadget_id = 70900201, pos = { x = -158.335, y = 5.925, z = 91.929 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70900201, pos = { x = -152.961, y = 11.557, z = 79.083 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70900201, pos = { x = -136.187, y = 11.557, z = 79.148 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1 },
	{ config_id = 1049, gadget_id = 70900201, pos = { x = -146.937, y = 18.106, z = 45.728 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1050, gadget_id = 70900037, pos = { x = -139.242, y = -12.405, z = 105.772 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1051, gadget_id = 70900037, pos = { x = -145.383, y = -12.405, z = 87.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1052, gadget_id = 70900037, pos = { x = -147.406, y = -12.405, z = 87.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1053, gadget_id = 70900205, pos = { x = -129.462, y = 10.257, z = 87.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1054, gadget_id = 70900013, pos = { x = -129.277, y = 10.296, z = 87.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 1055, gadget_id = 70350002, pos = { x = -128.610, y = -13.300, z = 112.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1056, gadget_id = 70900007, pos = { x = -85.392, y = -15.493, z = 125.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 1057, gadget_id = 70900013, pos = { x = -80.253, y = -15.341, z = 112.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, arguments = { 1, 2, 3 } },
	{ config_id = 1058, gadget_id = 70900013, pos = { x = -89.199, y = -15.526, z = 112.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, arguments = { 1, 2, 3 } },
	{ config_id = 1059, gadget_id = 70900037, pos = { x = -154.350, y = 4.047, z = 107.867 }, rot = { x = 0.000, y = 181.363, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1060, gadget_id = 70900201, pos = { x = -85.398, y = -12.988, z = 125.496 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1061, gadget_id = 70900037, pos = { x = -165.078, y = 1.270, z = 107.262 }, rot = { x = 0.000, y = 181.363, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1062, gadget_id = 70900037, pos = { x = -158.290, y = 3.547, z = 92.131 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1063, gadget_id = 70900037, pos = { x = -152.467, y = 14.491, z = 79.651 }, rot = { x = 0.000, y = 92.315, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1064, gadget_id = 70900037, pos = { x = -136.027, y = 14.491, z = 79.607 }, rot = { x = 0.000, y = 271.342, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1065, gadget_id = 70900205, pos = { x = -173.129, y = -12.277, z = 104.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1066, gadget_id = 70900205, pos = { x = -172.900, y = -3.800, z = 104.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 10.000 }, pos = { x = -127.830, y = -11.580, z = 96.733 } },
	{ config_id = 2, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 10.000 }, pos = { x = -143.891, y = 6.299, z = 100.420 } },
	{ config_id = 9, shape = RegionShape.CUBIC, size = { x = 6.000, y = 4.000, z = 5.000 }, pos = { x = -128.578, y = -12.436, z = 104.919 } },
	{ config_id = 10, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 10.000 }, pos = { x = -172.797, y = -11.377, z = 96.725 } },
	{ config_id = 11, shape = RegionShape.CUBIC, size = { x = 10.000, y = 4.000, z = 2.000 }, pos = { x = -144.406, y = 16.302, z = 73.660 } },
	{ config_id = 28, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 10.000 }, pos = { x = -165.694, y = 2.170, z = 101.109 } },
	{ config_id = 29, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 5.000 }, pos = { x = -173.047, y = -11.377, z = 109.054 } },
	{ config_id = 30, shape = RegionShape.CUBIC, size = { x = 4.000, y = 2.000, z = 5.000 }, pos = { x = -172.974, y = -2.890, z = 104.065 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ENTER_REGION_1", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1", action = "action_EVENT_ENTER_REGION_1" },
	{ config_id = 1000002, name = "ENTER_REGION_2", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2", action = "action_EVENT_ENTER_REGION_2" },
	{ config_id = 1000003, name = "TIMER_EVENT_3", event = EventType.EVENT_TIMER_EVENT, source = "Activate", condition = "", action = "action_EVENT_TIMER_EVENT_3" },
	{ config_id = 1000004, name = "GADGET_STATE_CHANGE_4", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4", action = "action_EVENT_GADGET_STATE_CHANGE_4" },
	{ config_id = 1000005, name = "GADGET_STATE_CHANGE_5", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5", action = "action_EVENT_GADGET_STATE_CHANGE_5" },
	{ config_id = 1000006, name = "GADGET_STATE_CHANGE_6", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6", action = "action_EVENT_GADGET_STATE_CHANGE_6" },
	{ config_id = 1000007, name = "GADGET_STATE_CHANGE_7", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7", action = "action_EVENT_GADGET_STATE_CHANGE_7" },
	{ config_id = 1000008, name = "GADGET_STATE_CHANGE_8", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8", action = "action_EVENT_GADGET_STATE_CHANGE_8" },
	{ config_id = 1000009, name = "ENTER_REGION_9", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9", action = "action_EVENT_ENTER_REGION_9" },
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10" },
	{ config_id = 1000011, name = "ENTER_REGION_11", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11", action = "action_EVENT_ENTER_REGION_11" },
	{ config_id = 1000016, name = "GADGET_STATE_CHANGE_16", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16", action = "action_EVENT_GADGET_STATE_CHANGE_16", trigger_count = 0 },
	{ config_id = 1000017, name = "TIMER_EVENT_17", event = EventType.EVENT_TIMER_EVENT, source = "Test", condition = "", action = "action_EVENT_TIMER_EVENT_17", trigger_count = 0 },
	{ config_id = 1000018, name = "GADGET_STATE_CHANGE_18", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18", action = "action_EVENT_GADGET_STATE_CHANGE_18", trigger_count = 0 },
	{ config_id = 1000028, name = "ENTER_REGION_28", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28", action = "action_EVENT_ENTER_REGION_28" },
	{ config_id = 1000029, name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29" },
	{ config_id = 1000030, name = "ENTER_REGION_30", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30", action = "action_EVENT_ENTER_REGION_30" }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1011, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1036, 1037, 1038, 1039, 1041, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1061, 1062, 1063, 1064, 1065, 1066 },
		regions = { 1, 2, 9, 10, 11, 28, 29, 30 },
		triggers = { "ENTER_REGION_1", "ENTER_REGION_2", "TIMER_EVENT_3", "GADGET_STATE_CHANGE_4", "GADGET_STATE_CHANGE_5", "GADGET_STATE_CHANGE_6", "GADGET_STATE_CHANGE_7", "GADGET_STATE_CHANGE_8", "ENTER_REGION_9", "ENTER_REGION_10", "ENTER_REGION_11", "GADGET_STATE_CHANGE_16", "TIMER_EVENT_17", "GADGET_STATE_CHANGE_18", "ENTER_REGION_28", "ENTER_REGION_29", "ENTER_REGION_30" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1(context, evt)
	if evt.param1 ~= 1 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1024) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建id为1043的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1043 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1042} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2(context, evt)
	if evt.param1 ~= 2 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2(context, evt)
	-- 延迟2秒后,向groupId为：240013001的对象,请求一次调用,并将string参数："Activate" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013001, "Activate", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3(context, evt)
	-- 改变指定group组240013001中， configid为1014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1014, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1041的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1041, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为1047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4(context, evt)
	if 1013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1044} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1061的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1061, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5(context, evt)
	if 1036 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1045} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1059的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1059, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6(context, evt)
	if 1015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1046} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1062的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1062, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	if 1014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7(context, evt)
	-- 改变指定group组240013001中， configid为1064的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1064, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1048} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	if 1041 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8(context, evt)
	-- 改变指定group组240013001中， configid为1063的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1063, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1047} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9(context, evt)
	if evt.param1 ~= 9 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9(context, evt)
	-- 创建id为1042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-144，16，73），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-144, y=16, z=73}
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
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1043} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 改变指定group组240013001中， configid为1013的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1013, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11(context, evt)
	if evt.param1 ~= 11 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1044} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1045} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1046} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1047} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1048} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	if 1056 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16(context, evt)
	-- 改变指定group组240013001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1057的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1057, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1058的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1058, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 240013001, monsters = {}, gadgets = {1060} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 延迟3秒后,向groupId为：240013001的对象,请求一次调用,并将string参数："Test" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240013001, "Test", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_17(context, evt)
	-- 改变指定group组240013001中， configid为1056的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1056, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	if 1056 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18(context, evt)
	-- 改变指定group组240013001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1057的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1057, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 13, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 14, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1056的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1056, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为1060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1060 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_28(context, evt)
	if evt.param1 ~= 28 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_28(context, evt)
	-- 改变指定group组240013001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1015, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240013001中， configid为1036的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240013001, 1036, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为1045的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1045 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30(context, evt)
	if evt.param1 ~= 30 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30(context, evt)
	-- 触发镜头注目，注目位置为坐标（-165，1，107），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-165, y=1, z=107}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为1044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1044 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end