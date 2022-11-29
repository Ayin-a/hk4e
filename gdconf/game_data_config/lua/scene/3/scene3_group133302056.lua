-- 基础信息
local base_info = {
	group_id = 133302056
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24003,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 56001, 
--终点region的configID
end_regionID = 56004, 
--开启操作台后立刻加载的suites
load_on_start = {2, 3, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {56101},
--教学区region的configID
guide_regionID = 56042,
look_pos = {x=-1042.65881,y=217.132782,z=2852.31},
duration = 2,
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
	{ config_id = 56001, gadget_id = 70350457, pos = { x = -1038.293, y = 215.347, z = 2845.865 }, rot = { x = 14.058, y = 11.231, z = 347.244 }, level = 30, area_id = 21 },
	{ config_id = 56003, gadget_id = 70360025, pos = { x = -1234.588, y = 176.543, z = 2980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 56005, gadget_id = 70220121, pos = { x = -1042.659, y = 217.133, z = 2852.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56006, gadget_id = 70220121, pos = { x = -1206.511, y = 209.828, z = 2959.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56008, gadget_id = 70690001, pos = { x = -1135.348, y = 227.302, z = 2946.676 }, rot = { x = 0.000, y = 269.962, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56010, gadget_id = 70220122, pos = { x = -1118.716, y = 217.747, z = 2943.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56011, gadget_id = 70220121, pos = { x = -1043.385, y = 217.323, z = 2855.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56012, gadget_id = 70220121, pos = { x = -1130.672, y = 229.137, z = 2946.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56013, gadget_id = 70220121, pos = { x = -1044.117, y = 218.084, z = 2858.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56014, gadget_id = 70220103, pos = { x = -1056.538, y = 223.469, z = 2892.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56015, gadget_id = 70220121, pos = { x = -1130.450, y = 229.137, z = 2947.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56016, gadget_id = 70220121, pos = { x = -1046.736, y = 219.441, z = 2866.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56017, gadget_id = 70220121, pos = { x = -1130.612, y = 230.174, z = 2946.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56018, gadget_id = 70220121, pos = { x = -1048.083, y = 220.019, z = 2869.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56019, gadget_id = 70220121, pos = { x = -1130.600, y = 230.131, z = 2947.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56020, gadget_id = 70220121, pos = { x = -1049.525, y = 221.061, z = 2873.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56021, gadget_id = 70690011, pos = { x = -1204.802, y = 176.278, z = 2960.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56022, gadget_id = 70220121, pos = { x = -1130.546, y = 228.301, z = 2947.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56024, gadget_id = 70220121, pos = { x = -1062.443, y = 222.169, z = 2898.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56025, gadget_id = 70220121, pos = { x = -1061.505, y = 222.319, z = 2896.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56026, gadget_id = 70220121, pos = { x = -1059.963, y = 222.480, z = 2896.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56027, gadget_id = 70220121, pos = { x = -1057.963, y = 222.679, z = 2897.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56028, gadget_id = 70220121, pos = { x = -1058.012, y = 222.833, z = 2898.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56029, gadget_id = 70220121, pos = { x = -1061.116, y = 222.679, z = 2901.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56030, gadget_id = 70350085, pos = { x = -1060.194, y = 223.315, z = 2898.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56031, gadget_id = 70220122, pos = { x = -1060.185, y = 222.981, z = 2898.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56032, gadget_id = 70220121, pos = { x = -1061.023, y = 223.413, z = 2899.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56033, gadget_id = 70220121, pos = { x = -1061.922, y = 221.975, z = 2903.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56034, gadget_id = 70220121, pos = { x = -1063.167, y = 220.950, z = 2905.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56035, gadget_id = 70220103, pos = { x = -1070.910, y = 201.675, z = 2910.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56036, gadget_id = 70220122, pos = { x = -1204.980, y = 209.837, z = 2960.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56037, gadget_id = 70220121, pos = { x = -1073.168, y = 211.564, z = 2917.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 56038, gadget_id = 70710126, pos = { x = -1060.320, y = 221.746, z = 2898.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56039, gadget_id = 70220121, pos = { x = -1068.978, y = 216.217, z = 2912.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56041, gadget_id = 70220121, pos = { x = -1065.691, y = 219.298, z = 2908.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56043, gadget_id = 70350085, pos = { x = -1179.932, y = 228.455, z = 2942.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56044, gadget_id = 70360095, pos = { x = -1094.668, y = 209.290, z = 2929.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200031, area_id = 21 },
	{ config_id = 56045, gadget_id = 70360095, pos = { x = -1100.756, y = 210.734, z = 2933.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200032, area_id = 21 },
	{ config_id = 56046, gadget_id = 70360095, pos = { x = -1108.573, y = 213.151, z = 2938.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200033, area_id = 21 },
	{ config_id = 56047, gadget_id = 70220121, pos = { x = -1092.043, y = 209.023, z = 2927.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56048, gadget_id = 70710126, pos = { x = -1179.613, y = 226.545, z = 2942.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56050, gadget_id = 70220121, pos = { x = -1097.890, y = 210.786, z = 2931.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56051, gadget_id = 70220121, pos = { x = -1234.588, y = 189.203, z = 2980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56052, gadget_id = 70220121, pos = { x = -1104.881, y = 212.155, z = 2936.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56053, gadget_id = 70220121, pos = { x = -1111.312, y = 214.640, z = 2940.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56054, gadget_id = 70350085, pos = { x = -1204.993, y = 210.817, z = 2960.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56056, gadget_id = 70220122, pos = { x = -1045.276, y = 218.451, z = 2861.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 56057, gadget_id = 70220103, pos = { x = -1130.546, y = 229.412, z = 2947.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56058, gadget_id = 70220121, pos = { x = -1234.588, y = 187.203, z = 2980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56059, gadget_id = 70690027, pos = { x = -1118.793, y = 217.295, z = 2943.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56060, gadget_id = 70220084, pos = { x = -1118.716, y = 223.773, z = 2943.089 }, rot = { x = 346.712, y = 313.574, z = 6.492 }, level = 1, area_id = 21 },
	{ config_id = 56061, gadget_id = 70220121, pos = { x = -1234.588, y = 185.203, z = 2980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56062, gadget_id = 70690013, pos = { x = -1130.546, y = 171.685, z = 2947.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56075, gadget_id = 70220103, pos = { x = -1179.452, y = 228.749, z = 2943.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56076, gadget_id = 70220103, pos = { x = -1204.993, y = 210.523, z = 2960.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56077, gadget_id = 70220121, pos = { x = -1181.319, y = 228.346, z = 2943.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56078, gadget_id = 70220121, pos = { x = -1180.656, y = 229.072, z = 2941.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56079, gadget_id = 70220121, pos = { x = -1178.792, y = 229.251, z = 2941.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56080, gadget_id = 70220121, pos = { x = -1177.778, y = 228.447, z = 2942.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56081, gadget_id = 70220121, pos = { x = -1178.822, y = 226.969, z = 2943.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56082, gadget_id = 70220122, pos = { x = -1179.588, y = 227.852, z = 2943.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56083, gadget_id = 70220121, pos = { x = -1206.096, y = 209.831, z = 2961.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56084, gadget_id = 70220121, pos = { x = -1204.376, y = 209.866, z = 2961.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56085, gadget_id = 70220121, pos = { x = -1203.651, y = 209.748, z = 2960.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56086, gadget_id = 70220121, pos = { x = -1204.976, y = 209.860, z = 2958.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56087, gadget_id = 70220103, pos = { x = -1234.588, y = 191.203, z = 2980.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56088, gadget_id = 70220121, pos = { x = -1233.105, y = 191.396, z = 2981.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56089, gadget_id = 70220121, pos = { x = -1233.340, y = 191.475, z = 2980.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56090, gadget_id = 70220121, pos = { x = -1234.492, y = 191.572, z = 2979.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56091, gadget_id = 70220121, pos = { x = -1236.073, y = 191.293, z = 2980.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56092, gadget_id = 70220121, pos = { x = -1236.135, y = 191.041, z = 2981.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56093, gadget_id = 70220121, pos = { x = -1234.620, y = 191.125, z = 2982.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56094, gadget_id = 70220121, pos = { x = -1183.672, y = 224.788, z = 2946.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56095, gadget_id = 70220121, pos = { x = -1186.986, y = 223.266, z = 2949.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56097, gadget_id = 70220121, pos = { x = -1189.452, y = 221.801, z = 2950.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 56099, gadget_id = 70220121, pos = { x = -1193.004, y = 219.810, z = 2952.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 56002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1130.546, y = 229.412, z = 2947.154 }, area_id = 21 },
	{ config_id = 56004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1234.588, y = 176.543, z = 2980.951 }, area_id = 21 },
	{ config_id = 56009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1204.980, y = 209.837, z = 2960.359 }, area_id = 21 },
	{ config_id = 56023, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1062.151, y = 222.776, z = 2900.063 }, area_id = 21 },
	{ config_id = 56042, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1037.775, y = 215.473, z = 2844.822 }, area_id = 21 },
	{ config_id = 56049, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1181.427, y = 226.517, z = 2942.543 }, area_id = 21 },
	{ config_id = 56055, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1177.724, y = 208.538, z = 2997.347 }, area_id = 23 },
	{ config_id = 56101, shape = RegionShape.POLYGON, pos = { x = -1140.254, y = 209.107, z = 2935.708 }, height = 98.215, point_array = { { x = -1048.403, y = 2826.300 }, { x = -1026.434, y = 2847.950 }, { x = -1047.390, y = 2907.426 }, { x = -1078.470, y = 2943.222 }, { x = -1238.346, y = 3045.116 }, { x = -1254.075, y = 3001.045 }, { x = -1253.210, y = 2965.083 }, { x = -1228.179, y = 2943.122 }, { x = -1069.706, y = 2885.014 } }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1056002, name = "ENTER_REGION_56002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56002", action = "action_EVENT_ENTER_REGION_56002" },
	{ config_id = 1056009, name = "ENTER_REGION_56009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56009", action = "action_EVENT_ENTER_REGION_56009" },
	{ config_id = 1056023, name = "ENTER_REGION_56023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56023", action = "action_EVENT_ENTER_REGION_56023" },
	{ config_id = 1056049, name = "ENTER_REGION_56049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56049", action = "action_EVENT_ENTER_REGION_56049" },
	{ config_id = 1056055, name = "ENTER_REGION_56055", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_56055", action = "action_EVENT_ENTER_REGION_56055" }
}

-- 点位
points = {
	{ config_id = 56007, pos = { x = -1041.162, y = 215.676, z = 2848.053 }, rot = { x = 0.000, y = 347.412, z = 0.000 }, area_id = 21 }
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
		gadgets = { 56001 },
		regions = { 56042 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 56005, 56011, 56013, 56014, 56016, 56018, 56020, 56056 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 56024, 56025, 56026, 56027, 56028, 56029, 56030, 56031, 56032, 56033, 56034, 56038 },
		regions = { 56023 },
		triggers = { "ENTER_REGION_56023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 56003 },
		regions = { 56004 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 赛道region，出region既失败,
		monsters = { },
		gadgets = { },
		regions = { 56101 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 56008, 56010, 56012, 56015, 56017, 56019, 56022, 56035, 56037, 56039, 56041, 56044, 56045, 56046, 56047, 56050, 56052, 56053, 56057, 56059, 56060, 56062 },
		regions = { 56002 },
		triggers = { "ENTER_REGION_56002" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 56043, 56048, 56075, 56077, 56078, 56079, 56080, 56081, 56082, 56094, 56095, 56097, 56099 },
		regions = { 56049 },
		triggers = { "ENTER_REGION_56049" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 56006, 56021, 56036, 56051, 56054, 56058, 56061, 56076, 56083, 56084, 56085, 56086, 56087, 56088, 56089, 56090, 56091, 56092, 56093 },
		regions = { 56009, 56055 },
		triggers = { "ENTER_REGION_56009", "ENTER_REGION_56055" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_56002(context, evt)
	if evt.param1 ~= 56002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56002(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302056, 7)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302056, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56009(context, evt)
	if evt.param1 ~= 56009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56009(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302056, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56023(context, evt)
	if evt.param1 ~= 56023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56023(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302056, 6)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302056, EntityType.GADGET, 56030 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302056, EntityType.GADGET, 56038 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56049(context, evt)
	if evt.param1 ~= 56049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56049(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302056, 8)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302056, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302056, EntityType.GADGET, 56048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302056, EntityType.GADGET, 56043 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_56055(context, evt)
	if evt.param1 ~= 56055 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_56055(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302056, EntityType.GADGET, 56054 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"