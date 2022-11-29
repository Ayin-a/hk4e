-- 基础信息
local base_info = {
	group_id = 199004025
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
	-- 1
	{ config_id = 25001, gadget_id = 70310281, pos = { x = -481.002, y = 120.000, z = -89.287 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 25002, gadget_id = 70710126, pos = { x = 64.078, y = 120.000, z = -511.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 3
	{ config_id = 25003, gadget_id = 70310281, pos = { x = -445.061, y = 120.000, z = -120.487 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 1, area_id = 403 },
	-- 2
	{ config_id = 25004, gadget_id = 70310281, pos = { x = -444.936, y = 120.000, z = -101.336 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 1, area_id = 403 },
	-- 1
	{ config_id = 25005, gadget_id = 70310281, pos = { x = -523.937, y = 120.000, z = -88.944 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- 6
	{ config_id = 25006, gadget_id = 70310281, pos = { x = -367.650, y = 120.000, z = -149.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	-- 4
	{ config_id = 25013, gadget_id = 70310281, pos = { x = -414.157, y = 120.000, z = -125.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 1
	{ config_id = 25014, gadget_id = 70310281, pos = { x = -549.120, y = 120.000, z = -97.610 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- 7
	{ config_id = 25015, gadget_id = 70310281, pos = { x = -347.872, y = 120.000, z = -161.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 7
	{ config_id = 25016, gadget_id = 70310281, pos = { x = -358.830, y = 120.000, z = -187.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 7
	{ config_id = 25017, gadget_id = 70310281, pos = { x = -333.694, y = 120.000, z = -178.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 1
	{ config_id = 25018, gadget_id = 70310281, pos = { x = -565.292, y = 120.000, z = -84.965 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	-- 5
	{ config_id = 25019, gadget_id = 70310281, pos = { x = -394.334, y = 120.000, z = -154.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	-- 1
	{ config_id = 25021, gadget_id = 70310281, pos = { x = -510.993, y = 120.000, z = -105.544 }, rot = { x = 0.000, y = 353.151, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 25024, gadget_id = 70360001, pos = { x = -559.295, y = 120.000, z = -30.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	-- 1
	{ config_id = 25028, gadget_id = 70310281, pos = { x = -317.061, y = 120.000, z = -207.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	-- 2
	{ config_id = 25032, gadget_id = 70310281, pos = { x = -289.123, y = 120.000, z = -227.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 3
	{ config_id = 25035, gadget_id = 70310281, pos = { x = -280.134, y = 120.000, z = -269.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 4
	{ config_id = 25038, gadget_id = 70310281, pos = { x = -249.728, y = 120.000, z = -298.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25045, gadget_id = 70310281, pos = { x = -138.125, y = 120.000, z = -371.914 }, rot = { x = 0.000, y = 11.437, z = 0.000 }, level = 20, area_id = 401 },
	-- 6
	{ config_id = 25048, gadget_id = 70310281, pos = { x = -175.677, y = 120.000, z = -350.169 }, rot = { x = 0.000, y = 11.437, z = 0.000 }, level = 20, area_id = 401 },
	-- 4
	{ config_id = 25049, gadget_id = 70310281, pos = { x = -241.800, y = 120.000, z = -333.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 5
	{ config_id = 25051, gadget_id = 70310281, pos = { x = -218.386, y = 120.000, z = -322.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 5
	{ config_id = 25053, gadget_id = 70310281, pos = { x = -218.826, y = 120.000, z = -344.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25055, gadget_id = 70310281, pos = { x = -149.323, y = 120.000, z = -395.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25056, gadget_id = 70310281, pos = { x = -123.046, y = 120.000, z = -402.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25057, gadget_id = 70310281, pos = { x = -145.838, y = 120.000, z = -354.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25058, gadget_id = 70310281, pos = { x = -166.732, y = 120.000, z = -382.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 2
	{ config_id = 25065, gadget_id = 70310281, pos = { x = -73.331, y = 120.000, z = -417.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 3
	{ config_id = 25066, gadget_id = 70310281, pos = { x = -45.828, y = 120.000, z = -414.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 4
	{ config_id = 25067, gadget_id = 70310281, pos = { x = -44.044, y = 120.000, z = -449.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 4
	{ config_id = 25068, gadget_id = 70310281, pos = { x = -17.125, y = 120.000, z = -452.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 5
	{ config_id = 25069, gadget_id = 70310281, pos = { x = 8.100, y = 120.000, z = -481.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 6
	{ config_id = 25070, gadget_id = 70310281, pos = { x = 17.931, y = 120.000, z = -509.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25071, gadget_id = 70310281, pos = { x = 44.511, y = 120.000, z = -491.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 7
	{ config_id = 25072, gadget_id = 70310281, pos = { x = 64.078, y = 120.000, z = -511.545 }, rot = { x = 0.000, y = 345.914, z = 0.000 }, level = 20, area_id = 401 },
	-- 1
	{ config_id = 25082, gadget_id = 70310281, pos = { x = -92.969, y = 120.000, z = -394.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 }
}

-- 区域
regions = {
	-- ②
	{ config_id = 25007, shape = RegionShape.POLYGON, pos = { x = -461.092, y = 120.000, z = -89.480 }, height = 40.000, point_array = { { x = -523.376, y = -117.001 }, { x = -455.321, y = -24.470 }, { x = -398.808, y = -57.136 }, { x = -475.147, y = -154.491 } }, area_id = 403 },
	-- ③
	{ config_id = 25008, shape = RegionShape.POLYGON, pos = { x = -453.302, y = 120.000, z = -103.602 }, height = 40.000, point_array = { { x = -391.225, y = -80.740 }, { x = -439.244, y = -39.679 }, { x = -515.379, y = -125.059 }, { x = -473.036, y = -167.524 } }, area_id = 403 },
	-- ④
	{ config_id = 25009, shape = RegionShape.POLYGON, pos = { x = -426.297, y = 120.000, z = -116.306 }, height = 40.000, point_array = { { x = -425.093, y = -44.172 }, { x = -363.195, y = -72.815 }, { x = -438.289, y = -188.441 }, { x = -489.400, y = -151.312 } }, area_id = 403 },
	-- ⑤
	{ config_id = 25010, shape = RegionShape.POLYGON, pos = { x = -409.435, y = 120.000, z = -129.612 }, height = 40.000, point_array = { { x = -392.355, y = -60.690 }, { x = -339.204, y = -104.459 }, { x = -431.461, y = -198.533 }, { x = -479.667, y = -157.995 } }, area_id = 403 },
	-- ⑥
	{ config_id = 25011, shape = RegionShape.POLYGON, pos = { x = -388.300, y = 120.000, z = -137.280 }, height = 40.000, point_array = { { x = -371.933, y = -66.744 }, { x = -321.897, y = -112.935 }, { x = -409.256, y = -207.815 }, { x = -454.702, y = -173.639 } }, area_id = 403 },
	-- ⑦
	{ config_id = 25012, shape = RegionShape.POLYGON, pos = { x = -362.953, y = 120.000, z = -159.938 }, height = 40.000, point_array = { { x = -358.701, y = -91.210 }, { x = -295.347, y = -140.481 }, { x = -368.474, y = -228.666 }, { x = -430.559, y = -187.216 } }, area_id = 403 },
	-- ①
	{ config_id = 25020, shape = RegionShape.POLYGON, pos = { x = -518.082, y = 120.000, z = -109.124 }, height = 40.000, point_array = { { x = -527.856, y = -172.596 }, { x = -563.405, y = -56.174 }, { x = -501.959, y = -45.652 }, { x = -472.759, y = -152.361 } }, area_id = 403 },
	-- ②
	{ config_id = 25026, shape = RegionShape.POLYGON, pos = { x = -299.725, y = 120.000, z = -212.327 }, height = 40.000, point_array = { { x = -299.388, y = -160.750 }, { x = -251.269, y = -188.091 }, { x = -306.728, y = -263.903 }, { x = -348.181, y = -237.407 } }, area_id = 401 },
	{ config_id = 25027, shape = RegionShape.SPHERE, radius = 40, pos = { x = -330.557, y = 120.000, z = -184.854 }, area_id = 403 },
	-- ③
	{ config_id = 25030, shape = RegionShape.POLYGON, pos = { x = -291.222, y = 120.000, z = -237.609 }, height = 40.000, point_array = { { x = -293.262, y = -177.369 }, { x = -231.898, y = -223.779 }, { x = -295.499, y = -297.848 }, { x = -350.546, y = -245.427 } }, area_id = 401 },
	-- ④
	{ config_id = 25031, shape = RegionShape.POLYGON, pos = { x = -251.281, y = 120.000, z = -289.412 }, height = 40.000, point_array = { { x = -264.506, y = -219.581 }, { x = -194.931, y = -277.146 }, { x = -248.237, y = -359.244 }, { x = -307.631, y = -275.605 } }, area_id = 401 },
	-- ⑤
	{ config_id = 25033, shape = RegionShape.POLYGON, pos = { x = -231.237, y = 120.000, z = -331.352 }, height = 40.000, point_array = { { x = -230.214, y = -266.438 }, { x = -177.919, y = -313.386 }, { x = -205.544, y = -396.266 }, { x = -284.556, y = -317.866 } }, area_id = 401 },
	-- ⑥
	{ config_id = 25034, shape = RegionShape.POLYGON, pos = { x = -207.369, y = 120.000, z = -338.296 }, height = 40.000, point_array = { { x = -234.805, y = -281.825 }, { x = -161.121, y = -336.276 }, { x = -187.929, y = -394.767 }, { x = -253.618, y = -348.131 } }, area_id = 401 },
	-- ⑦
	{ config_id = 25037, shape = RegionShape.POLYGON, pos = { x = -158.451, y = 120.000, z = -373.784 }, height = 40.000, point_array = { { x = -175.276, y = -303.614 }, { x = -88.666, y = -352.342 }, { x = -144.747, y = -443.953 }, { x = -228.237, y = -389.387 } }, area_id = 401 },
	-- ②
	{ config_id = 25047, shape = RegionShape.POLYGON, pos = { x = -90.474, y = 120.000, z = -403.136 }, height = 40.000, point_array = { { x = -119.124, y = -395.410 }, { x = -96.542, y = -351.163 }, { x = -51.980, y = -369.886 }, { x = -83.491, y = -455.109 }, { x = -128.969, y = -437.480 } }, area_id = 401 },
	-- ③
	{ config_id = 25050, shape = RegionShape.POLYGON, pos = { x = -65.834, y = 120.000, z = -408.891 }, height = 40.000, point_array = { { x = -66.022, y = -362.321 }, { x = -25.902, y = -385.218 }, { x = -45.175, y = -430.382 }, { x = -77.805, y = -455.461 }, { x = -105.766, y = -432.582 } }, area_id = 401 },
	-- ④
	{ config_id = 25052, shape = RegionShape.POLYGON, pos = { x = -37.871, y = 120.000, z = -429.801 }, height = 40.000, point_array = { { x = -32.858, y = -364.302 }, { x = 30.057, y = -405.228 }, { x = -52.760, y = -495.300 }, { x = -105.798, y = -460.897 } }, area_id = 401 },
	-- ⑤
	{ config_id = 25054, shape = RegionShape.POLYGON, pos = { x = -17.976, y = 120.000, z = -457.848 }, height = 40.000, point_array = { { x = 2.235, y = -401.558 }, { x = 38.209, y = -450.194 }, { x = -15.473, y = -514.137 }, { x = -74.160, y = -477.255 } }, area_id = 401 },
	-- ⑥
	{ config_id = 25059, shape = RegionShape.POLYGON, pos = { x = -1.098, y = 120.026, z = -482.559 }, height = 40.052, point_array = { { x = 2.206, y = -432.768 }, { x = 42.764, y = -462.028 }, { x = 14.401, y = -532.349 }, { x = -44.959, y = -510.349 } }, area_id = 401 },
	-- ⑦
	{ config_id = 25060, shape = RegionShape.POLYGON, pos = { x = 26.490, y = 120.000, z = -489.704 }, height = 40.000, point_array = { { x = -8.267, y = -535.188 }, { x = 60.428, y = -539.454 }, { x = 61.246, y = -452.962 }, { x = 7.982, y = -439.953 } }, area_id = 401 },
	{ config_id = 25064, shape = RegionShape.SPHERE, radius = 50, pos = { x = -120.869, y = 119.039, z = -400.400 }, area_id = 401 }
}

-- 触发器
triggers = {
	-- ②
	{ config_id = 1025007, name = "ENTER_REGION_25007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25007", action = "action_EVENT_ENTER_REGION_25007", trigger_count = 0 },
	-- ③
	{ config_id = 1025008, name = "ENTER_REGION_25008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25008", action = "action_EVENT_ENTER_REGION_25008", trigger_count = 0 },
	-- ④
	{ config_id = 1025009, name = "ENTER_REGION_25009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25009", action = "action_EVENT_ENTER_REGION_25009", trigger_count = 0 },
	-- ⑤
	{ config_id = 1025010, name = "ENTER_REGION_25010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25010", action = "action_EVENT_ENTER_REGION_25010", trigger_count = 0 },
	-- ⑥
	{ config_id = 1025011, name = "ENTER_REGION_25011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25011", action = "action_EVENT_ENTER_REGION_25011", trigger_count = 0 },
	-- ⑦
	{ config_id = 1025012, name = "ENTER_REGION_25012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25012", action = "action_EVENT_ENTER_REGION_25012", trigger_count = 0 },
	-- ①
	{ config_id = 1025020, name = "ENTER_REGION_25020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25020", action = "action_EVENT_ENTER_REGION_25020", trigger_count = 0 },
	{ config_id = 1025022, name = "QUEST_START_25022", event = EventType.EVENT_QUEST_START, source = "7902702", condition = "", action = "action_EVENT_QUEST_START_25022", trigger_count = 0 },
	{ config_id = 1025023, name = "QUEST_START_25023", event = EventType.EVENT_QUEST_START, source = "7902712", condition = "", action = "action_EVENT_QUEST_START_25023", trigger_count = 0 },
	-- ②
	{ config_id = 1025026, name = "ENTER_REGION_25026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25026", action = "action_EVENT_ENTER_REGION_25026", trigger_count = 0 },
	{ config_id = 1025027, name = "ENTER_REGION_25027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25027", action = "action_EVENT_ENTER_REGION_25027", trigger_count = 0 },
	-- ③
	{ config_id = 1025030, name = "ENTER_REGION_25030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25030", action = "action_EVENT_ENTER_REGION_25030", trigger_count = 0 },
	-- ④
	{ config_id = 1025031, name = "ENTER_REGION_25031", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25031", action = "action_EVENT_ENTER_REGION_25031", trigger_count = 0 },
	-- ⑤
	{ config_id = 1025033, name = "ENTER_REGION_25033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25033", action = "action_EVENT_ENTER_REGION_25033", trigger_count = 0 },
	-- ⑥
	{ config_id = 1025034, name = "ENTER_REGION_25034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25034", action = "action_EVENT_ENTER_REGION_25034", trigger_count = 0 },
	-- ⑦
	{ config_id = 1025037, name = "ENTER_REGION_25037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25037", action = "action_EVENT_ENTER_REGION_25037", trigger_count = 0 },
	-- ②
	{ config_id = 1025047, name = "ENTER_REGION_25047", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25047", action = "action_EVENT_ENTER_REGION_25047", trigger_count = 0 },
	-- ③
	{ config_id = 1025050, name = "ENTER_REGION_25050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25050", action = "action_EVENT_ENTER_REGION_25050", trigger_count = 0 },
	-- ④
	{ config_id = 1025052, name = "ENTER_REGION_25052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25052", action = "action_EVENT_ENTER_REGION_25052", trigger_count = 0 },
	-- ⑤
	{ config_id = 1025054, name = "ENTER_REGION_25054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25054", action = "action_EVENT_ENTER_REGION_25054", trigger_count = 0 },
	-- ⑥
	{ config_id = 1025059, name = "ENTER_REGION_25059", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25059", action = "action_EVENT_ENTER_REGION_25059", trigger_count = 0 },
	-- ⑦
	{ config_id = 1025060, name = "ENTER_REGION_25060", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25060", action = "action_EVENT_ENTER_REGION_25060", trigger_count = 0 },
	{ config_id = 1025064, name = "ENTER_REGION_25064", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25064", action = "action_EVENT_ENTER_REGION_25064", trigger_count = 0 },
	{ config_id = 1025088, name = "QUEST_START_25088", event = EventType.EVENT_QUEST_START, source = "7902706", condition = "", action = "action_EVENT_QUEST_START_25088" }
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
	end_suite = 5,
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
		gadgets = { 25024 },
		regions = { },
		triggers = { "QUEST_START_25022", "QUEST_START_25023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 25001, 25003, 25004, 25005, 25006, 25013, 25014, 25015, 25016, 25017, 25018, 25019, 25021 },
		regions = { 25007, 25008, 25009, 25010, 25011, 25012, 25020, 25027 },
		triggers = { "ENTER_REGION_25007", "ENTER_REGION_25008", "ENTER_REGION_25009", "ENTER_REGION_25010", "ENTER_REGION_25011", "ENTER_REGION_25012", "ENTER_REGION_25020", "ENTER_REGION_25027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 25028, 25032, 25035, 25038, 25045, 25048, 25049, 25051, 25053, 25055, 25056, 25057, 25058 },
		regions = { 25026, 25030, 25031, 25033, 25034, 25037, 25064 },
		triggers = { "ENTER_REGION_25026", "ENTER_REGION_25030", "ENTER_REGION_25031", "ENTER_REGION_25033", "ENTER_REGION_25034", "ENTER_REGION_25037", "ENTER_REGION_25064" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 25065, 25066, 25067, 25068, 25069, 25070, 25071, 25072, 25082 },
		regions = { 25047, 25050, 25052, 25054, 25059, 25060 },
		triggers = { "ENTER_REGION_25047", "ENTER_REGION_25050", "ENTER_REGION_25052", "ENTER_REGION_25054", "ENTER_REGION_25059", "ENTER_REGION_25060", "QUEST_START_25088" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_25007(context, evt)
	if evt.param1 ~= 25007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25007(context, evt)
	-- 将configid为 25004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25008(context, evt)
	if evt.param1 ~= 25008 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25008(context, evt)
	-- 将configid为 25003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25009(context, evt)
	if evt.param1 ~= 25009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25009(context, evt)
	-- 将configid为 25013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25010(context, evt)
	if evt.param1 ~= 25010 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25010(context, evt)
	-- 将configid为 25019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25011(context, evt)
	if evt.param1 ~= 25011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25011(context, evt)
	-- 将configid为 25006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25012(context, evt)
	if evt.param1 ~= 25012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25012(context, evt)
	-- 将configid为 25015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25020(context, evt)
	if evt.param1 ~= 25020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25020(context, evt)
	-- 将configid为 25001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_25022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004025, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_25023(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004025, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25026(context, evt)
	if evt.param1 ~= 25026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25026(context, evt)
	-- 将configid为 25032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25027(context, evt)
	if evt.param1 ~= 25027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004025, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25030(context, evt)
	if evt.param1 ~= 25030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25030(context, evt)
	-- 将configid为 25035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004025, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25031(context, evt)
	if evt.param1 ~= 25031 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25031(context, evt)
	-- 将configid为 25038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25033(context, evt)
	if evt.param1 ~= 25033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25033(context, evt)
	-- 将configid为 25051 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25051, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25053 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25053, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25034(context, evt)
	if evt.param1 ~= 25034 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25034(context, evt)
	-- 将configid为 25048 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25048, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25037(context, evt)
	if evt.param1 ~= 25037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25037(context, evt)
	-- 将configid为 25045 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25045, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25056 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25056, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25057 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25057, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25058 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25058, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25047(context, evt)
	if evt.param1 ~= 25047 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25047(context, evt)
	-- 将configid为 25065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25050(context, evt)
	if evt.param1 ~= 25050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25050(context, evt)
	-- 将configid为 25066 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25066, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25052(context, evt)
	if evt.param1 ~= 25052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25052(context, evt)
	-- 将configid为 25067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25054(context, evt)
	if evt.param1 ~= 25054 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25054(context, evt)
	-- 将configid为 25069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25059(context, evt)
	if evt.param1 ~= 25059 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25059(context, evt)
	-- 将configid为 25070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为25002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 25002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25060(context, evt)
	if evt.param1 ~= 25060 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25060(context, evt)
	-- 将configid为 25071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25072 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25072, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25064(context, evt)
	if evt.param1 ~= 25064 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25064(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004025, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_25088(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004025, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end