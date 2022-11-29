-- 基础信息
local base_info = {
	group_id = 220165005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5021, monster_id = 26050901, pos = { x = 276.988, y = 25.790, z = 218.039 }, rot = { x = 0.000, y = 40.561, z = 0.000 }, level = 1 },
	{ config_id = 5031, monster_id = 21020201, pos = { x = 869.250, y = 25.025, z = 215.325 }, rot = { x = 0.000, y = 88.075, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5032, monster_id = 21020201, pos = { x = 872.764, y = 25.025, z = 222.079 }, rot = { x = 0.000, y = 154.141, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5033, monster_id = 21010101, pos = { x = 870.058, y = 25.025, z = 217.422 }, rot = { x = 0.000, y = 125.513, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5034, monster_id = 21010101, pos = { x = 869.932, y = 25.024, z = 219.936 }, rot = { x = 0.000, y = 125.513, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5035, monster_id = 21010101, pos = { x = 871.895, y = 25.025, z = 220.517 }, rot = { x = 0.000, y = 125.513, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70290527, pos = { x = 230.812, y = 17.926, z = 175.890 }, rot = { x = 0.000, y = 211.824, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70320042, pos = { x = 237.466, y = 12.916, z = 180.934 }, rot = { x = 0.000, y = 356.320, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 5003, gadget_id = 70320042, pos = { x = 231.001, y = 12.834, z = 184.955 }, rot = { x = 0.000, y = 71.454, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 5004, gadget_id = 70290196, pos = { x = 232.163, y = 12.841, z = 183.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70290577, pos = { x = 246.510, y = 23.621, z = 224.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70290480, pos = { x = 309.888, y = 14.785, z = 229.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 6, start_route = false },
	{ config_id = 5007, gadget_id = 70360001, pos = { x = 310.537, y = 17.776, z = 229.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, gadget_id = 70290577, pos = { x = 245.633, y = 15.980, z = 200.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 1下
	{ config_id = 5010, gadget_id = 70320054, pos = { x = 279.496, y = 3.581, z = 214.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 1上
	{ config_id = 5011, gadget_id = 70320076, pos = { x = 280.055, y = 70.198, z = 218.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 2下
	{ config_id = 5012, gadget_id = 70320054, pos = { x = 892.951, y = 10.782, z = 213.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	-- 2上
	{ config_id = 5013, gadget_id = 70320076, pos = { x = 890.997, y = 87.024, z = 217.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 5014, gadget_id = 70211012, pos = { x = 279.492, y = 26.088, z = 222.408 }, rot = { x = 0.000, y = 57.576, z = 0.000 }, level = 1, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 5015, gadget_id = 70320081, pos = { x = 299.753, y = 7.166, z = 201.111 }, rot = { x = 2.444, y = 15.838, z = 348.795 }, level = 1 },
	{ config_id = 5016, gadget_id = 70360001, pos = { x = 299.993, y = 8.481, z = 201.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, gadget_id = 70220103, pos = { x = 312.491, y = 20.107, z = 220.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, gadget_id = 70320081, pos = { x = 857.199, y = 24.661, z = 224.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70360001, pos = { x = 857.291, y = 26.471, z = 224.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5030, gadget_id = 70950156, pos = { x = 279.192, y = 26.076, z = 222.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5036, gadget_id = 70950156, pos = { x = 875.619, y = 25.030, z = 216.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5040, gadget_id = 70290527, pos = { x = 818.074, y = 18.846, z = 263.636 }, rot = { x = 0.000, y = 311.758, z = 0.000 }, level = 1 },
	{ config_id = 5047, gadget_id = 70290577, pos = { x = 849.389, y = 19.518, z = 229.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5054, gadget_id = 70320058, pos = { x = 922.470, y = 38.760, z = 230.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5055, gadget_id = 70320058, pos = { x = 906.050, y = 58.420, z = 185.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5056, gadget_id = 70320058, pos = { x = 868.940, y = 92.230, z = 198.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5057, gadget_id = 70320058, pos = { x = 872.357, y = 45.575, z = 188.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5058, gadget_id = 70320058, pos = { x = 863.850, y = 50.980, z = 241.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5059, gadget_id = 70320058, pos = { x = 901.710, y = 48.770, z = 254.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5060, gadget_id = 70320058, pos = { x = 893.890, y = 23.830, z = 205.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5061, gadget_id = 70320057, pos = { x = 897.870, y = 23.040, z = 223.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5062, gadget_id = 70320053, pos = { x = 898.410, y = 17.730, z = 211.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5063, gadget_id = 70320053, pos = { x = 896.180, y = 15.760, z = 225.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5064, gadget_id = 70320053, pos = { x = 916.850, y = 36.430, z = 200.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5065, gadget_id = 70320053, pos = { x = 858.770, y = 47.845, z = 243.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5066, gadget_id = 70320053, pos = { x = 902.600, y = 21.970, z = 212.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5067, gadget_id = 70320058, pos = { x = 316.070, y = 52.612, z = 215.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5068, gadget_id = 70320058, pos = { x = 306.578, y = 54.692, z = 205.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5069, gadget_id = 70320058, pos = { x = 260.810, y = 90.402, z = 184.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5070, gadget_id = 70320058, pos = { x = 272.420, y = 38.232, z = 193.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5071, gadget_id = 70320058, pos = { x = 274.501, y = 46.842, z = 239.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5072, gadget_id = 70320058, pos = { x = 309.980, y = 42.252, z = 231.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5073, gadget_id = 70320058, pos = { x = 288.740, y = 25.192, z = 205.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5074, gadget_id = 70320057, pos = { x = 297.180, y = 25.282, z = 219.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5075, gadget_id = 70320053, pos = { x = 295.140, y = 21.332, z = 217.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5076, gadget_id = 70320053, pos = { x = 292.750, y = 21.372, z = 232.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5077, gadget_id = 70320053, pos = { x = 308.700, y = 38.082, z = 194.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5078, gadget_id = 70320053, pos = { x = 269.875, y = 47.002, z = 242.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5079, gadget_id = 70320053, pos = { x = 299.490, y = 24.312, z = 212.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5115, gadget_id = 70310016, pos = { x = 886.543, y = 24.472, z = 212.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 5116, gadget_id = 70310016, pos = { x = 293.413, y = 25.283, z = 219.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
}

-- 区域
regions = {
	-- 反转1
	{ config_id = 5022, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2
	{ config_id = 5025, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转2目标点
	{ config_id = 5042, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1mubiaodian
	{ config_id = 5043, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 刷怪2
	{ config_id = 5051, shape = RegionShape.SPHERE, radius = 12, pos = { x = 870.399, y = 25.025, z = 218.069 } },
	-- 反转1复活点
	{ config_id = 5052, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5053, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 瀑布
	{ config_id = 5088, shape = RegionShape.SPHERE, radius = 100, pos = { x = 876.561, y = 26.089, z = 217.100 } },
	-- 瀑布
	{ config_id = 5089, shape = RegionShape.SPHERE, radius = 100, pos = { x = 279.327, y = 26.089, z = 222.641 } },
	-- 反转1第一次进入特写
	{ config_id = 5090, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转1mubiaodian
	{ config_id = 5091, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2目标点
	{ config_id = 5093, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1reminder
	{ config_id = 5094, shape = RegionShape.SPHERE, radius = 10, pos = { x = 294.649, y = 25.982, z = 214.002 } },
	-- 第一次进入目标点
	{ config_id = 5095, shape = RegionShape.SPHERE, radius = 5, pos = { x = 322.580, y = 17.753, z = 235.131 } },
	-- 反转1选项
	{ config_id = 5096, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转1复活点
	{ config_id = 5099, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5100, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5101, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5102, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5103, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5104, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5105, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5106, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5107, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5108, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5109, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5110, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5111, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5112, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 反转1复活点
	{ config_id = 5113, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 反转2复活点
	{ config_id = 5114, shape = RegionShape.SPHERE, radius = 100, pos = { x = 869.250, y = 25.025, z = 215.325 } },
	-- 到达1目标点
	{ config_id = 5118, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } },
	-- 到达2目标点
	{ config_id = 5119, shape = RegionShape.SPHERE, radius = 100, pos = { x = 877.640, y = 25.033, z = 216.437 } },
	-- 反转1mubiaodian
	{ config_id = 5120, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } }
}

-- 触发器
triggers = {
	{ config_id = 1005009, name = "GADGET_CREATE_5009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5009", action = "action_EVENT_GADGET_CREATE_5009" },
	{ config_id = 1005020, name = "SELECT_OPTION_5020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5020", action = "action_EVENT_SELECT_OPTION_5020" },
	-- 反转1
	{ config_id = 1005022, name = "ENTER_REGION_5022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5022", action = "action_EVENT_ENTER_REGION_5022", trigger_count = 0 },
	-- 到达1
	{ config_id = 1005023, name = "PLATFORM_ARRIVAL_5023", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5023", action = "action_EVENT_PLATFORM_ARRIVAL_5023", trigger_count = 0 },
	-- 传送门1
	{ config_id = 1005024, name = "PLATFORM_ARRIVAL_5024", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5024", action = "action_EVENT_PLATFORM_ARRIVAL_5024", trigger_count = 0 },
	-- 反转2
	{ config_id = 1005025, name = "ENTER_REGION_5025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5025", action = "action_EVENT_ENTER_REGION_5025", trigger_count = 0 },
	-- 到达2
	{ config_id = 1005026, name = "PLATFORM_ARRIVAL_5026", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5026", action = "action_EVENT_PLATFORM_ARRIVAL_5026", trigger_count = 0 },
	-- 传送门2
	{ config_id = 1005027, name = "PLATFORM_ARRIVAL_5027", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5027", action = "action_EVENT_PLATFORM_ARRIVAL_5027", trigger_count = 0 },
	-- 刷怪
	{ config_id = 1005028, name = "MONSTER_BATTLE_5028", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_5028", action = "action_EVENT_MONSTER_BATTLE_5028" },
	{ config_id = 1005029, name = "ANY_MONSTER_DIE_5029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5029", action = "action_EVENT_ANY_MONSTER_DIE_5029" },
	{ config_id = 1005037, name = "ANY_MONSTER_DIE_5037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5037", action = "action_EVENT_ANY_MONSTER_DIE_5037" },
	-- 宝箱0
	{ config_id = 1005038, name = "ANY_MONSTER_DIE_5038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5038", action = "action_EVENT_ANY_MONSTER_DIE_5038" },
	{ config_id = 1005039, name = "GADGET_CREATE_5039", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5039", action = "action_EVENT_GADGET_CREATE_5039" },
	{ config_id = 1005041, name = "SELECT_OPTION_5041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5041", action = "action_EVENT_SELECT_OPTION_5041" },
	-- 反转2目标点
	{ config_id = 1005042, name = "ENTER_REGION_5042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5042", action = "action_EVENT_ENTER_REGION_5042", trigger_count = 0 },
	-- 反转1mubiaodian
	{ config_id = 1005043, name = "ENTER_REGION_5043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5043", action = "action_EVENT_ENTER_REGION_5043", trigger_count = 0 },
	{ config_id = 1005044, name = "SELECT_OPTION_5044", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5044", action = "action_EVENT_SELECT_OPTION_5044" },
	{ config_id = 1005045, name = "VARIABLE_CHANGE_5045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5045", action = "action_EVENT_VARIABLE_CHANGE_5045" },
	-- 反转1reminder
	{ config_id = 1005046, name = "TIME_AXIS_PASS_5046", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5046", action = "action_EVENT_TIME_AXIS_PASS_5046" },
	{ config_id = 1005048, name = "GADGET_STATE_CHANGE_5048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5048", action = "action_EVENT_GADGET_STATE_CHANGE_5048" },
	{ config_id = 1005049, name = "GADGET_STATE_CHANGE_5049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5049", action = "action_EVENT_GADGET_STATE_CHANGE_5049" },
	{ config_id = 1005050, name = "VARIABLE_CHANGE_5050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5050", action = "action_EVENT_VARIABLE_CHANGE_5050" },
	-- 刷怪2
	{ config_id = 1005051, name = "ENTER_REGION_5051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5051", action = "action_EVENT_ENTER_REGION_5051" },
	-- 反转1复活点
	{ config_id = 1005052, name = "ENTER_REGION_5052", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5052", action = "action_EVENT_ENTER_REGION_5052" },
	-- 反转2复活点
	{ config_id = 1005053, name = "ENTER_REGION_5053", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5053", action = "action_EVENT_ENTER_REGION_5053" },
	-- 瀑布
	{ config_id = 1005080, name = "TIME_AXIS_PASS_5080", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5080", action = "action_EVENT_TIME_AXIS_PASS_5080", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1005081, name = "PLATFORM_ARRIVAL_5081", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5081", action = "action_EVENT_PLATFORM_ARRIVAL_5081", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1005082, name = "TIME_AXIS_PASS_5082", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5082", action = "action_EVENT_TIME_AXIS_PASS_5082", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1005083, name = "PLATFORM_ARRIVAL_5083", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5083", action = "action_EVENT_PLATFORM_ARRIVAL_5083", trigger_count = 0 },
	-- 移动平台
	{ config_id = 1005084, name = "PLATFORM_ARRIVAL_5084", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5084", action = "action_EVENT_PLATFORM_ARRIVAL_5084", trigger_count = 0 },
	-- 移动平台
	{ config_id = 1005085, name = "TIME_AXIS_PASS_5085", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5085", action = "action_EVENT_TIME_AXIS_PASS_5085", trigger_count = 0 },
	-- 移动平台
	{ config_id = 1005086, name = "PLATFORM_ARRIVAL_5086", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5086", action = "action_EVENT_PLATFORM_ARRIVAL_5086", trigger_count = 0 },
	-- 移动平台
	{ config_id = 1005087, name = "TIME_AXIS_PASS_5087", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5087", action = "action_EVENT_TIME_AXIS_PASS_5087", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1005088, name = "ENTER_REGION_5088", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5088", action = "action_EVENT_ENTER_REGION_5088", trigger_count = 0 },
	-- 瀑布
	{ config_id = 1005089, name = "ENTER_REGION_5089", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5089", action = "action_EVENT_ENTER_REGION_5089", trigger_count = 0 },
	-- 反转1第一次进入特写
	{ config_id = 1005090, name = "ENTER_REGION_5090", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5090", action = "action_EVENT_ENTER_REGION_5090", trigger_count = 0 },
	-- 反转1mubiaodian
	{ config_id = 1005091, name = "ENTER_REGION_5091", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5091", action = "action_EVENT_ENTER_REGION_5091", trigger_count = 0 },
	-- 到达1目标点
	{ config_id = 1005092, name = "PLATFORM_ARRIVAL_5092", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5092", action = "action_EVENT_PLATFORM_ARRIVAL_5092", trigger_count = 0 },
	-- 反转2目标点
	{ config_id = 1005093, name = "ENTER_REGION_5093", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5093", action = "action_EVENT_ENTER_REGION_5093", trigger_count = 0 },
	-- 反转1reminder
	{ config_id = 1005094, name = "ENTER_REGION_5094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5094", action = "action_EVENT_ENTER_REGION_5094" },
	-- 第一次进入目标点
	{ config_id = 1005095, name = "ENTER_REGION_5095", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5095", action = "action_EVENT_ENTER_REGION_5095" },
	-- 反转1选项
	{ config_id = 1005096, name = "ENTER_REGION_5096", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5096", action = "action_EVENT_ENTER_REGION_5096", trigger_count = 0 },
	-- 到达1reminder
	{ config_id = 1005097, name = "PLATFORM_ARRIVAL_5097", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_5097", action = "action_EVENT_PLATFORM_ARRIVAL_5097", trigger_count = 0 },
	-- 机关选项
	{ config_id = 1005098, name = "GADGET_CREATE_5098", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5098", action = "action_EVENT_GADGET_CREATE_5098" },
	-- 反转1复活点
	{ config_id = 1005099, name = "ENTER_REGION_5099", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5099", action = "action_EVENT_ENTER_REGION_5099" },
	-- 反转2复活点
	{ config_id = 1005100, name = "ENTER_REGION_5100", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5100", action = "action_EVENT_ENTER_REGION_5100" },
	-- 反转1复活点
	{ config_id = 1005101, name = "ENTER_REGION_5101", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5101", action = "action_EVENT_ENTER_REGION_5101" },
	-- 反转2复活点
	{ config_id = 1005102, name = "ENTER_REGION_5102", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5102", action = "action_EVENT_ENTER_REGION_5102" },
	-- 反转1复活点
	{ config_id = 1005103, name = "ENTER_REGION_5103", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5103", action = "action_EVENT_ENTER_REGION_5103" },
	-- 反转2复活点
	{ config_id = 1005104, name = "ENTER_REGION_5104", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5104", action = "action_EVENT_ENTER_REGION_5104" },
	-- 反转1复活点
	{ config_id = 1005105, name = "ENTER_REGION_5105", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5105", action = "action_EVENT_ENTER_REGION_5105" },
	-- 反转2复活点
	{ config_id = 1005106, name = "ENTER_REGION_5106", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5106", action = "action_EVENT_ENTER_REGION_5106" },
	-- 反转1复活点
	{ config_id = 1005107, name = "ENTER_REGION_5107", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5107", action = "action_EVENT_ENTER_REGION_5107" },
	-- 反转2复活点
	{ config_id = 1005108, name = "ENTER_REGION_5108", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5108", action = "action_EVENT_ENTER_REGION_5108" },
	-- 反转1复活点
	{ config_id = 1005109, name = "ENTER_REGION_5109", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5109", action = "action_EVENT_ENTER_REGION_5109" },
	-- 反转2复活点
	{ config_id = 1005110, name = "ENTER_REGION_5110", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5110", action = "action_EVENT_ENTER_REGION_5110" },
	-- 反转1复活点
	{ config_id = 1005111, name = "ENTER_REGION_5111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5111", action = "action_EVENT_ENTER_REGION_5111" },
	-- 反转2复活点
	{ config_id = 1005112, name = "ENTER_REGION_5112", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5112", action = "action_EVENT_ENTER_REGION_5112" },
	-- 反转1复活点
	{ config_id = 1005113, name = "ENTER_REGION_5113", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5113", action = "action_EVENT_ENTER_REGION_5113" },
	-- 反转2复活点
	{ config_id = 1005114, name = "ENTER_REGION_5114", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5114", action = "action_EVENT_ENTER_REGION_5114" },
	-- 到达1目标点
	{ config_id = 1005118, name = "ENTER_REGION_5118", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5118", action = "action_EVENT_ENTER_REGION_5118", trigger_count = 0 },
	-- 到达2目标点
	{ config_id = 1005119, name = "ENTER_REGION_5119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5119", action = "action_EVENT_ENTER_REGION_5119", trigger_count = 0 },
	-- 反转1mubiaodian
	{ config_id = 1005120, name = "ENTER_REGION_5120", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5120", action = "action_EVENT_ENTER_REGION_5120", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "updown2", value = 0, no_refresh = false },
	{ config_id = 2, name = "flower", value = 0, no_refresh = false },
	{ config_id = 3, name = "key", value = 0, no_refresh = false },
	{ config_id = 4, name = "door", value = 0, no_refresh = false },
	{ config_id = 5, name = "monster3", value = 0, no_refresh = false },
	{ config_id = 6, name = "monster4", value = 0, no_refresh = false },
	{ config_id = 8, name = "revive2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 5117, shape = RegionShape.SPHERE, radius = 100, pos = { x = 281.059, y = 25.980, z = 223.060 } }
	},
	triggers = {
		{ config_id = 1005117, name = "ENTER_REGION_5117", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5117", action = "action_EVENT_ENTER_REGION_5117", trigger_count = 0 }
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
		gadgets = { 5004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 5021 },
		gadgets = { 5001, 5002, 5003, 5005, 5006, 5007, 5008, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5040, 5047, 5054, 5055, 5056, 5057, 5058, 5059, 5060, 5061, 5062, 5063, 5064, 5065, 5066, 5067, 5068, 5069, 5070, 5071, 5072, 5073, 5074, 5075, 5076, 5077, 5078, 5079, 5115, 5116 },
		regions = { 5022, 5025, 5042, 5043, 5051, 5052, 5053, 5088, 5089, 5090, 5091, 5093, 5094, 5095, 5096, 5099, 5100, 5101, 5102, 5103, 5104, 5105, 5106, 5107, 5108, 5109, 5110, 5111, 5112, 5113, 5114, 5118, 5119, 5120 },
		triggers = { "GADGET_CREATE_5009", "SELECT_OPTION_5020", "ENTER_REGION_5022", "PLATFORM_ARRIVAL_5023", "PLATFORM_ARRIVAL_5024", "ENTER_REGION_5025", "PLATFORM_ARRIVAL_5026", "PLATFORM_ARRIVAL_5027", "MONSTER_BATTLE_5028", "ANY_MONSTER_DIE_5029", "ANY_MONSTER_DIE_5038", "GADGET_CREATE_5039", "SELECT_OPTION_5041", "ENTER_REGION_5042", "ENTER_REGION_5043", "SELECT_OPTION_5044", "VARIABLE_CHANGE_5045", "TIME_AXIS_PASS_5046", "GADGET_STATE_CHANGE_5048", "GADGET_STATE_CHANGE_5049", "VARIABLE_CHANGE_5050", "ENTER_REGION_5051", "ENTER_REGION_5052", "ENTER_REGION_5053", "TIME_AXIS_PASS_5080", "PLATFORM_ARRIVAL_5081", "TIME_AXIS_PASS_5082", "PLATFORM_ARRIVAL_5083", "PLATFORM_ARRIVAL_5084", "TIME_AXIS_PASS_5085", "PLATFORM_ARRIVAL_5086", "TIME_AXIS_PASS_5087", "ENTER_REGION_5088", "ENTER_REGION_5089", "ENTER_REGION_5090", "ENTER_REGION_5091", "PLATFORM_ARRIVAL_5092", "ENTER_REGION_5093", "ENTER_REGION_5094", "ENTER_REGION_5095", "ENTER_REGION_5096", "PLATFORM_ARRIVAL_5097", "GADGET_CREATE_5098", "ENTER_REGION_5099", "ENTER_REGION_5100", "ENTER_REGION_5101", "ENTER_REGION_5102", "ENTER_REGION_5103", "ENTER_REGION_5104", "ENTER_REGION_5105", "ENTER_REGION_5106", "ENTER_REGION_5107", "ENTER_REGION_5108", "ENTER_REGION_5109", "ENTER_REGION_5110", "ENTER_REGION_5111", "ENTER_REGION_5112", "ENTER_REGION_5113", "ENTER_REGION_5114", "ENTER_REGION_5118", "ENTER_REGION_5119", "ENTER_REGION_5120" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 5031, 5032, 5033, 5034, 5035 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 5036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function condition_EVENT_GADGET_CREATE_5009(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165005, 5007, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5020(context, evt)
	-- 判断是gadgetid 5007 option_id 7
	if 5007 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5020(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 220165005 ；指定config：5007；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165005, 5007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5022(context, evt)
	if evt.param1 ~= 5022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown2"为1
	if ScriptLib.GetGroupVariableValue(context, "updown2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5022(context, evt)
	-- 将本组内变量名为 "updown2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "updown2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5010, 3, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5011, 4, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5012, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5013, 2, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	
	
	
	ScriptLib.SetWeatherAreaState(context,10152,0)
	ScriptLib.SetWeatherAreaState(context,10158,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10158) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5023(context, evt)
	-- 判断是gadgetid 为 5010的移动平台，是否到达了3 的点集中的 2 点
	
	if 5010 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5023(context, evt)
	-- 删除指定group： 220165005 ；指定config：5016；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165005, 5016, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	ScriptLib.SetWeatherAreaState(context,10158,0)
	ScriptLib.SetWeatherAreaState(context,10151,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10151) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5024(context, evt)
	-- 判断是gadgetid 为 5012的移动平台，是否到达了1 的点集中的 1 点
	
	if 5012 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"monster3"为1
	if ScriptLib.GetGroupVariableValue(context, "monster3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5024(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165003, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5025(context, evt)
	if evt.param1 ~= 5025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown2"为0
	if ScriptLib.GetGroupVariableValue(context, "updown2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5025(context, evt)
	-- 将本组内变量名为 "updown2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "updown2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5012, 1, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray1111")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5013, 2, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray2222")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5010, 3, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray3333")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false, record_mode = 1}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5011, 4, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray4444")
	  return -1
	end
	
	
	
	
	ScriptLib.SetWeatherAreaState(context,10153,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10153) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5026(context, evt)
	-- 判断是gadgetid 为 5012的移动平台，是否到达了1 的点集中的 2 点
	
	if 5012 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5026(context, evt)
	
	
	
	ScriptLib.SetWeatherAreaState(context,10153,0)
	ScriptLib.SetWeatherAreaState(context,10152,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10152) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5027(context, evt)
	-- 判断是gadgetid 为 5010的移动平台，是否到达了3 的点集中的 1 点
	
	if 5010 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"monster4"为1
	if ScriptLib.GetGroupVariableValue(context, "monster4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5027(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165003, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_5028(context, evt)
	if 5021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_5028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165005, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5029(context, evt)
	--判断死亡怪物的configid是否为 5021
	if evt.param1 ~= 5021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5029(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165005, 4)
	
	-- 将本组内变量名为 "monster3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5037(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5037(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165005, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 18 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165003, 8)
	
	-- 将本组内变量名为 "monster4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5038(context, evt)
	--判断死亡怪物的configid是否为 5021
	if evt.param1 ~= 5021 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5038(context, evt)
	-- 将configid为 5014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5039(context, evt)
	if 5019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5039(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165005, 5019, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5041(context, evt)
	-- 判断是gadgetid 5019 option_id 220
	if 5019 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5041(context, evt)
	-- 将configid为 5018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220165005 ；指定config：5019；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165005, 5019, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "flower" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "flower", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 23 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5042(context, evt)
	if evt.param1 ~= 5042 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5042(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 18 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5043(context, evt)
	if evt.param1 ~= 5043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	-- 判断变量"monster4"为1
	if ScriptLib.GetGroupVariableValue(context, "monster4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5043(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 17 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5044(context, evt)
	-- 判断是gadgetid 5016 option_id 220
	if 5016 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5044(context, evt)
	-- 将configid为 5015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220165005 ；指定config：5016；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220165005, 5016, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "key" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key"为2
	if ScriptLib.GetGroupVariableValue(context, "key") == 2  and ScriptLib.GetGroupVariableValue(context, "flower") == 1 then
			return true
	
	
	else return false
	
	end
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5045(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 19 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5046(context, evt)
	if "timer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5046(context, evt)
	-- 调用提示id为 0 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	ScriptLib.BeginCameraSceneLookWithTemplate(context, 1, {look_configid=0, look_pos = {x = 300.071228,y = 8.276247,z = 200.162689},  follow_type =2, follow_pos = {x=301,y=31.3,z=207},is_broadcast =false, delay = 0, })
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5048(context, evt)
	-- 检测config_id为5002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 5002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5048(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5049(context, evt)
	-- 检测config_id为5003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 5003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5049(context, evt)
	-- 针对当前group内变量名为 "door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "door", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5050(context, evt)
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 201650601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201650601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5051(context, evt)
	if evt.param1 ~= 5051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5051(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165005, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220165005, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5052(context, evt)
	if evt.param1 ~= 5052 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5052(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 5)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5053(context, evt)
	if evt.param1 ~= 5053 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5053(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 6)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5080(context, evt)
	if "pubu3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5080(context, evt)
	-- 将configid为 5054 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5054, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5055 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5055, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5056 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5056, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5057 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5057, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5058 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5058, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5059 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5059, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5060 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5060, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5061 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5061, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5062 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5062, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5063 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5063, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5064 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5064, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5066 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5066, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5081(context, evt)
	-- 判断是gadgetid 为 5012的移动平台，是否到达了1 的点集中的 2 点
	
	if 5012 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5081(context, evt)
	-- 将configid为 5054 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5054, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5055 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5055, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5056 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5056, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5057 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5057, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5058 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5058, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5059 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5059, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5060 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5060, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5061 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5061, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5062 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5062, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5063 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5063, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5064 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5064, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5065 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5065, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5066 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5066, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5082(context, evt)
	if "pubu4" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5082(context, evt)
	-- 将configid为 5067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5072 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5072, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5073 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5073, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5074 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5074, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5075 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5075, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5076 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5076, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5077 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5077, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5078 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5078, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5079 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5079, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5083(context, evt)
	-- 判断是gadgetid 为 5010的移动平台，是否到达了3 的点集中的 2 点
	
	if 5010 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5083(context, evt)
	-- 将configid为 5067 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5067, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5068 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5068, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5069 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5069, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5070 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5070, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5071 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5071, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5072 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5072, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5073 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5073, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5074 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5074, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5075 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5075, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5076 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5076, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5077 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5077, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5078 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5078, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5079 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5079, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5084(context, evt)
	-- 判断是gadgetid 为 5006的移动平台，是否到达了6 的路线中的 1 点
	
	if 5006 ~= evt.param1 then
	  return false
	end
	
	if 6 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5084(context, evt)
	-- 创建标识为"timer1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer1", {2}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 5006, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5085(context, evt)
	if "timer1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5085(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5086(context, evt)
	-- 判断是gadgetid 为 5006的移动平台，是否到达了8 的路线中的 1 点
	
	if 5006 ~= evt.param1 then
	  return false
	end
	
	if 8 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5086(context, evt)
	-- 创建标识为"timer2"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer2", {2}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 5006, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5087(context, evt)
	if "timer2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5087(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 5006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5088(context, evt)
	if evt.param1 ~= 5088 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5088(context, evt)
	-- 创建标识为"pubu3"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "pubu3", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5089(context, evt)
	if evt.param1 ~= 5089 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5089(context, evt)
	-- 创建标识为"pubu4"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "pubu4", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5090(context, evt)
	if evt.param1 ~= 5090 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5090(context, evt)
	
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5010, 3, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5011, 4, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5012, 1, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 5013, 2, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165005, 5016, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	
	ScriptLib.SetWeatherAreaState(context,10152,0)
	ScriptLib.SetWeatherAreaState(context,10158,1)
	
	if 0 ~= ScriptLib.EnterWeatherArea(context,10158) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5091(context, evt)
	if evt.param1 ~= 5091 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"flower"为0
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5091(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5092(context, evt)
	-- 判断是gadgetid 为 5010的移动平台，是否到达了3 的点集中的 2 点
	
	if 5010 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	-- 判断变量"monster4"为1
	if ScriptLib.GetGroupVariableValue(context, "monster4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5092(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5093(context, evt)
	if evt.param1 ~= 5093 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"flower"为1
	if ScriptLib.GetGroupVariableValue(context, "flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5093(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 23 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5094(context, evt)
	if evt.param1 ~= 5094 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"monster4"为1
	if ScriptLib.GetGroupVariableValue(context, "monster4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5094(context, evt)
	-- 创建标识为"timer"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5095(context, evt)
	if evt.param1 ~= 5095 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5095(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 15 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5096(context, evt)
	if evt.param1 ~= 5096 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"updown2"为1
	if ScriptLib.GetGroupVariableValue(context, "updown2") ~= 1 then
			return false
	end
	
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5096(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165005, 5016, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_5097(context, evt)
	-- 判断是gadgetid 为 5010的移动平台，是否到达了3 的点集中的 2 点
	
	if 5010 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_5097(context, evt)
	-- 调用提示id为 400905 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400905) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5098(context, evt)
	if 5019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5098(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220165005, 5019, {220}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5099(context, evt)
	if evt.param1 ~= 5099 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为2
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5099(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 25)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5100(context, evt)
	if evt.param1 ~= 5100 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为3
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5100(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 26)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5101(context, evt)
	if evt.param1 ~= 5101 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为4
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5101(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 27)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5102(context, evt)
	if evt.param1 ~= 5102 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为5
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5102(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 28)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5103(context, evt)
	if evt.param1 ~= 5103 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为6
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5103(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 29)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5104(context, evt)
	if evt.param1 ~= 5104 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为7
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5104(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 30)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5105(context, evt)
	if evt.param1 ~= 5105 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为8
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 8 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5105(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 31)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5106(context, evt)
	if evt.param1 ~= 5106 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为9
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5106(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 32)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5107(context, evt)
	if evt.param1 ~= 5107 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为10
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5107(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 33)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5108(context, evt)
	if evt.param1 ~= 5108 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为11
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 11 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5108(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 34)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5109(context, evt)
	if evt.param1 ~= 5109 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为12
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 12 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5109(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 35)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5110(context, evt)
	if evt.param1 ~= 5110 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为13
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 13 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5110(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 36)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5111(context, evt)
	if evt.param1 ~= 5111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为14
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5111(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 37)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5112(context, evt)
	if evt.param1 ~= 5112 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为15
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 15 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5112(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 38)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5113(context, evt)
	if evt.param1 ~= 5113 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为16
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 16 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5113(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 39)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5114(context, evt)
	if evt.param1 ~= 5114 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"revive2"为17
	if ScriptLib.GetGroupVariableValue(context, "revive2") ~= 17 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5114(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 40)
	
	-- 针对当前group内变量名为 "revive2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "revive2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5118(context, evt)
	if evt.param1 ~= 5118 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5118(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5119(context, evt)
	if evt.param1 ~= 5119 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5119(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 19 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5120(context, evt)
	if evt.param1 ~= 5120 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"door"为2
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5120(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end