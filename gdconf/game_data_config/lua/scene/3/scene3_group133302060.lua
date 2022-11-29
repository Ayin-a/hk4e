-- 基础信息
local base_info = {
	group_id = 133302060
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24005,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 60001, 
--终点region的configID
end_regionID = 60006, 
--开启操作台后立刻加载的suites
load_on_start = {2, 3, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {60008},
--教学区region的configID
guide_regionID = 60005,
look_pos = {x = -835.444, y = 204.1512, z = 3082.415},
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
	{ config_id = 60001, gadget_id = 70350457, pos = { x = -810.510, y = 200.130, z = 3056.211 }, rot = { x = 359.475, y = 17.882, z = 14.542 }, level = 30, area_id = 23 },
	{ config_id = 60002, gadget_id = 70360025, pos = { x = -858.376, y = 217.675, z = 3201.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 60003, gadget_id = 70220121, pos = { x = -833.292, y = 198.162, z = 3093.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60004, gadget_id = 70220121, pos = { x = -833.094, y = 197.254, z = 3096.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60010, gadget_id = 70220121, pos = { x = -832.561, y = 194.738, z = 3102.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60011, gadget_id = 70220121, pos = { x = -832.163, y = 192.952, z = 3107.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60012, gadget_id = 70220103, pos = { x = -831.183, y = 191.153, z = 3115.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60013, gadget_id = 70220121, pos = { x = -829.460, y = 191.822, z = 3117.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60014, gadget_id = 70350347, pos = { x = -826.510, y = 191.343, z = 3120.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60015, gadget_id = 70220122, pos = { x = -823.850, y = 193.488, z = 3121.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60016, gadget_id = 70220103, pos = { x = -807.371, y = 196.041, z = 3120.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60017, gadget_id = 70330197, pos = { x = -789.314, y = 191.371, z = 3141.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60018, gadget_id = 70220121, pos = { x = -789.350, y = 206.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60019, gadget_id = 70220121, pos = { x = -807.371, y = 193.220, z = 3120.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60020, gadget_id = 70220121, pos = { x = -804.458, y = 192.438, z = 3120.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60021, gadget_id = 70220121, pos = { x = -801.231, y = 192.292, z = 3121.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60022, gadget_id = 70220121, pos = { x = -798.540, y = 192.373, z = 3122.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60023, gadget_id = 70220121, pos = { x = -797.071, y = 192.373, z = 3124.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60024, gadget_id = 70220084, pos = { x = -797.071, y = 192.079, z = 3124.983 }, rot = { x = 346.904, y = 25.371, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60025, gadget_id = 70220121, pos = { x = -789.350, y = 196.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60026, gadget_id = 70220103, pos = { x = -789.742, y = 194.948, z = 3141.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60027, gadget_id = 70220121, pos = { x = -789.350, y = 198.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60028, gadget_id = 70220121, pos = { x = -789.350, y = 200.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60029, gadget_id = 70220121, pos = { x = -789.350, y = 202.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60030, gadget_id = 70220121, pos = { x = -789.350, y = 204.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60031, gadget_id = 70220121, pos = { x = -789.350, y = 208.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60032, gadget_id = 70220121, pos = { x = -789.350, y = 210.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60033, gadget_id = 70220121, pos = { x = -789.350, y = 212.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60034, gadget_id = 70220121, pos = { x = -789.350, y = 214.545, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60035, gadget_id = 70690027, pos = { x = -789.520, y = 217.317, z = 3167.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60036, gadget_id = 70220103, pos = { x = -789.520, y = 223.682, z = 3167.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60037, gadget_id = 70220122, pos = { x = -789.520, y = 222.772, z = 3167.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60038, gadget_id = 70220121, pos = { x = -788.932, y = 222.642, z = 3167.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60039, gadget_id = 70220121, pos = { x = -789.619, y = 222.642, z = 3168.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60040, gadget_id = 70220121, pos = { x = -789.590, y = 222.642, z = 3166.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60041, gadget_id = 70220121, pos = { x = -790.501, y = 222.642, z = 3168.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60042, gadget_id = 70220121, pos = { x = -790.669, y = 222.642, z = 3167.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60043, gadget_id = 70220103, pos = { x = -818.889, y = 222.453, z = 3185.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60044, gadget_id = 70220121, pos = { x = -819.874, y = 222.453, z = 3185.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60045, gadget_id = 70220121, pos = { x = -819.498, y = 222.453, z = 3184.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60046, gadget_id = 70220121, pos = { x = -818.412, y = 222.453, z = 3184.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60047, gadget_id = 70220121, pos = { x = -819.164, y = 222.453, z = 3186.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60048, gadget_id = 70220121, pos = { x = -818.222, y = 222.453, z = 3185.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60049, gadget_id = 70350349, pos = { x = -830.497, y = 218.154, z = 3196.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60050, gadget_id = 70220121, pos = { x = -833.553, y = 218.503, z = 3197.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60051, gadget_id = 70220121, pos = { x = -837.188, y = 218.561, z = 3197.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60052, gadget_id = 70220121, pos = { x = -844.380, y = 218.861, z = 3199.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60053, gadget_id = 70220121, pos = { x = -840.513, y = 218.796, z = 3198.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60054, gadget_id = 70220121, pos = { x = -847.892, y = 218.861, z = 3199.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60055, gadget_id = 70220121, pos = { x = -851.075, y = 218.861, z = 3202.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60056, gadget_id = 70220103, pos = { x = -835.444, y = 204.151, z = 3082.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60057, gadget_id = 70220121, pos = { x = -854.385, y = 218.464, z = 3201.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60058, gadget_id = 70220121, pos = { x = -833.473, y = 198.903, z = 3091.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60059, gadget_id = 70220121, pos = { x = -833.566, y = 199.411, z = 3090.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60060, gadget_id = 70220121, pos = { x = -835.683, y = 204.151, z = 3080.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60061, gadget_id = 70220121, pos = { x = -794.280, y = 222.535, z = 3169.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60062, gadget_id = 70220121, pos = { x = -798.161, y = 222.535, z = 3172.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60063, gadget_id = 70220121, pos = { x = -802.977, y = 222.535, z = 3175.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60064, gadget_id = 70220121, pos = { x = -807.879, y = 222.535, z = 3178.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60065, gadget_id = 70220121, pos = { x = -813.523, y = 222.535, z = 3182.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60066, gadget_id = 70220121, pos = { x = -832.948, y = 196.563, z = 3098.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60067, gadget_id = 70220121, pos = { x = -835.701, y = 204.151, z = 3084.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60068, gadget_id = 70220121, pos = { x = -833.842, y = 204.151, z = 3081.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60069, gadget_id = 70220121, pos = { x = -833.893, y = 204.151, z = 3083.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60070, gadget_id = 70220121, pos = { x = -837.021, y = 204.151, z = 3082.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60076, gadget_id = 70350085, pos = { x = -789.467, y = 192.522, z = 3141.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60077, gadget_id = 70710126, pos = { x = -789.454, y = 191.650, z = 3141.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60078, gadget_id = 70350085, pos = { x = -818.889, y = 222.759, z = 3185.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60079, gadget_id = 70710126, pos = { x = -818.889, y = 217.428, z = 3185.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60084, gadget_id = 70690029, pos = { x = -789.314, y = 202.035, z = 3141.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60085, gadget_id = 70220084, pos = { x = -789.520, y = 223.681, z = 3167.410 }, rot = { x = 0.000, y = 297.020, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60087, gadget_id = 70220084, pos = { x = -823.850, y = 193.488, z = 3121.888 }, rot = { x = 343.972, y = 95.984, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60088, gadget_id = 70220122, pos = { x = -789.350, y = 203.143, z = 3141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60090, gadget_id = 70220084, pos = { x = -818.889, y = 222.453, z = 3185.132 }, rot = { x = 5.813, y = 313.256, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 60093, gadget_id = 70220122, pos = { x = -835.469, y = 205.033, z = 3082.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 60005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -811.300, y = 200.747, z = 3055.862 }, area_id = 23 },
	{ config_id = 60006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -858.376, y = 217.675, z = 3201.385 }, area_id = 23 },
	{ config_id = 60007, shape = RegionShape.SPHERE, radius = 4, pos = { x = -789.314, y = 193.122, z = 3142.033 }, area_id = 23 },
	{ config_id = 60008, shape = RegionShape.POLYGON, pos = { x = -821.007, y = 169.343, z = 3118.416 }, height = 336.685, point_array = { { x = -848.631, y = 3038.782 }, { x = -853.808, y = 3189.988 }, { x = -865.974, y = 3200.386 }, { x = -859.512, y = 3209.225 }, { x = -800.473, y = 3195.596 }, { x = -779.144, y = 3171.635 }, { x = -782.633, y = 3142.618 }, { x = -776.040, y = 3099.295 }, { x = -789.952, y = 3027.606 } }, area_id = 23 },
	{ config_id = 60080, shape = RegionShape.SPHERE, radius = 4, pos = { x = -818.889, y = 223.093, z = 3185.132 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1060007, name = "ENTER_REGION_60007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60007", action = "action_EVENT_ENTER_REGION_60007" },
	{ config_id = 1060080, name = "ENTER_REGION_60080", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_60080", action = "action_EVENT_ENTER_REGION_60080" }
}

-- 点位
points = {
	{ config_id = 60009, pos = { x = -818.755, y = 201.787, z = 3045.611 }, rot = { x = 0.000, y = 5.855, z = 0.000 }, area_id = 23 }
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
		gadgets = { 60001 },
		regions = { 60005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 60003, 60004, 60010, 60011, 60012, 60013, 60014, 60015, 60016, 60019, 60020, 60021, 60022, 60023, 60024, 60056, 60058, 60059, 60060, 60066, 60067, 60068, 60069, 60070, 60087, 60093 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 60017, 60018, 60025, 60026, 60027, 60028, 60029, 60030, 60031, 60032, 60033, 60034, 60076, 60077, 60084, 60088 },
		regions = { 60007 },
		triggers = { "ENTER_REGION_60007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 60002 },
		regions = { 60006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 60008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 60035, 60036, 60037, 60038, 60039, 60040, 60041, 60042, 60043, 60044, 60045, 60046, 60047, 60048, 60061, 60062, 60063, 60064, 60065, 60078, 60079, 60085, 60090 },
		regions = { 60080 },
		triggers = { "ENTER_REGION_60080" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 60049, 60050, 60051, 60052, 60053, 60054, 60055, 60057 },
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
function condition_EVENT_ENTER_REGION_60007(context, evt)
	if evt.param1 ~= 60007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302060, 6)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302060, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302060, EntityType.GADGET, 60076 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302060, EntityType.GADGET, 60077 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_60080(context, evt)
	if evt.param1 ~= 60080 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_60080(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302060, 7)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302060, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302060, EntityType.GADGET, 60078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302060, EntityType.GADGET, 60079 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"