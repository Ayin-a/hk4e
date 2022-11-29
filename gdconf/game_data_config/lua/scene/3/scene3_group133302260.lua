-- 基础信息
local base_info = {
	group_id = 133302260
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24006,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 260001, 
--终点region的configID
end_regionID = 260006, 
--开启操作台后立刻加载的suites
load_on_start = {2,4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {260008,260078},
--教学区region的configID
guide_regionID = 260005,
look_pos = {x=-1493.794, y=212.2333, z=2272.594},
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
	{ config_id = 260001, gadget_id = 70350457, pos = { x = -1490.542, y = 203.173, z = 2284.248 }, rot = { x = 2.936, y = 358.943, z = 340.192 }, level = 30, area_id = 21 },
	{ config_id = 260002, gadget_id = 70360025, pos = { x = -1559.376, y = 147.757, z = 2165.890 }, rot = { x = 22.393, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260003, gadget_id = 70220103, pos = { x = -1493.794, y = 210.955, z = 2272.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260004, gadget_id = 70220121, pos = { x = -1565.543, y = 146.000, z = 2180.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260010, gadget_id = 70220122, pos = { x = -1524.295, y = 160.933, z = 2236.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260011, gadget_id = 70220122, pos = { x = -1494.770, y = 208.903, z = 2264.593 }, rot = { x = 0.001, y = 285.301, z = 338.778 }, level = 30, area_id = 21 },
	{ config_id = 260012, gadget_id = 70220103, pos = { x = -1495.881, y = 204.726, z = 2255.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260013, gadget_id = 70220121, pos = { x = -1493.431, y = 209.813, z = 2263.977 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260014, gadget_id = 70220121, pos = { x = -1496.412, y = 209.798, z = 2264.800 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260015, gadget_id = 70220121, pos = { x = -1493.254, y = 208.387, z = 2264.626 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260016, gadget_id = 70220121, pos = { x = -1496.235, y = 208.387, z = 2265.441 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260017, gadget_id = 70220121, pos = { x = -1494.983, y = 210.398, z = 2264.114 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260018, gadget_id = 70220121, pos = { x = -1494.646, y = 207.692, z = 2265.348 }, rot = { x = 0.001, y = 285.301, z = 295.297 }, level = 30, area_id = 21 },
	{ config_id = 260019, gadget_id = 70330197, pos = { x = -1524.295, y = 159.115, z = 2236.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260020, gadget_id = 70220121, pos = { x = -1564.816, y = 146.000, z = 2178.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260021, gadget_id = 70220121, pos = { x = -1566.074, y = 146.000, z = 2183.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260022, gadget_id = 70220121, pos = { x = -1524.306, y = 168.939, z = 2236.369 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260023, gadget_id = 70220121, pos = { x = -1524.307, y = 166.498, z = 2235.115 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260024, gadget_id = 70220103, pos = { x = -1524.295, y = 167.195, z = 2236.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260025, gadget_id = 70220103, pos = { x = -1542.822, y = 163.744, z = 2237.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260026, gadget_id = 70220103, pos = { x = -1568.504, y = 147.039, z = 2209.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260027, gadget_id = 70220103, pos = { x = -1562.957, y = 147.671, z = 2174.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260028, gadget_id = 70350349, pos = { x = -1557.052, y = 156.907, z = 2241.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260029, gadget_id = 70220121, pos = { x = -1561.042, y = 157.874, z = 2240.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260030, gadget_id = 70220121, pos = { x = -1559.122, y = 157.725, z = 2241.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260031, gadget_id = 70220122, pos = { x = -1567.506, y = 155.540, z = 2234.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260032, gadget_id = 70220121, pos = { x = -1569.593, y = 151.200, z = 2225.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260033, gadget_id = 70220121, pos = { x = -1569.234, y = 148.509, z = 2221.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260034, gadget_id = 70220121, pos = { x = -1568.627, y = 146.833, z = 2217.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260035, gadget_id = 70330197, pos = { x = -1568.284, y = 140.900, z = 2209.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260036, gadget_id = 70220103, pos = { x = -1567.258, y = 146.429, z = 2194.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260037, gadget_id = 70220121, pos = { x = -1567.645, y = 146.048, z = 2199.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260038, gadget_id = 70220121, pos = { x = -1567.818, y = 146.222, z = 2202.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260039, gadget_id = 70220121, pos = { x = -1568.023, y = 146.429, z = 2204.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260040, gadget_id = 70220121, pos = { x = -1566.527, y = 146.000, z = 2189.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260041, gadget_id = 70220121, pos = { x = -1566.337, y = 146.000, z = 2186.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260042, gadget_id = 70220122, pos = { x = -1567.258, y = 144.998, z = 2194.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260043, gadget_id = 70220122, pos = { x = -1512.374, y = 180.246, z = 2242.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260044, gadget_id = 70220121, pos = { x = -1512.929, y = 181.007, z = 2240.844 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260045, gadget_id = 70220121, pos = { x = -1512.917, y = 180.996, z = 2243.935 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260046, gadget_id = 70220121, pos = { x = -1511.785, y = 179.922, z = 2240.844 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260047, gadget_id = 70220121, pos = { x = -1511.785, y = 179.922, z = 2243.935 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260048, gadget_id = 70220121, pos = { x = -1513.399, y = 181.452, z = 2242.377 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260049, gadget_id = 70220121, pos = { x = -1511.227, y = 179.393, z = 2242.377 }, rot = { x = 0.000, y = 0.000, z = 316.519 }, level = 30, area_id = 21 },
	{ config_id = 260050, gadget_id = 70220084, pos = { x = -1490.550, y = 203.781, z = 2284.246 }, rot = { x = 330.000, y = 195.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 260051, gadget_id = 70220084, pos = { x = -1493.794, y = 210.955, z = 2272.594 }, rot = { x = 19.852, y = 187.278, z = 2.483 }, level = 1, area_id = 21 },
	{ config_id = 260052, gadget_id = 70220084, pos = { x = -1524.295, y = 167.195, z = 2236.350 }, rot = { x = 12.000, y = 275.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 260053, gadget_id = 70220122, pos = { x = -1500.626, y = 190.180, z = 2242.921 }, rot = { x = 35.416, y = 337.593, z = 0.820 }, level = 30, area_id = 21 },
	{ config_id = 260054, gadget_id = 70220121, pos = { x = -1500.863, y = 191.636, z = 2242.012 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260055, gadget_id = 70220121, pos = { x = -1501.809, y = 189.836, z = 2244.340 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260056, gadget_id = 70220121, pos = { x = -1499.556, y = 190.766, z = 2241.881 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260057, gadget_id = 70220121, pos = { x = -1500.516, y = 188.974, z = 2244.211 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260058, gadget_id = 70220121, pos = { x = -1501.877, y = 191.105, z = 2243.220 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260059, gadget_id = 70220121, pos = { x = -1499.394, y = 189.452, z = 2242.973 }, rot = { x = 35.416, y = 337.593, z = 317.338 }, level = 30, area_id = 21 },
	{ config_id = 260060, gadget_id = 70220121, pos = { x = -1524.306, y = 166.498, z = 2237.598 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260061, gadget_id = 70220121, pos = { x = -1524.306, y = 165.479, z = 2236.369 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260062, gadget_id = 70220121, pos = { x = -1524.307, y = 167.816, z = 2235.115 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260063, gadget_id = 70220121, pos = { x = -1524.306, y = 167.817, z = 2237.598 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260064, gadget_id = 70220121, pos = { x = -1542.654, y = 165.555, z = 2237.590 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260065, gadget_id = 70220121, pos = { x = -1542.655, y = 163.114, z = 2236.336 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260066, gadget_id = 70220121, pos = { x = -1542.654, y = 163.114, z = 2238.819 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260067, gadget_id = 70220121, pos = { x = -1542.654, y = 162.095, z = 2237.590 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260068, gadget_id = 70220121, pos = { x = -1542.655, y = 164.433, z = 2236.336 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260069, gadget_id = 70220121, pos = { x = -1542.654, y = 164.433, z = 2238.819 }, rot = { x = 0.000, y = 66.412, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260070, gadget_id = 70220121, pos = { x = -1562.969, y = 149.369, z = 2175.026 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260071, gadget_id = 70220121, pos = { x = -1564.162, y = 146.927, z = 2174.644 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260072, gadget_id = 70220121, pos = { x = -1561.799, y = 146.927, z = 2175.403 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260073, gadget_id = 70220121, pos = { x = -1562.969, y = 145.908, z = 2175.026 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260074, gadget_id = 70220121, pos = { x = -1564.162, y = 148.246, z = 2174.644 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260075, gadget_id = 70220121, pos = { x = -1561.799, y = 148.246, z = 2175.403 }, rot = { x = 0.000, y = 138.587, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260076, gadget_id = 70330197, pos = { x = -1567.258, y = 137.864, z = 2194.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 260077, gadget_id = 70220121, pos = { x = -1564.173, y = 157.240, z = 2239.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	-- C1
	{ config_id = 260079, gadget_id = 70710126, pos = { x = -1524.180, y = 160.256, z = 2236.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C1
	{ config_id = 260080, gadget_id = 70350085, pos = { x = -1524.295, y = 167.195, z = 2236.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C2
	{ config_id = 260081, gadget_id = 70350085, pos = { x = -1567.506, y = 155.540, z = 2234.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C2
	{ config_id = 260082, gadget_id = 70710126, pos = { x = -1567.506, y = 155.540, z = 2234.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C3
	{ config_id = 260083, gadget_id = 70350085, pos = { x = -1559.376, y = 147.757, z = 2165.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C3
	{ config_id = 260084, gadget_id = 70710126, pos = { x = -1559.376, y = 147.757, z = 2165.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 260086, gadget_id = 70330197, pos = { x = -1563.198, y = 140.532, z = 2174.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 260005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1490.532, y = 203.764, z = 2283.997 }, area_id = 21 },
	{ config_id = 260006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1559.428, y = 147.236, z = 2165.617 }, area_id = 21 },
	{ config_id = 260007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1567.506, y = 155.540, z = 2234.979 }, area_id = 21 },
	{ config_id = 260008, shape = RegionShape.CUBIC, size = { x = 50.000, y = 80.000, z = 80.000 }, pos = { x = -1506.205, y = 186.116, z = 2257.882 }, area_id = 21 },
	{ config_id = 260078, shape = RegionShape.CUBIC, size = { x = 80.000, y = 100.000, z = 100.000 }, pos = { x = -1546.903, y = 155.085, z = 2207.436 }, area_id = 21 },
	{ config_id = 260085, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1524.295, y = 167.195, z = 2236.350 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1260007, name = "ENTER_REGION_260007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_260007", action = "action_EVENT_ENTER_REGION_260007" },
	{ config_id = 1260085, name = "ENTER_REGION_260085", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_260085", action = "action_EVENT_ENTER_REGION_260085" }
}

-- 点位
points = {
	{ config_id = 260009, pos = { x = -1489.429, y = 202.934, z = 2283.835 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 260001 },
		regions = { 260005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 分段1,
		monsters = { },
		gadgets = { 260003, 260010, 260011, 260012, 260013, 260014, 260015, 260016, 260017, 260018, 260019, 260022, 260023, 260024, 260043, 260044, 260045, 260046, 260047, 260048, 260049, 260050, 260051, 260052, 260053, 260054, 260055, 260056, 260057, 260058, 260059, 260060, 260061, 260062, 260063, 260079, 260080 },
		regions = { 260085 },
		triggers = { "ENTER_REGION_260085" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 分段2,
		monsters = { },
		gadgets = { 260025, 260028, 260029, 260030, 260031, 260064, 260065, 260066, 260067, 260068, 260069, 260077, 260081, 260082 },
		regions = { 260007 },
		triggers = { "ENTER_REGION_260007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 终点,
		monsters = { },
		gadgets = { 260002 },
		regions = { 260006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 挑战区域,
		monsters = { },
		gadgets = { },
		regions = { 260008, 260078 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 分段3,
		monsters = { },
		gadgets = { 260004, 260020, 260021, 260026, 260027, 260032, 260033, 260034, 260035, 260036, 260037, 260038, 260039, 260040, 260041, 260042, 260070, 260071, 260072, 260073, 260074, 260075, 260076, 260083, 260084, 260086 },
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
function condition_EVENT_ENTER_REGION_260007(context, evt)
	if evt.param1 ~= 260007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_260007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302260, 6)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302260, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302260, EntityType.GADGET, 260081 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302260, EntityType.GADGET, 260082 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_260085(context, evt)
	if evt.param1 ~= 260085 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_260085(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302260, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302260, EntityType.GADGET, 260079 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302260, EntityType.GADGET, 260080 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"