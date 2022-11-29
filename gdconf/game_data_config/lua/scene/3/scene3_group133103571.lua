-- 基础信息
local base_info = {
	group_id = 133103571
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
	-- 垂直加速环
	{ config_id = 571001, gadget_id = 70690001, pos = { x = 1005.814, y = 351.606, z = 1565.670 }, rot = { x = 270.463, y = 188.999, z = 180.000 }, level = 1, area_id = 6 },
	{ config_id = 571002, gadget_id = 70690006, pos = { x = 1006.041, y = 331.951, z = 1565.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑1
	{ config_id = 571003, gadget_id = 70900009, pos = { x = 987.553, y = 345.607, z = 1551.805 }, rot = { x = 0.000, y = 346.172, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标1
	{ config_id = 571004, gadget_id = 70900201, pos = { x = 987.543, y = 347.724, z = 1551.863 }, rot = { x = 0.000, y = 346.172, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571005, gadget_id = 70310013, pos = { x = 981.257, y = 344.769, z = 1584.940 }, rot = { x = 0.000, y = 199.746, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑2
	{ config_id = 571006, gadget_id = 70900064, pos = { x = 981.259, y = 345.468, z = 1585.227 }, rot = { x = 0.000, y = 205.540, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标2
	{ config_id = 571007, gadget_id = 70900201, pos = { x = 981.230, y = 347.255, z = 1585.303 }, rot = { x = 0.000, y = 223.607, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑3
	{ config_id = 571008, gadget_id = 70900009, pos = { x = 942.844, y = 376.507, z = 1579.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标3
	{ config_id = 571009, gadget_id = 70900201, pos = { x = 942.916, y = 378.388, z = 1579.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571010, gadget_id = 70690001, pos = { x = 925.180, y = 318.068, z = 1687.980 }, rot = { x = 0.000, y = 333.814, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571011, gadget_id = 70690001, pos = { x = 928.103, y = 319.003, z = 1682.036 }, rot = { x = 0.000, y = 333.814, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571012, gadget_id = 70690001, pos = { x = 942.237, y = 373.716, z = 1587.094 }, rot = { x = 31.133, y = 357.642, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571013, gadget_id = 70690001, pos = { x = 921.212, y = 317.369, z = 1696.049 }, rot = { x = 0.000, y = 333.814, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571014, gadget_id = 70310013, pos = { x = 747.118, y = 407.197, z = 1815.255 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571015, gadget_id = 70690001, pos = { x = 940.608, y = 353.971, z = 1619.010 }, rot = { x = 27.107, y = 357.642, z = 0.000 }, level = 24, area_id = 6 },
	-- 垂直加速环2
	{ config_id = 571016, gadget_id = 70690001, pos = { x = 1005.805, y = 358.699, z = 1565.613 }, rot = { x = 270.463, y = 188.999, z = 180.000 }, level = 1, area_id = 6 },
	{ config_id = 571017, gadget_id = 70310013, pos = { x = 987.552, y = 344.896, z = 1551.877 }, rot = { x = 0.000, y = 346.172, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571018, gadget_id = 70360046, pos = { x = 933.714, y = 326.108, z = 1678.449 }, rot = { x = 0.000, y = 18.529, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑4
	{ config_id = 571019, gadget_id = 70900009, pos = { x = 933.680, y = 326.950, z = 1678.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标4
	{ config_id = 571020, gadget_id = 70900201, pos = { x = 933.693, y = 328.715, z = 1678.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	-- 物件自带目标5
	{ config_id = 571021, gadget_id = 70310020, pos = { x = 877.357, y = 352.038, z = 1739.234 }, rot = { x = 0.000, y = 65.070, z = 0.000 }, level = 24, route_id = 310300217, area_id = 6 },
	-- 方碑5
	{ config_id = 571022, gadget_id = 70900064, pos = { x = 877.507, y = 352.913, z = 1738.910 }, rot = { x = 0.000, y = 39.682, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571023, gadget_id = 70310013, pos = { x = 715.711, y = 424.649, z = 1819.051 }, rot = { x = 0.000, y = 283.367, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571024, gadget_id = 70690006, pos = { x = 907.640, y = 303.036, z = 1720.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571025, gadget_id = 70360046, pos = { x = 914.280, y = 341.066, z = 1715.500 }, rot = { x = 0.000, y = 29.885, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571026, gadget_id = 70360046, pos = { x = 914.356, y = 341.066, z = 1722.122 }, rot = { x = 0.000, y = 342.593, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571027, gadget_id = 70360046, pos = { x = 910.263, y = 341.066, z = 1727.308 }, rot = { x = 0.000, y = 307.478, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571028, gadget_id = 70360046, pos = { x = 903.155, y = 341.066, z = 1727.790 }, rot = { x = 0.000, y = 271.583, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571029, gadget_id = 70360046, pos = { x = 898.212, y = 341.066, z = 1722.895 }, rot = { x = 0.000, y = 221.168, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571030, gadget_id = 70360046, pos = { x = 898.203, y = 341.066, z = 1716.137 }, rot = { x = 0.000, y = 169.930, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571031, gadget_id = 70360046, pos = { x = 902.785, y = 341.066, z = 1711.414 }, rot = { x = 0.000, y = 118.409, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571032, gadget_id = 70360046, pos = { x = 909.526, y = 341.066, z = 1711.030 }, rot = { x = 0.000, y = 78.025, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑6
	{ config_id = 571033, gadget_id = 70900009, pos = { x = 874.216, y = 358.468, z = 1669.429 }, rot = { x = 0.000, y = 305.371, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标6
	{ config_id = 571034, gadget_id = 70900201, pos = { x = 874.403, y = 360.366, z = 1669.574 }, rot = { x = 0.000, y = 345.191, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑7
	{ config_id = 571035, gadget_id = 70900009, pos = { x = 954.117, y = 351.094, z = 1741.672 }, rot = { x = 0.000, y = 342.585, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标7
	{ config_id = 571036, gadget_id = 70900201, pos = { x = 954.177, y = 352.843, z = 1741.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571037, gadget_id = 70350061, pos = { x = 884.870, y = 342.532, z = 1733.465 }, rot = { x = 302.825, y = 128.799, z = 178.070 }, level = 24, area_id = 6 },
	{ config_id = 571038, gadget_id = 70350061, pos = { x = 865.727, y = 345.178, z = 1747.922 }, rot = { x = 308.357, y = 128.499, z = 178.314 }, level = 24, area_id = 6 },
	{ config_id = 571039, gadget_id = 70310020, pos = { x = 820.220, y = 351.681, z = 1777.425 }, rot = { x = 0.000, y = 28.503, z = 0.000 }, level = 24, route_id = 310300206, area_id = 6 },
	-- 方碑8
	{ config_id = 571040, gadget_id = 70900064, pos = { x = 820.640, y = 352.249, z = 1777.308 }, rot = { x = 0.000, y = 25.106, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑12
	{ config_id = 571041, gadget_id = 70900009, pos = { x = 715.026, y = 425.452, z = 1818.036 }, rot = { x = 0.000, y = 338.695, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571042, gadget_id = 70690010, pos = { x = 838.334, y = 339.587, z = 1770.672 }, rot = { x = 0.000, y = 217.010, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571043, gadget_id = 70690001, pos = { x = 838.728, y = 374.410, z = 1769.921 }, rot = { x = 270.028, y = 300.953, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑11
	{ config_id = 571044, gadget_id = 70900009, pos = { x = 717.385, y = 425.452, z = 1818.956 }, rot = { x = 0.000, y = 338.695, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571046, gadget_id = 70690001, pos = { x = 838.728, y = 382.465, z = 1769.921 }, rot = { x = 270.028, y = 300.953, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑9
	{ config_id = 571048, gadget_id = 70900064, pos = { x = 755.937, y = 394.557, z = 1789.768 }, rot = { x = 0.000, y = 83.909, z = 0.000 }, level = 24, area_id = 6 },
	-- 方碑10
	{ config_id = 571050, gadget_id = 70900009, pos = { x = 715.600, y = 425.452, z = 1819.798 }, rot = { x = 0.000, y = 338.695, z = 0.000 }, level = 24, area_id = 6 },
	-- 目标10
	{ config_id = 571051, gadget_id = 70900201, pos = { x = 716.190, y = 427.840, z = 1819.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571053, gadget_id = 70690006, pos = { x = 752.299, y = 386.443, z = 1811.104 }, rot = { x = 0.000, y = 290.987, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571054, gadget_id = 70310013, pos = { x = 771.155, y = 405.082, z = 1797.438 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571055, gadget_id = 70310013, pos = { x = 766.438, y = 405.677, z = 1800.935 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571056, gadget_id = 70310013, pos = { x = 761.610, y = 406.207, z = 1804.514 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571057, gadget_id = 70310013, pos = { x = 756.731, y = 406.641, z = 1808.130 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571058, gadget_id = 70310013, pos = { x = 752.021, y = 407.000, z = 1811.621 }, rot = { x = 0.000, y = 36.546, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 571087, gadget_id = 70690001, pos = { x = 992.983, y = 380.779, z = 1566.671 }, rot = { x = 0.000, y = 275.970, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571088, gadget_id = 70690001, pos = { x = 981.523, y = 379.852, z = 1567.870 }, rot = { x = 0.000, y = 275.970, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571089, gadget_id = 70690001, pos = { x = 966.226, y = 378.638, z = 1569.469 }, rot = { x = 0.000, y = 275.970, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 571092, gadget_id = 70310020, pos = { x = 755.969, y = 393.964, z = 1789.886 }, rot = { x = 0.000, y = 34.855, z = 0.000 }, level = 1, route_id = 310300216, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 571047, shape = RegionShape.SPHERE, radius = 15.9, pos = { x = 937.379, y = 328.238, z = 1651.133 }, area_id = 6 },
	{ config_id = 571062, shape = RegionShape.SPHERE, radius = 5, pos = { x = 769.553, y = 405.793, z = 1798.451 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1571045, name = "GADGET_STATE_CHANGE_571045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571045", action = "action_EVENT_GADGET_STATE_CHANGE_571045", tag = "666" },
	{ config_id = 1571047, name = "ENTER_REGION_571047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571047", action = "action_EVENT_ENTER_REGION_571047" },
	{ config_id = 1571049, name = "GADGET_STATE_CHANGE_571049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571049", action = "action_EVENT_GADGET_STATE_CHANGE_571049", tag = "666" },
	{ config_id = 1571052, name = "QUEST_FINISH_571052", event = EventType.EVENT_QUEST_FINISH, source = "1103004", condition = "", action = "action_EVENT_QUEST_FINISH_571052", trigger_count = 0 },
	{ config_id = 1571059, name = "VARIABLE_CHANGE_571059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571059", action = "action_EVENT_VARIABLE_CHANGE_571059" },
	{ config_id = 1571062, name = "ENTER_REGION_571062", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571062", action = "action_EVENT_ENTER_REGION_571062" },
	{ config_id = 1571066, name = "GADGET_STATE_CHANGE_571066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571066", action = "action_EVENT_GADGET_STATE_CHANGE_571066", tag = "666" },
	{ config_id = 1571067, name = "GADGET_STATE_CHANGE_571067", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571067", action = "action_EVENT_GADGET_STATE_CHANGE_571067", tag = "666" },
	{ config_id = 1571068, name = "GADGET_STATE_CHANGE_571068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571068", action = "action_EVENT_GADGET_STATE_CHANGE_571068", tag = "666" },
	{ config_id = 1571069, name = "VARIABLE_CHANGE_571069", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571069", action = "action_EVENT_VARIABLE_CHANGE_571069" },
	{ config_id = 1571070, name = "GADGET_STATE_CHANGE_571070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571070", action = "action_EVENT_GADGET_STATE_CHANGE_571070", tag = "666" },
	{ config_id = 1571071, name = "GADGET_STATE_CHANGE_571071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571071", action = "action_EVENT_GADGET_STATE_CHANGE_571071", tag = "666" },
	{ config_id = 1571072, name = "VARIABLE_CHANGE_571072", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571072", action = "action_EVENT_VARIABLE_CHANGE_571072" },
	{ config_id = 1571073, name = "GADGET_STATE_CHANGE_571073", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571073", action = "action_EVENT_GADGET_STATE_CHANGE_571073", tag = "666" },
	{ config_id = 1571074, name = "GADGET_STATE_CHANGE_571074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571074", action = "action_EVENT_GADGET_STATE_CHANGE_571074", tag = "666" },
	{ config_id = 1571075, name = "VARIABLE_CHANGE_571075", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571075", action = "action_EVENT_VARIABLE_CHANGE_571075" },
	{ config_id = 1571076, name = "VARIABLE_CHANGE_571076", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571076", action = "action_EVENT_VARIABLE_CHANGE_571076" },
	{ config_id = 1571077, name = "GADGET_STATE_CHANGE_571077", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571077", action = "action_EVENT_GADGET_STATE_CHANGE_571077", tag = "666" },
	{ config_id = 1571078, name = "GADGET_STATE_CHANGE_571078", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571078", action = "action_EVENT_GADGET_STATE_CHANGE_571078", tag = "666" },
	{ config_id = 1571079, name = "GADGET_STATE_CHANGE_571079", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571079", action = "action_EVENT_GADGET_STATE_CHANGE_571079", tag = "666" },
	{ config_id = 1571080, name = "VARIABLE_CHANGE_571080", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571080", action = "action_EVENT_VARIABLE_CHANGE_571080" },
	{ config_id = 1571082, name = "CHALLENGE_SUCCESS_571082", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_571082", trigger_count = 0 },
	{ config_id = 1571083, name = "CHALLENGE_FAIL_571083", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_571083", trigger_count = 0 },
	{ config_id = 1571084, name = "QUEST_FINISH_571084", event = EventType.EVENT_QUEST_FINISH, source = "1103010", condition = "", action = "action_EVENT_QUEST_FINISH_571084", trigger_count = 0 },
	{ config_id = 1571085, name = "VARIABLE_CHANGE_571085", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_571085", action = "action_EVENT_VARIABLE_CHANGE_571085" }
}

-- 变量
variables = {
	{ config_id = 1, name = "group1", value = 0, no_refresh = false },
	{ config_id = 2, name = "group2", value = 0, no_refresh = false },
	{ config_id = 3, name = "group3", value = 0, no_refresh = false },
	{ config_id = 4, name = "bridge1", value = 0, no_refresh = false },
	{ config_id = 5, name = "group4", value = 0, no_refresh = false },
	{ config_id = 6, name = "groupfin", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 571081, gadget_id = 70690006, pos = { x = 907.640, y = 309.804, z = 1720.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		-- description = 初始空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_571052", "CHALLENGE_SUCCESS_571082", "CHALLENGE_FAIL_571083", "QUEST_FINISH_571084" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 571001, 571002, 571008, 571009, 571016, 571087, 571088, 571089 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_571068" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 571053, 571054 },
		regions = { 571062 },
		triggers = { "ENTER_REGION_571062" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 571014, 571042, 571055, 571056, 571057, 571058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 571012, 571015, 571018, 571019, 571020 },
		regions = { 571047 },
		triggers = { "ENTER_REGION_571047", "GADGET_STATE_CHANGE_571070", "VARIABLE_CHANGE_571072" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 571010, 571011, 571013, 571021, 571022, 571024, 571025, 571026, 571027, 571028, 571029, 571030, 571031, 571032, 571033, 571034, 571035, 571036, 571037, 571038 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_571071", "GADGET_STATE_CHANGE_571073", "GADGET_STATE_CHANGE_571074", "VARIABLE_CHANGE_571075", "VARIABLE_CHANGE_571076", "VARIABLE_CHANGE_571085" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 571023, 571039, 571040, 571041, 571043, 571044, 571046, 571048, 571050, 571051, 571092 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_571045", "GADGET_STATE_CHANGE_571049", "VARIABLE_CHANGE_571059", "GADGET_STATE_CHANGE_571077", "GADGET_STATE_CHANGE_571078", "GADGET_STATE_CHANGE_571079", "VARIABLE_CHANGE_571080" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 571003, 571004, 571005, 571006, 571007, 571017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_571066", "GADGET_STATE_CHANGE_571067", "VARIABLE_CHANGE_571069" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571045(context, evt)
	if 571044 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571045(context, evt)
	-- 针对当前group内变量名为 "group4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "groupfin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "groupfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_571047(context, evt)
	if evt.param1 ~= 571047 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_571047(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=937,y=328,z=1651}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021008, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571049(context, evt)
	if 571041 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571049(context, evt)
	-- 针对当前group内变量名为 "group4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "groupfin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "groupfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_571052(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"groupfin"为3
	if ScriptLib.GetGroupVariableValue(context, "groupfin") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571059(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571051 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_571062(context, evt)
	if evt.param1 ~= 571062 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_571062(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571066(context, evt)
	if 571003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571066(context, evt)
	-- 针对当前group内变量名为 "group1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571067(context, evt)
	if 571006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571067(context, evt)
	-- 针对当前group内变量名为 "group1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571068(context, evt)
	if 571008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571068(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 9)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571069(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group1"为2
	if ScriptLib.GetGroupVariableValue(context, "group1") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571069(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571070(context, evt)
	if 571019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571070(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "group2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571071(context, evt)
	if 571022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571071(context, evt)
	-- 将configid为 571021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "group3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "bridge1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "bridge1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571072(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group2"为1
	if ScriptLib.GetGroupVariableValue(context, "group2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571072(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 3)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571073(context, evt)
	if 571035 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571073(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "group3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "bridge1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "bridge1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571074(context, evt)
	if 571033 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571074(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "group3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "bridge1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "bridge1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571075(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"bridge1"为3
	if ScriptLib.GetGroupVariableValue(context, "bridge1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571075(context, evt)
	-- 将configid为 571037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 571038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571076(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group3"为3
	if ScriptLib.GetGroupVariableValue(context, "group3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571076(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 6)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571077(context, evt)
	if 571040 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571077(context, evt)
	-- 将configid为 571039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为571042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 571042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571078(context, evt)
	if 571048 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571078(context, evt)
	-- 创建id为571053的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 571053 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "group4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 571092 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571092, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103571, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_571079(context, evt)
	if 571050 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571079(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103571, EntityType.GADGET, 571051 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 针对当前group内变量名为 "group4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "group4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "groupfin" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "groupfin", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571080(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group4"为5
	if ScriptLib.GetGroupVariableValue(context, "group4") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571080(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 7)
	
	-- 终止识别id为888的挑战，并判定成功
		ScriptLib.StopChallenge(context, 888, 1)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103571, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 571055 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 571057 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_571082(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331035711") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_571083(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331035712") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103571, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_571084(context, evt)
	-- 创建编号为888（该挑战的识别id),挑战内容为210的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 210, 240, 7, 666, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_571085(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"bridge1"为3
	if ScriptLib.GetGroupVariableValue(context, "bridge1") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_571085(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=898,y=341,z=1722}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021009, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end