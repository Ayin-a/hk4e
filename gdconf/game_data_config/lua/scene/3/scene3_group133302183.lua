-- 基础信息
local base_info = {
	group_id = 133302183
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24007,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 183001, 
--终点region的configID
end_regionID = 183006, 
--开启操作台后立刻加载的suites
load_on_start = {2, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {183008},
--教学区region的configID
guide_regionID = 183005,
look_pos = {x = -1509.15039,y = 186.8,z = 3451.846},
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
	{ config_id = 183001, gadget_id = 70350457, pos = { x = -1509.171, y = 185.149, z = 3448.958 }, rot = { x = 345.711, y = 359.300, z = 1.726 }, level = 30, area_id = 23 },
	{ config_id = 183002, gadget_id = 70360025, pos = { x = -1407.302, y = 126.255, z = 3383.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 183003, gadget_id = 70220122, pos = { x = -1509.150, y = 187.664, z = 3451.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183007, gadget_id = 70220121, pos = { x = -1417.401, y = 195.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183010, gadget_id = 70220121, pos = { x = -1508.442, y = 188.143, z = 3454.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183011, gadget_id = 70220103, pos = { x = -1505.488, y = 195.690, z = 3466.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183012, gadget_id = 70330197, pos = { x = -1505.489, y = 191.415, z = 3466.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183013, gadget_id = 70220121, pos = { x = -1505.488, y = 203.721, z = 3466.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183014, gadget_id = 70220121, pos = { x = -1505.488, y = 201.721, z = 3466.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183015, gadget_id = 70220121, pos = { x = -1505.488, y = 199.721, z = 3466.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183016, gadget_id = 70220121, pos = { x = -1505.488, y = 197.721, z = 3466.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183017, gadget_id = 70220084, pos = { x = -1505.488, y = 205.721, z = 3466.938 }, rot = { x = 0.000, y = 47.574, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183018, gadget_id = 70220121, pos = { x = -1417.401, y = 194.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183019, gadget_id = 70220103, pos = { x = -1480.539, y = 211.772, z = 3490.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183020, gadget_id = 70220121, pos = { x = -1433.901, y = 198.796, z = 3482.266 }, rot = { x = 0.000, y = 236.141, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183021, gadget_id = 70220121, pos = { x = -1417.401, y = 193.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183022, gadget_id = 70220121, pos = { x = -1480.539, y = 209.772, z = 3490.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183023, gadget_id = 70220121, pos = { x = -1480.539, y = 207.772, z = 3490.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183024, gadget_id = 70220121, pos = { x = -1480.539, y = 205.772, z = 3490.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183025, gadget_id = 70220121, pos = { x = -1438.136, y = 200.945, z = 3486.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183026, gadget_id = 70220121, pos = { x = -1430.884, y = 198.519, z = 3479.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183027, gadget_id = 70220121, pos = { x = -1428.772, y = 198.724, z = 3477.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183028, gadget_id = 70220103, pos = { x = -1417.401, y = 197.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183029, gadget_id = 70330197, pos = { x = -1417.401, y = 188.227, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183030, gadget_id = 70220122, pos = { x = -1417.572, y = 190.051, z = 3464.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183031, gadget_id = 70220121, pos = { x = -1417.401, y = 192.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183032, gadget_id = 70220121, pos = { x = -1417.401, y = 191.313, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183033, gadget_id = 70220084, pos = { x = -1407.302, y = 173.850, z = 3383.186 }, rot = { x = 90.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183036, gadget_id = 70220121, pos = { x = -1417.584, y = 194.574, z = 3458.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183037, gadget_id = 70220121, pos = { x = -1419.422, y = 194.574, z = 3458.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183038, gadget_id = 70220121, pos = { x = -1418.419, y = 194.574, z = 3459.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183039, gadget_id = 70220121, pos = { x = -1418.412, y = 194.574, z = 3457.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183040, gadget_id = 70220103, pos = { x = -1407.573, y = 181.750, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183041, gadget_id = 70220122, pos = { x = -1418.769, y = 194.084, z = 3458.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183042, gadget_id = 70330197, pos = { x = -1407.574, y = 167.848, z = 3435.979 }, rot = { x = 0.000, y = 251.728, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183043, gadget_id = 70220121, pos = { x = -1407.573, y = 180.081, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183044, gadget_id = 70220121, pos = { x = -1407.573, y = 178.081, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183045, gadget_id = 70220121, pos = { x = -1407.573, y = 176.081, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183046, gadget_id = 70220121, pos = { x = -1407.573, y = 174.081, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183047, gadget_id = 70220121, pos = { x = -1407.573, y = 172.081, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183048, gadget_id = 70220122, pos = { x = -1407.636, y = 169.390, z = 3435.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183049, gadget_id = 70220121, pos = { x = -1409.055, y = 169.660, z = 3434.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183050, gadget_id = 70220121, pos = { x = -1407.295, y = 168.401, z = 3433.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183051, gadget_id = 70220121, pos = { x = -1406.035, y = 168.738, z = 3435.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183052, gadget_id = 70220121, pos = { x = -1407.085, y = 169.850, z = 3437.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183053, gadget_id = 70220121, pos = { x = -1409.090, y = 170.082, z = 3436.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183054, gadget_id = 70690001, pos = { x = -1407.448, y = 176.371, z = 3427.425 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183055, gadget_id = 70220103, pos = { x = -1407.302, y = 173.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183056, gadget_id = 70220121, pos = { x = -1407.448, y = 175.846, z = 3421.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183057, gadget_id = 70220121, pos = { x = -1407.448, y = 175.846, z = 3418.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183058, gadget_id = 70220121, pos = { x = -1407.448, y = 175.846, z = 3415.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183059, gadget_id = 70220121, pos = { x = -1407.448, y = 175.846, z = 3411.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183060, gadget_id = 70220121, pos = { x = -1407.302, y = 171.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183061, gadget_id = 70220121, pos = { x = -1407.302, y = 169.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183062, gadget_id = 70220121, pos = { x = -1407.302, y = 167.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183063, gadget_id = 70220121, pos = { x = -1407.302, y = 165.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183064, gadget_id = 70220121, pos = { x = -1407.302, y = 163.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183065, gadget_id = 70220121, pos = { x = -1407.302, y = 161.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183066, gadget_id = 70220121, pos = { x = -1407.302, y = 159.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183067, gadget_id = 70220121, pos = { x = -1407.302, y = 157.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183068, gadget_id = 70220121, pos = { x = -1407.302, y = 155.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183069, gadget_id = 70220121, pos = { x = -1407.302, y = 153.850, z = 3383.186 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183070, gadget_id = 70220121, pos = { x = -1480.539, y = 203.772, z = 3490.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183071, gadget_id = 70350085, pos = { x = -1480.682, y = 202.174, z = 3490.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183072, gadget_id = 70710126, pos = { x = -1480.661, y = 201.055, z = 3490.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183073, gadget_id = 70220121, pos = { x = -1473.787, y = 203.309, z = 3492.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183076, gadget_id = 70710126, pos = { x = -1433.845, y = 197.605, z = 3482.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183077, gadget_id = 70350085, pos = { x = -1433.845, y = 198.716, z = 3482.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183078, gadget_id = 70220084, pos = { x = -1427.051, y = 197.313, z = 3475.634 }, rot = { x = 0.000, y = 138.533, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183079, gadget_id = 70710126, pos = { x = -1417.401, y = 188.227, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183080, gadget_id = 70350085, pos = { x = -1417.401, y = 189.818, z = 3464.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183083, gadget_id = 70350085, pos = { x = -1407.574, y = 169.659, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183084, gadget_id = 70710126, pos = { x = -1407.574, y = 167.848, z = 3435.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183086, gadget_id = 70220084, pos = { x = -1407.302, y = 173.850, z = 3383.186 }, rot = { x = 90.000, y = 32.144, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183087, gadget_id = 70220121, pos = { x = -1465.702, y = 204.853, z = 3491.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183088, gadget_id = 70220121, pos = { x = -1454.077, y = 203.651, z = 3489.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183089, gadget_id = 70220121, pos = { x = -1441.859, y = 201.822, z = 3489.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183090, gadget_id = 70350349, pos = { x = -1469.853, y = 203.331, z = 3491.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183091, gadget_id = 70350347, pos = { x = -1459.546, y = 203.671, z = 3490.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 183092, gadget_id = 70350347, pos = { x = -1447.690, y = 201.434, z = 3489.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 183005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1509.276, y = 185.636, z = 3448.906 }, area_id = 23 },
	{ config_id = 183006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1407.302, y = 126.255, z = 3383.186 }, area_id = 23 },
	{ config_id = 183008, shape = RegionShape.POLYGON, pos = { x = -1438.318, y = 200.000, z = 3437.749 }, height = 400.000, point_array = { { x = -1352.435, y = 3398.757 }, { x = -1430.347, y = 3347.515 }, { x = -1464.769, y = 3404.023 }, { x = -1520.974, y = 3433.004 }, { x = -1524.202, y = 3503.337 }, { x = -1402.065, y = 3527.982 } }, area_id = 23 },
	{ config_id = 183075, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1433.845, y = 199.509, z = 3482.163 }, area_id = 23 },
	{ config_id = 183081, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1417.401, y = 190.346, z = 3464.024 }, area_id = 23 },
	{ config_id = 183082, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1480.539, y = 201.019, z = 3490.596 }, area_id = 23 },
	{ config_id = 183085, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1407.574, y = 169.901, z = 3435.979 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1183075, name = "ENTER_REGION_183075", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_183075", action = "action_EVENT_ENTER_REGION_183075" },
	{ config_id = 1183081, name = "ENTER_REGION_183081", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_183081", action = "action_EVENT_ENTER_REGION_183081" },
	{ config_id = 1183082, name = "ENTER_REGION_183082", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_183082", action = "action_EVENT_ENTER_REGION_183082" },
	{ config_id = 1183085, name = "ENTER_REGION_183085", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_183085", action = "action_EVENT_ENTER_REGION_183085" }
}

-- 点位
points = {
	{ config_id = 183009, pos = { x = -1509.466, y = 185.512, z = 3450.731 }, rot = { x = 0.000, y = 4.200, z = 0.000 }, area_id = 23 }
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
		gadgets = { 183001 },
		regions = { 183005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 183003, 183010, 183011, 183012, 183013, 183014, 183015, 183016, 183017, 183019, 183022, 183023, 183024, 183070, 183071, 183072 },
		regions = { 183082 },
		triggers = { "ENTER_REGION_183082" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 183020, 183025, 183026, 183027, 183073, 183076, 183077, 183087, 183088, 183089, 183090, 183091, 183092 },
		regions = { 183075 },
		triggers = { "ENTER_REGION_183075" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 183002 },
		regions = { 183006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 183008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 183007, 183018, 183021, 183028, 183029, 183030, 183031, 183032, 183036, 183037, 183038, 183039, 183041, 183078, 183079, 183080 },
		regions = { 183081 },
		triggers = { "ENTER_REGION_183081" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 183040, 183042, 183043, 183044, 183045, 183046, 183047, 183048, 183049, 183050, 183051, 183052, 183053, 183083, 183084 },
		regions = { 183085 },
		triggers = { "ENTER_REGION_183085" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 183033, 183054, 183055, 183056, 183057, 183058, 183059, 183060, 183061, 183062, 183063, 183064, 183065, 183066, 183067, 183068, 183069, 183086 },
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
function condition_EVENT_ENTER_REGION_183075(context, evt)
	if evt.param1 ~= 183075 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183075(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183076 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183077 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302183, 6)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302183, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_183081(context, evt)
	if evt.param1 ~= 183081 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183081(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183079 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183080 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302183, 7)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302183, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_183082(context, evt)
	if evt.param1 ~= 183082 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183082(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183072 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183071 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302183, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_183085(context, evt)
	if evt.param1 ~= 183085 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183085(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183083 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302183, EntityType.GADGET, 183084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302183, 8)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302183, 6)
	
	return 0
end

require "V3_0/Activity_Parkour"