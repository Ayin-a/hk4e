-- 基础信息
local base_info = {
	group_id = 133103010
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
	{ config_id = 48, gadget_id = 70800001, pos = { x = 834.696, y = 480.449, z = 1426.449 }, rot = { x = 0.000, y = 224.505, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 121, gadget_id = 70360048, pos = { x = 1062.700, y = 431.800, z = 1595.800 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 24, state = GadgetState.GearStop, persistent = true, area_id = 6 },
	{ config_id = 122, gadget_id = 70360048, pos = { x = 720.500, y = 420.600, z = 1442.000 }, rot = { x = 0.000, y = 8.090, z = 0.000 }, level = 24, state = GadgetState.GearAction1, persistent = true, area_id = 6 },
	{ config_id = 124, gadget_id = 70360048, pos = { x = 772.200, y = 406.100, z = 1790.000 }, rot = { x = 0.000, y = 78.000, z = 0.000 }, level = 24, state = GadgetState.GearAction2, persistent = true, area_id = 6 },
	{ config_id = 282, gadget_id = 70211131, pos = { x = 833.802, y = 542.114, z = 1431.792 }, rot = { x = 0.000, y = 318.109, z = 0.000 }, level = 21, chest_drop_id = 2000000, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 296, gadget_id = 70360001, pos = { x = 834.678, y = 480.524, z = 1426.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.Action01, area_id = 6 },
	{ config_id = 10001, gadget_id = 70690011, pos = { x = 836.579, y = 480.746, z = 1427.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10002, gadget_id = 70400001, pos = { x = 1062.641, y = 433.908, z = 1595.459 }, rot = { x = 0.000, y = 230.033, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10003, gadget_id = 70400001, pos = { x = 720.553, y = 422.561, z = 1442.082 }, rot = { x = 0.000, y = 84.074, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10004, gadget_id = 70400001, pos = { x = 772.293, y = 408.235, z = 1789.896 }, rot = { x = 0.000, y = 170.241, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10007, gadget_id = 70360001, pos = { x = 1062.700, y = 431.800, z = 1595.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10008, gadget_id = 70800016, pos = { x = 834.500, y = 480.597, z = 1426.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStop, area_id = 6 },
	{ config_id = 10010, gadget_id = 70360001, pos = { x = 720.500, y = 420.600, z = 1442.000 }, rot = { x = 0.000, y = 146.090, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10011, gadget_id = 70360001, pos = { x = 772.200, y = 406.100, z = 1790.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10018, gadget_id = 70360049, pos = { x = 1062.700, y = 431.800, z = 1595.800 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10019, gadget_id = 70360049, pos = { x = 720.500, y = 420.600, z = 1442.000 }, rot = { x = 0.000, y = 8.090, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10020, gadget_id = 70360049, pos = { x = 772.200, y = 406.100, z = 1790.000 }, rot = { x = 0.000, y = 78.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10024, gadget_id = 70360050, pos = { x = 834.626, y = 480.518, z = 1426.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10029, gadget_id = 70211121, pos = { x = 833.324, y = 542.134, z = 1429.124 }, rot = { x = 0.000, y = 258.729, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 10033, gadget_id = 70211121, pos = { x = 836.411, y = 542.134, z = 1431.976 }, rot = { x = 0.000, y = 17.633, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 10034, gadget_id = 70310013, pos = { x = 834.860, y = 505.909, z = 1419.790 }, rot = { x = 0.000, y = 191.200, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10035, gadget_id = 70310013, pos = { x = 839.811, y = 507.000, z = 1419.354 }, rot = { x = 0.000, y = 191.200, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10036, gadget_id = 70310013, pos = { x = 856.953, y = 531.834, z = 1428.821 }, rot = { x = 0.000, y = 106.327, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10037, gadget_id = 70310013, pos = { x = 854.101, y = 534.000, z = 1432.841 }, rot = { x = 0.000, y = 43.420, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10038, gadget_id = 70310013, pos = { x = 846.684, y = 538.500, z = 1430.143 }, rot = { x = 0.000, y = 320.702, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10039, gadget_id = 70690011, pos = { x = 851.784, y = 505.000, z = 1424.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10040, gadget_id = 70310013, pos = { x = 849.611, y = 536.250, z = 1432.978 }, rot = { x = 0.000, y = 357.100, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10042, gadget_id = 70360051, pos = { x = 1062.700, y = 431.800, z = 1595.800 }, rot = { x = 0.000, y = 183.019, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10043, gadget_id = 70360052, pos = { x = 720.500, y = 420.600, z = 1442.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10044, gadget_id = 70360053, pos = { x = 772.200, y = 406.100, z = 1790.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 10048, gadget_id = 70310013, pos = { x = 844.699, y = 508.000, z = 1421.214 }, rot = { x = 0.000, y = 191.200, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 10052, gadget_id = 70360054, pos = { x = 831.644, y = 481.636, z = 1426.769 }, rot = { x = 24.094, y = 278.566, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 10053, gadget_id = 70360054, pos = { x = 833.841, y = 481.636, z = 1430.714 }, rot = { x = 9.221, y = 342.229, z = 0.229 }, level = 24, area_id = 6 },
	{ config_id = 10054, gadget_id = 70360054, pos = { x = 837.427, y = 481.877, z = 1427.923 }, rot = { x = 4.223, y = 52.032, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 97, shape = RegionShape.SPHERE, radius = 8, pos = { x = 836.620, y = 542.035, z = 1429.916 }, area_id = 6 },
	{ config_id = 104, shape = RegionShape.SPHERE, radius = 5, pos = { x = 834.597, y = 483.771, z = 1426.880 }, area_id = 6 },
	{ config_id = 10022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 835.202, y = 480.618, z = 1427.573 }, area_id = 6 },
	{ config_id = 10023, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1062.081, y = 431.766, z = 1595.048 }, area_id = 6 },
	{ config_id = 10025, shape = RegionShape.SPHERE, radius = 10, pos = { x = 720.758, y = 420.427, z = 1442.163 }, area_id = 6 },
	{ config_id = 10026, shape = RegionShape.SPHERE, radius = 10, pos = { x = 772.670, y = 406.227, z = 1790.149 }, area_id = 6 },
	{ config_id = 10030, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.202, y = 476.577, z = 1427.573 }, area_id = 6 },
	{ config_id = 10031, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.202, y = 476.577, z = 1427.573 }, area_id = 6 },
	{ config_id = 10032, shape = RegionShape.SPHERE, radius = 8, pos = { x = 835.202, y = 476.577, z = 1427.573 }, area_id = 6 },
	{ config_id = 10041, shape = RegionShape.SPHERE, radius = 5, pos = { x = 835.547, y = 508.498, z = 1427.953 }, area_id = 6 },
	{ config_id = 10064, shape = RegionShape.SPHERE, radius = 5, pos = { x = 851.784, y = 532.738, z = 1424.838 }, area_id = 6 },
	{ config_id = 10065, shape = RegionShape.SPHERE, radius = 10, pos = { x = 718.761, y = 427.431, z = 1793.595 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000011, name = "GADGET_STATE_CHANGE_11", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11", action = "action_EVENT_GADGET_STATE_CHANGE_11" },
	{ config_id = 1000012, name = "GADGET_STATE_CHANGE_12", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12", action = "action_EVENT_GADGET_STATE_CHANGE_12" },
	{ config_id = 1000014, name = "GADGET_STATE_CHANGE_14", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_14", action = "action_EVENT_GADGET_STATE_CHANGE_14" },
	{ config_id = 1000015, name = "VARIABLE_CHANGE_15", event = EventType.EVENT_VARIABLE_CHANGE, source = "seals", condition = "condition_EVENT_VARIABLE_CHANGE_15", action = "action_EVENT_VARIABLE_CHANGE_15" },
	{ config_id = 1000097, name = "ENTER_REGION_97", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_97", action = "action_EVENT_ENTER_REGION_97" },
	{ config_id = 1000098, name = "SELECT_OPTION_98", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_98", action = "action_EVENT_SELECT_OPTION_98" },
	{ config_id = 1000104, name = "ENTER_REGION_104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104", action = "action_EVENT_ENTER_REGION_104" },
	{ config_id = 1010005, name = "GADGET_CREATE_10005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1010006, name = "SELECT_OPTION_10006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10006", action = "action_EVENT_SELECT_OPTION_10006", trigger_count = 0 },
	{ config_id = 1010009, name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009", trigger_count = 0 },
	{ config_id = 1010012, name = "GADGET_CREATE_10012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10012", action = "action_EVENT_GADGET_CREATE_10012", trigger_count = 0 },
	{ config_id = 1010013, name = "SELECT_OPTION_10013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10013", action = "action_EVENT_SELECT_OPTION_10013", trigger_count = 0 },
	{ config_id = 1010014, name = "GADGET_CREATE_10014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10014", action = "action_EVENT_GADGET_CREATE_10014", trigger_count = 0 },
	{ config_id = 1010015, name = "SELECT_OPTION_10015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10015", action = "action_EVENT_SELECT_OPTION_10015", trigger_count = 0 },
	{ config_id = 1010016, name = "GADGET_CREATE_10016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10016", action = "action_EVENT_GADGET_CREATE_10016", trigger_count = 0 },
	{ config_id = 1010017, name = "SELECT_OPTION_10017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10017", action = "action_EVENT_SELECT_OPTION_10017", trigger_count = 0 },
	{ config_id = 1010021, name = "TIMER_EVENT_10021", event = EventType.EVENT_TIMER_EVENT, source = "133103010_unlock", condition = "", action = "action_EVENT_TIMER_EVENT_10021", trigger_count = 0 },
	{ config_id = 1010022, name = "ENTER_REGION_10022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10022", action = "", trigger_count = 0 },
	{ config_id = 1010023, name = "ENTER_REGION_10023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10023", action = "action_EVENT_ENTER_REGION_10023", trigger_count = 0 },
	{ config_id = 1010025, name = "ENTER_REGION_10025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10025", action = "action_EVENT_ENTER_REGION_10025", trigger_count = 0 },
	{ config_id = 1010026, name = "ENTER_REGION_10026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10026", action = "action_EVENT_ENTER_REGION_10026", trigger_count = 0 },
	{ config_id = 1010027, name = "GADGET_CREATE_10027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10027", action = "action_EVENT_GADGET_CREATE_10027", trigger_count = 0 },
	{ config_id = 1010028, name = "GADGET_CREATE_10028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10028", action = "action_EVENT_GADGET_CREATE_10028", trigger_count = 0 },
	{ config_id = 1010030, name = "ENTER_REGION_10030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10030", action = "action_EVENT_ENTER_REGION_10030", trigger_count = 0 },
	{ config_id = 1010031, name = "ENTER_REGION_10031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10031", action = "action_EVENT_ENTER_REGION_10031", trigger_count = 0 },
	{ config_id = 1010032, name = "ENTER_REGION_10032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10032", action = "action_EVENT_ENTER_REGION_10032", trigger_count = 0 },
	{ config_id = 1010041, name = "ENTER_REGION_10041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10041", action = "action_EVENT_ENTER_REGION_10041", trigger_count = 0 },
	{ config_id = 1010045, name = "SELECT_OPTION_10045", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10045", action = "action_EVENT_SELECT_OPTION_10045", trigger_count = 0 },
	{ config_id = 1010046, name = "SELECT_OPTION_10046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10046", action = "action_EVENT_SELECT_OPTION_10046", trigger_count = 0 },
	{ config_id = 1010047, name = "SELECT_OPTION_10047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10047", action = "action_EVENT_SELECT_OPTION_10047", trigger_count = 0 },
	{ config_id = 1010049, name = "SELECT_OPTION_10049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10049", action = "action_EVENT_SELECT_OPTION_10049", trigger_count = 0 },
	{ config_id = 1010050, name = "SELECT_OPTION_10050", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10050", action = "action_EVENT_SELECT_OPTION_10050", trigger_count = 0 },
	{ config_id = 1010051, name = "SELECT_OPTION_10051", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10051", action = "action_EVENT_SELECT_OPTION_10051", trigger_count = 0 },
	{ config_id = 1010055, name = "SELECT_OPTION_10055", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10055", action = "action_EVENT_SELECT_OPTION_10055", trigger_count = 0 },
	{ config_id = 1010056, name = "SELECT_OPTION_10056", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10056", action = "action_EVENT_SELECT_OPTION_10056", trigger_count = 0 },
	{ config_id = 1010057, name = "SELECT_OPTION_10057", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10057", action = "action_EVENT_SELECT_OPTION_10057", trigger_count = 0 },
	{ config_id = 1010058, name = "SELECT_OPTION_10058", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10058", action = "action_EVENT_SELECT_OPTION_10058", trigger_count = 0 },
	{ config_id = 1010059, name = "SELECT_OPTION_10059", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10059", action = "action_EVENT_SELECT_OPTION_10059", trigger_count = 0 },
	{ config_id = 1010060, name = "SELECT_OPTION_10060", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10060", action = "action_EVENT_SELECT_OPTION_10060", trigger_count = 0 },
	{ config_id = 1010061, name = "SELECT_OPTION_10061", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10061", action = "action_EVENT_SELECT_OPTION_10061", trigger_count = 0 },
	{ config_id = 1010062, name = "SELECT_OPTION_10062", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10062", action = "action_EVENT_SELECT_OPTION_10062", trigger_count = 0 },
	{ config_id = 1010063, name = "SELECT_OPTION_10063", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10063", action = "action_EVENT_SELECT_OPTION_10063", trigger_count = 0 },
	{ config_id = 1010064, name = "ENTER_REGION_10064", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10064", action = "action_EVENT_ENTER_REGION_10064", trigger_count = 0 },
	{ config_id = 1010065, name = "ENTER_REGION_10065", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10065", action = "action_EVENT_ENTER_REGION_10065", trigger_count = 0 },
	{ config_id = 1010066, name = "GROUP_LOAD_10066", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10066", action = "action_EVENT_GROUP_LOAD_10066" }
}

-- 变量
variables = {
	{ config_id = 1, name = "seals", value = 0, no_refresh = true },
	{ config_id = 2, name = "flare", value = 1, no_refresh = true },
	{ config_id = 3, name = "flareactive", value = 0, no_refresh = true },
	{ config_id = 4, name = "crane1", value = 0, no_refresh = true },
	{ config_id = 5, name = "crane2", value = 0, no_refresh = true },
	{ config_id = 6, name = "crane3", value = 0, no_refresh = true },
	{ config_id = 7, name = "cstart", value = 0, no_refresh = true },
	{ config_id = 8, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 48, 121, 122, 124, 296, 10007, 10008, 10010, 10011 },
		regions = { 97, 104, 10022, 10023, 10025, 10026, 10030, 10031, 10032, 10041, 10064, 10065 },
		triggers = { "GADGET_STATE_CHANGE_11", "GADGET_STATE_CHANGE_12", "GADGET_STATE_CHANGE_14", "VARIABLE_CHANGE_15", "ENTER_REGION_97", "SELECT_OPTION_98", "ENTER_REGION_104", "GADGET_CREATE_10005", "SELECT_OPTION_10006", "GADGET_STATE_CHANGE_10009", "GADGET_CREATE_10012", "SELECT_OPTION_10013", "GADGET_CREATE_10014", "SELECT_OPTION_10015", "GADGET_CREATE_10016", "SELECT_OPTION_10017", "TIMER_EVENT_10021", "ENTER_REGION_10022", "ENTER_REGION_10023", "ENTER_REGION_10025", "ENTER_REGION_10026", "GADGET_CREATE_10027", "GADGET_CREATE_10028", "ENTER_REGION_10030", "ENTER_REGION_10031", "ENTER_REGION_10032", "ENTER_REGION_10041", "SELECT_OPTION_10045", "SELECT_OPTION_10046", "SELECT_OPTION_10047", "SELECT_OPTION_10049", "SELECT_OPTION_10050", "SELECT_OPTION_10051", "SELECT_OPTION_10055", "SELECT_OPTION_10056", "SELECT_OPTION_10057", "SELECT_OPTION_10058", "SELECT_OPTION_10059", "SELECT_OPTION_10060", "SELECT_OPTION_10061", "SELECT_OPTION_10062", "SELECT_OPTION_10063", "ENTER_REGION_10064", "ENTER_REGION_10065", "GROUP_LOAD_10066" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 282, 10001, 10029, 10033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 121, 122, 124, 10042, 10043, 10044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 10002, 10003, 10004, 10052, 10053, 10054 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 10018, 10019, 10020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 10024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 10034, 10035, 10039, 10048 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 10036, 10037, 10038, 10040 },
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
function condition_EVENT_GADGET_STATE_CHANGE_11(context, evt)
	if 121 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11(context, evt)
	-- 通知场景上的所有玩家播放名字为310301001 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301001, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：121；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 121, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为10042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12(context, evt)
	if 122 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12(context, evt)
	-- 通知场景上的所有玩家播放名字为310301002 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301002, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress2") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：122；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 122, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为10043的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10043 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	if 124 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_14(context, evt)
	-- 通知场景上的所有玩家播放名字为310301003 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301003, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 针对当前group内变量名为 "seals" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "seals", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_progress3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 2, 4) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 6)
	
	-- 删除指定group： 133103010 ；指定config：124；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 124, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "crane3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "crane3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为10044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10044 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"seals"为3
	if ScriptLib.GetGroupVariableValue(context, "seals") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "flareactive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flareactive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "cstart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cstart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_97(context, evt)
	if evt.param1 ~= 97 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_97(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5004, 4, 6) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知场景上的所有玩家播放名字为310301005 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301005, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_98(context, evt)
	-- 判断是gadgetid 296 option_id 24
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_98(context, evt)
	-- 通知场景上的所有玩家播放名字为310301004 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310301004, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 2)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 3)
	
	-- 解锁目标47
	if 0 ~= ScriptLib.UnlockForce(context, 47) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_force")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 3, 5) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103010_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104(context, evt)
	if evt.param1 ~= 104 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"cstart"为0
	if ScriptLib.GetGroupVariableValue(context, "cstart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5003, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {170}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "cstart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "cstart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10006(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"flare"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "flare", 133103010) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10006(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 4)
	
	-- 针对当前group内变量名为 "flare" 的变量，进行修改，变化值为 0
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flare", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "flareactive" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flareactive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 1109011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1109011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	if 10008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10012(context, evt)
	if 121 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane1"为0
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 121, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10013(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10013(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10014(context, evt)
	if 122 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane2"为0
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 122, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10015(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10015(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10016(context, evt)
	if 124 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"crane3"为0
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 124, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10017(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10017(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10021(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10022(context, evt)
	if evt.param1 ~= 10022 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10023(context, evt)
	if evt.param1 ~= 10023 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10023(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10025(context, evt)
	if evt.param1 ~= 10025 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10025(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10026(context, evt)
	if evt.param1 ~= 10026 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10027(context, evt)
	if 296 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"seals"为3
	if ScriptLib.GetGroupVariableValue(context, "seals") ~= 3 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除指定group： 133103010 ；指定config：296；物件身上指定option：170；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103010, 296, 170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 48 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "flareactive" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flareactive", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10028(context, evt)
	if 296 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"cstart"为0
	if ScriptLib.GetGroupVariableValue(context, "cstart") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103010, 296, {170}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10030(context, evt)
	if evt.param1 ~= 10030 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane1"为0
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10030(context, evt)
	-- 创建id为10002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10031(context, evt)
	if evt.param1 ~= 10031 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane2"为0
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10031(context, evt)
	-- 创建id为10003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10032(context, evt)
	if evt.param1 ~= 10032 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	-- 判断变量"crane3"为0
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10032(context, evt)
	-- 创建id为10004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10041(context, evt)
	if evt.param1 ~= 10041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10041(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10045(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane1"为1
	if ScriptLib.GetGroupVariableValue(context, "crane1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10045(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10052 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10046(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane2"为1
	if ScriptLib.GetGroupVariableValue(context, "crane2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10046(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10053 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10047(context, evt)
	-- 判断是gadgetid 296 option_id 170
	if 296 ~= evt.param1 then
		return false	
	end
	
	if 170 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"crane3"为1
	if ScriptLib.GetGroupVariableValue(context, "crane3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10047(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10054 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10049(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 121 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10049(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10050(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 121 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10050(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10051(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 121 ~= evt.param1 or GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10051(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10055(context, evt)
	-- 判断是gadgetid 121 option_id 31
	if 121 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 121 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10055(context, evt)
	-- 将configid为 121 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10056(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 122 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10056(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10057(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 122 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10057(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10058(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 122 ~= evt.param1 or GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10058(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10059(context, evt)
	-- 判断是gadgetid 122 option_id 31
	if 122 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 122 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10059(context, evt)
	-- 将configid为 122 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10060(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 124 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10060(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10061(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 124 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10061(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10062(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 124 ~= evt.param1 or GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10062(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10063(context, evt)
	-- 判断是gadgetid 124 option_id 31
	if 124 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	if 124 ~= evt.param1 or GadgetState.GearAction2 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10063(context, evt)
	-- 将configid为 124 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10064(context, evt)
	if evt.param1 ~= 10064 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10064(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10065(context, evt)
	if evt.param1 ~= 10065 then return false end
	
	-- 判断变量"flareactive"为1
	if ScriptLib.GetGroupVariableValue(context, "flareactive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10065(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10066(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10066(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103010, 5)
	
	return 0
end