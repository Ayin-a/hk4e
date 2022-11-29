-- 基础信息
local base_info = {
	group_id = 166001606
}

-- Trigger变量
local defs = {
	start_operator = 606008,
	protect_target = 606087,
	air_wall = 606059,
	pursina = 606085,
	challenge_time = 180,
	mons_num = 21,
	pursina_tip = 606086,
	fail_region = 606007,
	enemy_gadget = 606088
}

-- DEFS_MISCS
local mud_list = {
	[606041] = 606021,
	[606037] = 606028,
	[606039] = 606034,
	[606032] = 606031,
	[606052] = 606053,
	[606071] = 606072,
	[606077] = 606078,
}
local generators = {606035, 606036, 606073, 606080, 606082, 606083, 606084}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 606001, monster_id = 21011301, pos = { x = 989.825, y = 1019.314, z = 834.569 }, rot = { x = 0.000, y = 353.161, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606002, monster_id = 21011301, pos = { x = 986.483, y = 1019.413, z = 833.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606004, monster_id = 21010701, pos = { x = 970.777, y = 1021.221, z = 844.528 }, rot = { x = 0.000, y = 38.513, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606005, monster_id = 21011601, pos = { x = 988.787, y = 1019.380, z = 837.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606006, monster_id = 21010701, pos = { x = 968.986, y = 1021.282, z = 847.469 }, rot = { x = 0.000, y = 61.296, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606018, monster_id = 21030101, pos = { x = 976.206, y = 1020.640, z = 845.643 }, rot = { x = 0.000, y = 35.778, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606022, monster_id = 21010601, pos = { x = 986.503, y = 1019.553, z = 831.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606023, monster_id = 21011301, pos = { x = 989.847, y = 1019.170, z = 831.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606024, monster_id = 21020201, pos = { x = 986.503, y = 1019.553, z = 831.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606025, monster_id = 21020701, pos = { x = 989.847, y = 1019.170, z = 831.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606029, monster_id = 21010701, pos = { x = 988.787, y = 1019.380, z = 837.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606047, monster_id = 21030101, pos = { x = 978.958, y = 1020.573, z = 843.651 }, rot = { x = 0.000, y = 19.154, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606048, monster_id = 21010701, pos = { x = 986.490, y = 1019.388, z = 837.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606049, monster_id = 21010701, pos = { x = 971.473, y = 1020.659, z = 846.631 }, rot = { x = 0.000, y = 67.400, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606054, monster_id = 22010101, pos = { x = 986.173, y = 1016.080, z = 862.994 }, rot = { x = 0.000, y = 174.556, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606055, monster_id = 22010201, pos = { x = 989.537, y = 1016.034, z = 861.908 }, rot = { x = 0.000, y = 213.299, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606056, monster_id = 21020301, pos = { x = 971.473, y = 1020.659, z = 846.631 }, rot = { x = 0.000, y = 67.400, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606066, monster_id = 21030601, pos = { x = 991.705, y = 1017.711, z = 856.259 }, rot = { x = 0.000, y = 248.144, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606067, monster_id = 21020201, pos = { x = 970.777, y = 1021.221, z = 844.528 }, rot = { x = 0.000, y = 38.513, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606068, monster_id = 21010601, pos = { x = 986.490, y = 1019.388, z = 837.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 606070, monster_id = 21011201, pos = { x = 968.986, y = 1021.282, z = 847.469 }, rot = { x = 0.000, y = 61.296, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 606008, gadget_id = 70360001, pos = { x = 984.489, y = 1019.037, z = 854.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 通道内岩柱
	{ config_id = 606019, gadget_id = 70290276, pos = { x = 988.378, y = 1027.707, z = 832.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 通道内黑泥
	{ config_id = 606021, gadget_id = 70290233, pos = { x = 988.225, y = 1019.186, z = 828.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 基座黑泥01
	{ config_id = 606028, gadget_id = 70290233, pos = { x = 982.412, y = 1017.829, z = 855.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 对应606032
	{ config_id = 606030, gadget_id = 70290276, pos = { x = 976.170, y = 1045.483, z = 851.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 第三波怪远程黑泥白盒
	{ config_id = 606031, gadget_id = 70290233, pos = { x = 970.595, y = 1020.794, z = 846.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 第三波远程怪深渊核心
	{ config_id = 606032, gadget_id = 70290204, pos = { x = 975.789, y = 1019.493, z = 850.381 }, rot = { x = 0.877, y = 359.912, z = 348.517 }, level = 1, area_id = 300 },
	-- 基座黑泥02
	{ config_id = 606034, gadget_id = 70290233, pos = { x = 982.412, y = 1017.829, z = 855.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 对应606037
	{ config_id = 606035, gadget_id = 70290276, pos = { x = 987.541, y = 1044.260, z = 851.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 对应606039
	{ config_id = 606036, gadget_id = 70290276, pos = { x = 980.333, y = 1044.258, z = 854.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 基座黑泥01核心
	{ config_id = 606037, gadget_id = 70290204, pos = { x = 987.654, y = 1017.956, z = 851.705 }, rot = { x = 9.218, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 基座黑泥02核心
	{ config_id = 606039, gadget_id = 70290204, pos = { x = 980.544, y = 1018.195, z = 854.613 }, rot = { x = 2.604, y = 359.679, z = 345.963 }, level = 36, area_id = 300 },
	-- 通道内黑泥核心
	{ config_id = 606041, gadget_id = 70290204, pos = { x = 988.330, y = 1019.112, z = 832.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 对应606052
	{ config_id = 606050, gadget_id = 70290276, pos = { x = 979.129, y = 1046.307, z = 845.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 远程怪黑泥核心
	{ config_id = 606052, gadget_id = 70290204, pos = { x = 979.091, y = 1020.061, z = 845.477 }, rot = { x = 12.100, y = 358.779, z = 348.517 }, level = 1, area_id = 300 },
	-- 远程怪黑泥白盒
	{ config_id = 606053, gadget_id = 70290233, pos = { x = 976.136, y = 1019.995, z = 848.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 606059, gadget_id = 70290155, pos = { x = 989.524, y = 1019.132, z = 828.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 战前黑泥核心02
	{ config_id = 606071, gadget_id = 70290204, pos = { x = 985.049, y = 1016.915, z = 858.734 }, rot = { x = 10.540, y = 359.342, z = 352.875 }, level = 1, area_id = 300 },
	-- 第三波战前黑泥白盒02
	{ config_id = 606072, gadget_id = 70290233, pos = { x = 983.965, y = 1017.006, z = 859.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 对应606071
	{ config_id = 606073, gadget_id = 70290276, pos = { x = 985.219, y = 1044.870, z = 858.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 战前黑泥01
	{ config_id = 606077, gadget_id = 70290204, pos = { x = 976.742, y = 1020.249, z = 846.510 }, rot = { x = 10.401, y = 357.757, z = 345.695 }, level = 36, area_id = 300 },
	-- 第二波战前黑泥白盒02
	{ config_id = 606078, gadget_id = 70290233, pos = { x = 974.840, y = 1020.774, z = 846.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 对应606077
	{ config_id = 606080, gadget_id = 70290276, pos = { x = 976.067, y = 1045.942, z = 846.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	-- 第三波蜜虫
	{ config_id = 606082, gadget_id = 70290353, pos = { x = 979.876, y = 1016.626, z = 866.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 第一波蜜虫
	{ config_id = 606083, gadget_id = 70290353, pos = { x = 970.544, y = 1020.539, z = 857.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 第二波蜜虫
	{ config_id = 606084, gadget_id = 70290353, pos = { x = 999.023, y = 1020.074, z = 853.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 606085, gadget_id = 70800229, pos = { x = 984.516, y = 1017.689, z = 854.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 606086, gadget_id = 70800222, pos = { x = 984.516, y = 1017.689, z = 854.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 606087, gadget_id = 70350452, pos = { x = 984.516, y = 1017.689, z = 854.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 606088, gadget_id = 70800227, pos = { x = 984.516, y = 1017.689, z = 854.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 606090, gadget_id = 70350453, pos = { x = 984.516, y = 1017.689, z = 854.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	-- fail_region
	{ config_id = 606007, shape = RegionShape.SPHERE, radius = 60, pos = { x = 984.516, y = 1017.689, z = 854.580 }, area_id = 300 },
	-- ShowTemplateReminder
	{ config_id = 606012, shape = RegionShape.SPHERE, radius = 10, pos = { x = 984.516, y = 1017.689, z = 854.579 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- 轴1触发岩柱606036
	{ config_id = 1606003, name = "TIME_AXIS_PASS_606003", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606003", action = "action_EVENT_TIME_AXIS_PASS_606003" },
	-- 怪物死光启动计时器
	{ config_id = 1606009, name = "ANY_MONSTER_DIE_606009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606009", action = "action_EVENT_ANY_MONSTER_DIE_606009", trigger_count = 0 },
	-- 启动5个时间轴
	{ config_id = 1606010, name = "ANY_MONSTER_DIE_606010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606010", action = "action_EVENT_ANY_MONSTER_DIE_606010" },
	-- 添加操作台选项
	{ config_id = 1606011, name = "GADGET_CREATE_606011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_606011", action = "action_EVENT_GADGET_CREATE_606011", trigger_count = 0 },
	-- ShowTemplateReminder
	{ config_id = 1606012, name = "ENTER_REGION_606012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_606012", action = "action_EVENT_ENTER_REGION_606012" },
	-- 最后一波怪物清零
	{ config_id = 1606013, name = "ANY_MONSTER_DIE_606013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606013", action = "action_EVENT_ANY_MONSTER_DIE_606013", trigger_count = 0 },
	-- 挑战开始
	{ config_id = 1606014, name = "SELECT_OPTION_606014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_606014", action = "action_EVENT_SELECT_OPTION_606014", trigger_count = 0 },
	-- 通道内岩柱、黑泥，创生挑战实体
	{ config_id = 1606017, name = "ANY_MONSTER_LIVE_606017", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_606017", action = "action_EVENT_ANY_MONSTER_LIVE_606017", trigger_count = 0 },
	-- 第一波前半结束
	{ config_id = 1606020, name = "ANY_MONSTER_DIE_606020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606020", action = "action_EVENT_ANY_MONSTER_DIE_606020" },
	-- 怪死轴3加怪
	{ config_id = 1606027, name = "TIME_AXIS_PASS_606027", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606027", action = "action_EVENT_TIME_AXIS_PASS_606027" },
	{ config_id = 1606033, name = "ANY_MONSTER_DIE_606033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606033", action = "action_EVENT_ANY_MONSTER_DIE_606033" },
	-- 创生第二波蜜虫
	{ config_id = 1606042, name = "ANY_MONSTER_LIVE_606042", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_606042", action = "action_EVENT_ANY_MONSTER_LIVE_606042" },
	-- 轴5加入第三波怪
	{ config_id = 1606043, name = "TIME_AXIS_PASS_606043", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606043", action = "action_EVENT_TIME_AXIS_PASS_606043" },
	-- 创生第三波蜜虫
	{ config_id = 1606044, name = "ANY_MONSTER_LIVE_606044", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_606044", action = "action_EVENT_ANY_MONSTER_LIVE_606044" },
	-- 怪死光岩柱606080启动
	{ config_id = 1606045, name = "ANY_MONSTER_DIE_606045", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606045", action = "action_EVENT_ANY_MONSTER_DIE_606045" },
	-- 岩柱606030落地，606032
	{ config_id = 1606046, name = "TIME_AXIS_PASS_606046", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Mid", condition = "condition_EVENT_TIME_AXIS_PASS_606046", action = "action_EVENT_TIME_AXIS_PASS_606046" },
	-- 怪生轴1岩柱606050启动
	{ config_id = 1606051, name = "TIME_AXIS_PASS_606051", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606051", action = "action_EVENT_TIME_AXIS_PASS_606051" },
	-- 第三波战中计时
	{ config_id = 1606060, name = "ANY_MONSTER_LIVE_606060", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_606060", action = "action_EVENT_ANY_MONSTER_LIVE_606060" },
	-- 怪物创生启动计时器
	{ config_id = 1606061, name = "ANY_MONSTER_LIVE_606061", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_606061", action = "action_EVENT_ANY_MONSTER_LIVE_606061" },
	-- 怪死轴1岩柱606080落地，606077
	{ config_id = 1606062, name = "TIME_AXIS_PASS_606062", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606062", action = "action_EVENT_TIME_AXIS_PASS_606062" },
	-- 轴2岩柱606036落地，606039
	{ config_id = 1606063, name = "TIME_AXIS_PASS_606063", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606063", action = "action_EVENT_TIME_AXIS_PASS_606063" },
	-- 怪生轴2岩柱606050落地，606052
	{ config_id = 1606064, name = "TIME_AXIS_PASS_606064", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606064", action = "action_EVENT_TIME_AXIS_PASS_606064" },
	-- 触发岩柱606030
	{ config_id = 1606065, name = "TIME_AXIS_PASS_606065", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Mid", condition = "condition_EVENT_TIME_AXIS_PASS_606065", action = "action_EVENT_TIME_AXIS_PASS_606065" },
	-- 第三波前半怪物清零
	{ config_id = 1606069, name = "ANY_MONSTER_DIE_606069", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606069", action = "action_EVENT_ANY_MONSTER_DIE_606069" },
	-- 轴3触发岩柱606073
	{ config_id = 1606074, name = "TIME_AXIS_PASS_606074", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606074", action = "action_EVENT_TIME_AXIS_PASS_606074" },
	-- 轴4岩柱606073落地，606071
	{ config_id = 1606075, name = "TIME_AXIS_PASS_606075", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_606075", action = "action_EVENT_TIME_AXIS_PASS_606075" },
	-- 怪死轴2岩柱606035落地，606037
	{ config_id = 1606081, name = "TIME_AXIS_PASS_606081", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606081", action = "action_EVENT_TIME_AXIS_PASS_606081" },
	-- 怪死轴1岩柱606035启动
	{ config_id = 1606089, name = "TIME_AXIS_PASS_606089", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_606089", action = "action_EVENT_TIME_AXIS_PASS_606089" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1606015, name = "CHALLENGE_SUCCESS_606015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_606015", trigger_count = 0 },
		{ config_id = 1606016, name = "CHALLENGE_FAIL_606016", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_606016", trigger_count = 0 },
		{ config_id = 1606026, name = "ANY_GADGET_DIE_606026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606026", action = "action_EVENT_ANY_GADGET_DIE_606026" },
		{ config_id = 1606038, name = "ANY_GADGET_DIE_606038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606038", action = "action_EVENT_ANY_GADGET_DIE_606038" },
		{ config_id = 1606040, name = "ANY_GADGET_DIE_606040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606040", action = "action_EVENT_ANY_GADGET_DIE_606040" },
		{ config_id = 1606057, name = "ANY_GADGET_DIE_606057", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606057", action = "action_EVENT_ANY_GADGET_DIE_606057" },
		{ config_id = 1606058, name = "ANY_GADGET_DIE_606058", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606058", action = "action_EVENT_ANY_GADGET_DIE_606058" },
		{ config_id = 1606076, name = "ANY_GADGET_DIE_606076", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606076", action = "action_EVENT_ANY_GADGET_DIE_606076" },
		{ config_id = 1606079, name = "ANY_GADGET_DIE_606079", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_606079", action = "action_EVENT_ANY_GADGET_DIE_606079" }
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
	end_suite = 9,
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
		gadgets = { 606008, 606085, 606086, 606090 },
		regions = { 606007, 606012 },
		triggers = { "GADGET_CREATE_606011", "ENTER_REGION_606012", "SELECT_OPTION_606014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一波前半,
		monsters = { 606001, 606002, 606005, 606068 },
		gadgets = { 606019 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_606017", "ANY_MONSTER_DIE_606020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波后半,
		monsters = { 606004, 606006, 606018, 606049 },
		gadgets = { 606035, 606050, 606080 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_606009", "TIME_AXIS_PASS_606027", "ANY_MONSTER_DIE_606045", "TIME_AXIS_PASS_606051", "ANY_MONSTER_LIVE_606061", "TIME_AXIS_PASS_606062", "TIME_AXIS_PASS_606064", "TIME_AXIS_PASS_606081", "TIME_AXIS_PASS_606089" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波前半,
		monsters = { 606022, 606023, 606029, 606048 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_606033", "ANY_MONSTER_LIVE_606042" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波后半,
		monsters = { 606024, 606025, 606047 },
		gadgets = { 606036, 606073 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_606003", "ANY_MONSTER_DIE_606010", "TIME_AXIS_PASS_606043", "TIME_AXIS_PASS_606063", "TIME_AXIS_PASS_606074", "TIME_AXIS_PASS_606075" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 606054, 606055, 606066 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_606044", "ANY_MONSTER_DIE_606069" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 606056, 606067, 606070 },
		gadgets = { 606030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_606013", "TIME_AXIS_PASS_606046", "ANY_MONSTER_LIVE_606060", "TIME_AXIS_PASS_606065" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 606087 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 清除黑泥Triggers,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_TIME_AXIS_PASS_606003(context, evt)
	if "wave2Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606037) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606003(context, evt)
	-- 将configid为 606036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606009(context, evt)
	-- 创建标识为"wave1Delay"，时间节点为{1,2,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave1Delay", {1,2,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606010(context, evt)
	-- 创建标识为"wave2Delay"，时间节点为{1,2,4,5,6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave2Delay", {1,2,4,5,6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_606011(context, evt)
	if 606008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_606011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001606, 606008, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_606012(context, evt)
	if evt.param1 ~= 606012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_606012(context, evt)
	-- 显示id为179的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,179,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606013(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 7)
	
	-- 调用提示id为 32100196 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100196) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_606014(context, evt)
	-- 判断是gadgetid 606008 option_id 7
	if 606008 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_606014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 2)
	
	-- 调用提示id为 4000140 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_606017(context, evt)
	if 606001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_606017(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 8)
	
	-- 将本组内变量名为 "challenge_start" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challenge_start", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 606019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为606059的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606059 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606041的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606041 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606083的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606083 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 3)
	
	-- 调用提示id为 4000149 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 4000149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606027(context, evt)
	if "wave1Delay" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606027(context, evt)
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001606) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_606042(context, evt)
	if 606022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_606042(context, evt)
	-- 创建id为606084的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606084 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606043(context, evt)
	if "wave2Delay" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606043(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 6)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 5)
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_606044(context, evt)
	if 606054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_606044(context, evt)
	-- 创建id为606082的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606082 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606045(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606032) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606052) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606045(context, evt)
	-- 将configid为 606080 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606080, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606046(context, evt)
	if "wave3Mid" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606052) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606077) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606046(context, evt)
	-- 创建id为606032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606051(context, evt)
	if "wave1Mid" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606032) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606077) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606051(context, evt)
	-- 将configid为 606050 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606050, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_606060(context, evt)
	if 606056 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_606060(context, evt)
	-- 创建标识为"wave3Mid"，时间节点为{3,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave3Mid", {3,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_606061(context, evt)
	if 606004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_606061(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 2)
	
	-- 创建标识为"wave1Mid"，时间节点为{3,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave1Mid", {3,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606062(context, evt)
	if "wave1Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606032) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606052) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606062(context, evt)
	-- 创建id为606077的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606077 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606078的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606078 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606063(context, evt)
	if "wave2Delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606037) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606063(context, evt)
	-- 创建id为606039的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606039 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606034的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606034 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606064(context, evt)
	if "wave1Mid" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606032) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606077) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606064(context, evt)
	-- 创建id为606052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606053的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606053 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606065(context, evt)
	if "wave3Mid" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606052) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606077) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606065(context, evt)
	-- 将configid为 606030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606069(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001606) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606069(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001606, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001606, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606074(context, evt)
	if "wave2Delay" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606037) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606039) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606074(context, evt)
	-- 将configid为 606073 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606073, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606075(context, evt)
	if "wave2Delay" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606037) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606039) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606075(context, evt)
	-- 创建id为606071的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606071 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606072的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606072 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606081(context, evt)
	if "wave1Delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606039) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606081(context, evt)
	-- 创建id为606037的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606037 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为606028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 606028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_606089(context, evt)
	if "wave1Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606039) then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001606, 606071) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_606089(context, evt)
	-- 将configid为 606035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"
require "V2_7/Activity_LumenProtect"