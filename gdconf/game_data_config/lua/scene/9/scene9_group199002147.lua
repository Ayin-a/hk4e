-- 基础信息
local base_info = {
	group_id = 199002147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147010, monster_id = 22010401, pos = { x = 353.847, y = 127.729, z = -261.365 }, rot = { x = 0.000, y = 229.395, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 401 },
	{ config_id = 147011, monster_id = 21011001, pos = { x = 351.543, y = 126.019, z = -261.465 }, rot = { x = 0.000, y = 220.264, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147012, monster_id = 21011001, pos = { x = 353.744, y = 126.111, z = -263.875 }, rot = { x = 0.000, y = 224.995, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147018, monster_id = 22010401, pos = { x = 327.089, y = 127.729, z = -235.382 }, rot = { x = 0.000, y = 229.395, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 401 },
	{ config_id = 147020, monster_id = 21010401, pos = { x = 176.787, y = 123.785, z = -411.777 }, rot = { x = 0.000, y = 228.758, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 402, area_id = 401 },
	{ config_id = 147021, monster_id = 21010401, pos = { x = 178.272, y = 123.673, z = -413.174 }, rot = { x = 0.000, y = 228.758, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 402, area_id = 401 },
	{ config_id = 147048, monster_id = 21010401, pos = { x = 98.826, y = 123.619, z = -476.683 }, rot = { x = 0.000, y = 213.909, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 147049, monster_id = 21010401, pos = { x = 132.681, y = 123.768, z = -465.960 }, rot = { x = 0.000, y = 262.461, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 401 },
	{ config_id = 147083, monster_id = 21010501, pos = { x = 191.209, y = 123.691, z = -385.385 }, rot = { x = 0.000, y = 196.306, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147084, monster_id = 21010501, pos = { x = 255.261, y = 123.732, z = -344.710 }, rot = { x = 0.000, y = 234.775, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147085, monster_id = 21010501, pos = { x = 251.303, y = 123.600, z = -326.942 }, rot = { x = 0.000, y = 205.921, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147086, monster_id = 21011001, pos = { x = 287.025, y = 123.651, z = -302.121 }, rot = { x = 0.000, y = 228.329, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147087, monster_id = 21010401, pos = { x = 309.090, y = 123.680, z = -219.577 }, rot = { x = 0.000, y = 201.239, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 402, area_id = 401 },
	{ config_id = 147088, monster_id = 21010401, pos = { x = 369.714, y = 123.721, z = -279.136 }, rot = { x = 0.000, y = 242.466, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 402, area_id = 401 },
	{ config_id = 147089, monster_id = 21011001, pos = { x = 324.786, y = 126.019, z = -235.482 }, rot = { x = 0.000, y = 220.264, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 },
	{ config_id = 147090, monster_id = 21011001, pos = { x = 326.987, y = 126.111, z = -237.891 }, rot = { x = 0.000, y = 224.995, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 32, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147001, gadget_id = 70950092, pos = { x = 178.136, y = 120.000, z = -411.837 }, rot = { x = 0.000, y = 7.114, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147002, gadget_id = 70290056, pos = { x = 117.342, y = 120.000, z = -461.489 }, rot = { x = 0.000, y = 10.896, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147003, gadget_id = 70290056, pos = { x = 103.362, y = 120.000, z = -487.623 }, rot = { x = 0.000, y = 3.782, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147004, gadget_id = 70290057, pos = { x = 80.838, y = 120.000, z = -469.843 }, rot = { x = 0.000, y = 134.367, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147005, gadget_id = 70290057, pos = { x = 117.475, y = 120.000, z = -502.795 }, rot = { x = 0.000, y = 143.456, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147006, gadget_id = 70290057, pos = { x = 120.666, y = 120.000, z = -433.659 }, rot = { x = 0.000, y = 335.821, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147007, gadget_id = 70290057, pos = { x = 156.665, y = 120.000, z = -464.807 }, rot = { x = 0.000, y = 311.381, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147008, gadget_id = 70290061, pos = { x = 168.993, y = 120.000, z = -407.801 }, rot = { x = 0.000, y = 184.191, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147009, gadget_id = 70290061, pos = { x = 180.939, y = 120.000, z = -424.555 }, rot = { x = 0.000, y = 276.997, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147013, gadget_id = 70290059, pos = { x = 354.986, y = 120.000, z = -260.156 }, rot = { x = 0.000, y = 2.990, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147014, gadget_id = 70350277, pos = { x = 84.449, y = 120.000, z = -495.713 }, rot = { x = 0.000, y = 54.075, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147015, gadget_id = 70290056, pos = { x = 136.299, y = 120.000, z = -430.344 }, rot = { x = 0.000, y = 10.896, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147016, gadget_id = 70290056, pos = { x = 133.127, y = 120.000, z = -485.747 }, rot = { x = 0.000, y = 10.896, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147017, gadget_id = 70290061, pos = { x = 93.361, y = 120.000, z = -454.200 }, rot = { x = 0.000, y = 319.479, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147019, gadget_id = 70290057, pos = { x = 345.550, y = 120.000, z = -252.745 }, rot = { x = 0.000, y = 229.215, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147022, gadget_id = 70290056, pos = { x = 168.322, y = 120.000, z = -442.727 }, rot = { x = 0.000, y = 10.896, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147023, gadget_id = 70950087, pos = { x = 176.352, y = 120.000, z = -409.403 }, rot = { x = 0.000, y = 7.114, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147024, gadget_id = 70950087, pos = { x = 174.599, y = 120.000, z = -412.017 }, rot = { x = 0.000, y = 7.114, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147025, gadget_id = 70950087, pos = { x = 178.154, y = 120.000, z = -415.089 }, rot = { x = 0.000, y = 7.114, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147026, gadget_id = 70950087, pos = { x = 179.512, y = 120.000, z = -414.134 }, rot = { x = 0.000, y = 7.114, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147027, gadget_id = 70350258, pos = { x = 188.556, y = 120.000, z = -401.158 }, rot = { x = 0.000, y = 44.439, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147028, gadget_id = 70350258, pos = { x = 236.059, y = 120.000, z = -352.438 }, rot = { x = 0.000, y = 44.962, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147029, gadget_id = 70950087, pos = { x = 342.804, y = 120.000, z = -252.630 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147030, gadget_id = 70950087, pos = { x = 344.311, y = 120.000, z = -254.170 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147031, gadget_id = 70950087, pos = { x = 341.644, y = 120.000, z = -248.836 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147032, gadget_id = 70290057, pos = { x = 336.002, y = 120.000, z = -243.717 }, rot = { x = 0.000, y = 44.466, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147033, gadget_id = 70950087, pos = { x = 338.725, y = 120.000, z = -247.698 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147034, gadget_id = 70950087, pos = { x = 332.609, y = 120.000, z = -243.206 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147039, gadget_id = 70290057, pos = { x = 318.341, y = 120.000, z = -226.013 }, rot = { x = 0.000, y = 44.466, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147040, gadget_id = 70290057, pos = { x = 300.531, y = 120.000, z = -210.184 }, rot = { x = 0.000, y = 42.752, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147041, gadget_id = 70290057, pos = { x = 362.792, y = 120.000, z = -269.816 }, rot = { x = 0.000, y = 229.215, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147042, gadget_id = 70290057, pos = { x = 379.780, y = 120.000, z = -286.024 }, rot = { x = 0.000, y = 231.575, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147043, gadget_id = 70950092, pos = { x = 99.957, y = 120.000, z = -475.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147044, gadget_id = 70290059, pos = { x = 328.072, y = 120.000, z = -234.635 }, rot = { x = 0.000, y = 2.990, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147045, gadget_id = 70950092, pos = { x = 309.924, y = 120.000, z = -218.631 }, rot = { x = 0.000, y = 2.990, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147046, gadget_id = 70950092, pos = { x = 371.234, y = 120.000, z = -278.402 }, rot = { x = 0.000, y = 2.990, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147047, gadget_id = 70950092, pos = { x = 133.827, y = 120.000, z = -466.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147050, gadget_id = 70290057, pos = { x = 148.225, y = 120.000, z = -431.481 }, rot = { x = 0.000, y = 50.468, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147051, gadget_id = 70290057, pos = { x = 156.021, y = 120.000, z = -439.751 }, rot = { x = 0.000, y = 232.903, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147052, gadget_id = 70950087, pos = { x = 152.778, y = 120.000, z = -435.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147053, gadget_id = 70950087, pos = { x = 151.109, y = 120.000, z = -435.734 }, rot = { x = 0.000, y = 264.242, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147061, gadget_id = 70350258, pos = { x = 353.473, y = 120.000, z = -235.666 }, rot = { x = 0.000, y = 45.145, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147062, gadget_id = 70950087, pos = { x = 321.064, y = 120.000, z = -229.994 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147063, gadget_id = 70950087, pos = { x = 314.949, y = 120.000, z = -225.502 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147064, gadget_id = 70950087, pos = { x = 360.045, y = 120.000, z = -269.701 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147065, gadget_id = 70950087, pos = { x = 361.553, y = 120.000, z = -271.241 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147066, gadget_id = 70950087, pos = { x = 358.885, y = 120.000, z = -265.907 }, rot = { x = 0.000, y = 0.183, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147067, gadget_id = 70290056, pos = { x = 291.648, y = 120.000, z = -313.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147069, gadget_id = 70290056, pos = { x = 282.947, y = 120.000, z = -291.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147070, gadget_id = 70290056, pos = { x = 170.755, y = 120.000, z = -346.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147071, gadget_id = 70290056, pos = { x = 213.260, y = 120.000, z = -398.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147072, gadget_id = 70290056, pos = { x = 249.025, y = 120.000, z = -352.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147073, gadget_id = 70290056, pos = { x = 214.680, y = 120.000, z = -362.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 147074, gadget_id = 70950092, pos = { x = 256.638, y = 120.000, z = -344.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147075, gadget_id = 70950092, pos = { x = 288.218, y = 120.000, z = -301.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147076, gadget_id = 70950092, pos = { x = 191.306, y = 120.000, z = -384.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147077, gadget_id = 70950092, pos = { x = 251.547, y = 120.000, z = -325.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147079, gadget_id = 70950087, pos = { x = 285.491, y = 120.000, z = -299.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147080, gadget_id = 70950087, pos = { x = 287.622, y = 120.000, z = -304.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147081, gadget_id = 70950087, pos = { x = 290.028, y = 120.000, z = -303.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147082, gadget_id = 70950087, pos = { x = 285.238, y = 120.000, z = -302.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 147091, gadget_id = 70350258, pos = { x = 385.828, y = 120.000, z = -205.187 }, rot = { x = 0.000, y = 44.962, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 147035, shape = RegionShape.SPHERE, radius = 80, pos = { x = 446.216, y = 120.000, z = -88.725 }, area_id = 402 },
	-- 第一段reminder
	{ config_id = 147037, shape = RegionShape.SPHERE, radius = 40, pos = { x = 88.555, y = 120.000, z = -489.014 }, area_id = 401 },
	-- 第二段reminder
	{ config_id = 147038, shape = RegionShape.SPHERE, radius = 200, pos = { x = 291.514, y = 120.000, z = -267.365 }, area_id = 401 },
	{ config_id = 147099, shape = RegionShape.POLYGON, pos = { x = 175.942, y = 121.037, z = -408.270 }, height = 47.264, point_array = { { x = -9.786, y = -337.170 }, { x = 79.870, y = -232.172 }, { x = 361.671, y = -504.072 }, { x = 262.133, y = -584.369 } }, area_id = 401 },
	{ config_id = 147100, shape = RegionShape.POLYGON, pos = { x = 251.447, y = 120.594, z = -337.987 }, height = 41.187, point_array = { { x = 126.874, y = -265.655 }, { x = 184.347, y = -215.356 }, { x = 376.021, y = -400.418 }, { x = 327.736, y = -460.618 } }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1147035, name = "ENTER_REGION_147035", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147035", action = "action_EVENT_ENTER_REGION_147035", trigger_count = 0 },
	-- 注目镜头
	{ config_id = 1147036, name = "QUEST_START_147036", event = EventType.EVENT_QUEST_START, source = "7902705", condition = "", action = "action_EVENT_QUEST_START_147036", trigger_count = 0 },
	-- 第一段reminder
	{ config_id = 1147037, name = "ENTER_REGION_147037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147037", action = "action_EVENT_ENTER_REGION_147037" },
	-- 第二段reminder
	{ config_id = 1147038, name = "ENTER_REGION_147038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147038", action = "action_EVENT_ENTER_REGION_147038" },
	{ config_id = 1147099, name = "ENTER_REGION_147099", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147099", action = "action_EVENT_ENTER_REGION_147099", trigger_count = 0 },
	{ config_id = 1147100, name = "ENTER_REGION_147100", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147100", action = "action_EVENT_ENTER_REGION_147100", trigger_count = 0 }
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
		monsters = { 147020, 147021, 147048, 147049 },
		gadgets = { 147001, 147002, 147003, 147004, 147005, 147006, 147007, 147008, 147009, 147014, 147015, 147016, 147017, 147022, 147023, 147024, 147025, 147026, 147043, 147047, 147050, 147051, 147052, 147053, 147070, 147071 },
		regions = { 147035, 147037, 147038, 147099 },
		triggers = { "ENTER_REGION_147035", "QUEST_START_147036", "ENTER_REGION_147037", "ENTER_REGION_147038", "ENTER_REGION_147099" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 147083, 147084, 147085, 147086 },
		gadgets = { 147027, 147028, 147067, 147069, 147072, 147073, 147074, 147075, 147076, 147077, 147079, 147080, 147081, 147082 },
		regions = { 147100 },
		triggers = { "ENTER_REGION_147100" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 147010, 147011, 147012, 147018, 147087, 147088, 147089, 147090 },
		gadgets = { 147013, 147019, 147029, 147030, 147031, 147032, 147033, 147034, 147039, 147040, 147041, 147042, 147044, 147045, 147046, 147061, 147062, 147063, 147064, 147065, 147066, 147091 },
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
function condition_EVENT_ENTER_REGION_147035(context, evt)
	if evt.param1 ~= 147035 then return false end
	
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
function action_EVENT_ENTER_REGION_147035(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902705finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_147036(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=522.5, y=180.88, z=-99.48}，持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=522.5, y=180.88, z=-99.48}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 6,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_147037(context, evt)
	if evt.param1 ~= 147037 then return false end
	
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
function action_EVENT_ENTER_REGION_147037(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=88.55505,y=120,z=-489.0142}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111008, pos, 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_147038(context, evt)
	if evt.param1 ~= 147038 then return false end
	
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
function action_EVENT_ENTER_REGION_147038(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=291.5137,y=120,z=-267.3651}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111012, pos, 200) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_147099(context, evt)
	if evt.param1 ~= 147099 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147099(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_147100(context, evt)
	if evt.param1 ~= 147100 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147100(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002147, 3)
	
	return 0
end