-- 基础信息
local base_info = {
	group_id = 133307197
}

-- Trigger变量
local defs = {
	duration = 300,
	group_id = 133307197,
	collectable_sum = 40
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
	{ config_id = 197001, gadget_id = 70211121, pos = { x = -1949.462, y = 137.729, z = 5943.307 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 197002, gadget_id = 70330343, pos = { x = -1939.291, y = 113.352, z = 5925.650 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 197003, gadget_id = 70360001, pos = { x = -1939.291, y = 113.352, z = 5925.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 27 },
	{ config_id = 197004, gadget_id = 70290501, pos = { x = -1932.165, y = 114.862, z = 5929.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197005, gadget_id = 70290501, pos = { x = -1928.143, y = 115.002, z = 5920.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197006, gadget_id = 70290501, pos = { x = -1934.122, y = 114.862, z = 5916.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197007, gadget_id = 70290501, pos = { x = -1941.728, y = 114.862, z = 5913.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197008, gadget_id = 70290501, pos = { x = -1948.595, y = 115.050, z = 5919.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197009, gadget_id = 70290501, pos = { x = -1950.798, y = 115.715, z = 5928.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197010, gadget_id = 70290501, pos = { x = -1941.377, y = 120.100, z = 5936.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197011, gadget_id = 70290501, pos = { x = -1934.377, y = 125.026, z = 5940.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 197019, gadget_id = 70330392, pos = { x = -1936.502, y = 118.350, z = 5920.820 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197020, gadget_id = 70330392, pos = { x = -1941.841, y = 118.350, z = 5930.066 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197021, gadget_id = 70330392, pos = { x = -1943.801, y = 118.350, z = 5922.781 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197022, gadget_id = 70330392, pos = { x = -1933.181, y = 118.350, z = 5935.066 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197023, gadget_id = 70330392, pos = { x = -1925.942, y = 118.350, z = 5933.127 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197024, gadget_id = 70330392, pos = { x = -1920.942, y = 118.350, z = 5924.467 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197025, gadget_id = 70330392, pos = { x = -1922.831, y = 118.350, z = 5917.139 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197026, gadget_id = 70330392, pos = { x = -1931.491, y = 118.350, z = 5912.139 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197027, gadget_id = 70330392, pos = { x = -1940.151, y = 118.350, z = 5907.139 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197028, gadget_id = 70330392, pos = { x = -1947.433, y = 118.350, z = 5909.103 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197029, gadget_id = 70330392, pos = { x = -1952.420, y = 118.350, z = 5917.787 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197030, gadget_id = 70330392, pos = { x = -1957.442, y = 118.350, z = 5926.487 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197031, gadget_id = 70330392, pos = { x = -1955.501, y = 118.350, z = 5933.727 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197032, gadget_id = 70330393, pos = { x = -1943.315, y = 116.909, z = 5935.219 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197033, gadget_id = 70330393, pos = { x = -1934.568, y = 123.009, z = 5940.269 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197034, gadget_id = 70330392, pos = { x = -1946.841, y = 118.350, z = 5938.726 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197035, gadget_id = 70330392, pos = { x = -1938.181, y = 118.350, z = 5943.726 }, rot = { x = 90.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197036, gadget_id = 70330392, pos = { x = -1926.687, y = 125.509, z = 5944.819 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197037, gadget_id = 70330393, pos = { x = -1921.014, y = 129.109, z = 5935.394 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197038, gadget_id = 70330392, pos = { x = -1913.525, y = 131.309, z = 5929.222 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197039, gadget_id = 70330392, pos = { x = -1926.837, y = 131.309, z = 5924.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197040, gadget_id = 70330392, pos = { x = -1936.837, y = 131.309, z = 5924.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197041, gadget_id = 70330392, pos = { x = -1936.837, y = 131.309, z = 5934.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197042, gadget_id = 70330392, pos = { x = -1936.837, y = 131.309, z = 5914.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197043, gadget_id = 70330392, pos = { x = -1936.837, y = 131.309, z = 5904.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197044, gadget_id = 70330392, pos = { x = -1926.837, y = 131.309, z = 5904.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197045, gadget_id = 70330392, pos = { x = -1926.837, y = 131.309, z = 5914.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197046, gadget_id = 70330392, pos = { x = -1916.837, y = 131.309, z = 5914.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197047, gadget_id = 70330392, pos = { x = -1916.837, y = 131.309, z = 5924.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197048, gadget_id = 70330392, pos = { x = -1946.837, y = 131.309, z = 5924.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197049, gadget_id = 70330392, pos = { x = -1956.837, y = 131.309, z = 5924.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197050, gadget_id = 70330392, pos = { x = -1962.122, y = 136.662, z = 5924.467 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197051, gadget_id = 70330392, pos = { x = -1946.837, y = 131.309, z = 5914.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197052, gadget_id = 70330392, pos = { x = -1936.837, y = 131.309, z = 5944.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197053, gadget_id = 70330392, pos = { x = -1926.837, y = 131.309, z = 5944.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197054, gadget_id = 70330393, pos = { x = -1946.837, y = 134.809, z = 5935.507 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197055, gadget_id = 70330392, pos = { x = -1949.462, y = 137.409, z = 5943.307 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197056, gadget_id = 70330392, pos = { x = -1948.062, y = 137.409, z = 5944.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197057, gadget_id = 70220103, pos = { x = -1947.512, y = 140.229, z = 5939.930 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 197058, gadget_id = 70330392, pos = { x = -1946.837, y = 131.309, z = 5944.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197059, gadget_id = 70330392, pos = { x = -1946.837, y = 131.309, z = 5934.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197060, gadget_id = 70330392, pos = { x = -1956.837, y = 131.309, z = 5934.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197061, gadget_id = 70330392, pos = { x = -1956.837, y = 131.309, z = 5944.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197062, gadget_id = 70330392, pos = { x = -1927.522, y = 136.613, z = 5929.167 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197063, gadget_id = 70330392, pos = { x = -1926.922, y = 136.613, z = 5919.767 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197064, gadget_id = 70330392, pos = { x = -1932.222, y = 136.613, z = 5914.467 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197065, gadget_id = 70330264, pos = { x = -1925.655, y = 137.513, z = 5902.085 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197066, gadget_id = 70330392, pos = { x = -1952.122, y = 136.613, z = 5914.567 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197067, gadget_id = 70330392, pos = { x = -1941.495, y = 136.613, z = 5904.515 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197068, gadget_id = 70330392, pos = { x = -1946.822, y = 136.613, z = 5909.867 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197069, gadget_id = 70330392, pos = { x = -1941.486, y = 136.613, z = 5924.500 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197070, gadget_id = 70330392, pos = { x = -1946.822, y = 136.613, z = 5919.867 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197071, gadget_id = 70330392, pos = { x = -1927.522, y = 136.613, z = 5939.855 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197072, gadget_id = 70330392, pos = { x = -1941.490, y = 136.613, z = 5934.550 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197073, gadget_id = 70330392, pos = { x = -1932.222, y = 136.613, z = 5934.507 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197074, gadget_id = 70330392, pos = { x = -1922.196, y = 136.613, z = 5944.567 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197075, gadget_id = 70330264, pos = { x = -1926.616, y = 137.607, z = 5947.551 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197076, gadget_id = 70330392, pos = { x = -1916.937, y = 131.309, z = 5904.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197077, gadget_id = 70330264, pos = { x = -1943.268, y = 137.613, z = 5950.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197078, gadget_id = 70330264, pos = { x = -1933.268, y = 137.613, z = 5950.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197079, gadget_id = 70330392, pos = { x = -1956.822, y = 136.613, z = 5919.867 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197080, gadget_id = 70330392, pos = { x = -1962.122, y = 136.662, z = 5944.514 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197081, gadget_id = 70290501, pos = { x = -1929.399, y = 127.329, z = 5942.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197082, gadget_id = 70290501, pos = { x = -1917.221, y = 133.219, z = 5933.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197083, gadget_id = 70290501, pos = { x = -1934.508, y = 133.129, z = 5906.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197084, gadget_id = 70290501, pos = { x = -1936.954, y = 133.129, z = 5941.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197085, gadget_id = 70290501, pos = { x = -1937.046, y = 133.129, z = 5914.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197086, gadget_id = 70290501, pos = { x = -1927.630, y = 133.129, z = 5905.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197087, gadget_id = 70290501, pos = { x = -1936.498, y = 133.129, z = 5927.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197088, gadget_id = 70290501, pos = { x = -1936.591, y = 133.129, z = 5933.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197089, gadget_id = 70330392, pos = { x = -1925.066, y = 130.862, z = 5934.209 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197090, gadget_id = 70290501, pos = { x = -1926.934, y = 133.129, z = 5944.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197091, gadget_id = 70290501, pos = { x = -1947.669, y = 133.129, z = 5940.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197092, gadget_id = 70290501, pos = { x = -1931.951, y = 133.129, z = 5943.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197093, gadget_id = 70290501, pos = { x = -1954.693, y = 133.129, z = 5941.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197094, gadget_id = 70290501, pos = { x = -1946.427, y = 116.700, z = 5933.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197095, gadget_id = 70290501, pos = { x = -1953.912, y = 133.129, z = 5926.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197096, gadget_id = 70290501, pos = { x = -1948.372, y = 133.129, z = 5926.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197097, gadget_id = 70290501, pos = { x = -1946.735, y = 137.417, z = 5936.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197098, gadget_id = 70290501, pos = { x = -1948.502, y = 139.229, z = 5940.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197099, gadget_id = 70290501, pos = { x = -1957.093, y = 133.129, z = 5932.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197100, gadget_id = 70290501, pos = { x = -1946.749, y = 134.677, z = 5931.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197101, gadget_id = 70290501, pos = { x = -1942.357, y = 133.129, z = 5943.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197102, gadget_id = 70290501, pos = { x = -1936.771, y = 133.129, z = 5921.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197103, gadget_id = 70290501, pos = { x = -1922.223, y = 133.129, z = 5917.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197104, gadget_id = 70290501, pos = { x = -1925.932, y = 133.129, z = 5911.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197105, gadget_id = 70290501, pos = { x = -1924.229, y = 133.129, z = 5924.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197106, gadget_id = 70290501, pos = { x = -1922.037, y = 128.838, z = 5939.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197107, gadget_id = 70290501, pos = { x = -1926.351, y = 127.329, z = 5939.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197108, gadget_id = 70290501, pos = { x = -1937.507, y = 122.931, z = 5938.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197109, gadget_id = 70330392, pos = { x = -1917.978, y = 130.862, z = 5938.344 }, rot = { x = 90.000, y = 60.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197110, gadget_id = 70290501, pos = { x = -1951.069, y = 115.398, z = 5923.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197111, gadget_id = 70290501, pos = { x = -1928.170, y = 114.862, z = 5926.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197112, gadget_id = 70290501, pos = { x = -1931.396, y = 133.129, z = 5924.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197113, gadget_id = 70290501, pos = { x = -1960.152, y = 133.129, z = 5935.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197114, gadget_id = 70290501, pos = { x = -1959.022, y = 133.129, z = 5939.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 197115, gadget_id = 70330392, pos = { x = -1962.122, y = 136.662, z = 5934.467 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197012, name = "CHALLENGE_SUCCESS_197012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_197012", trigger_count = 0 },
	{ config_id = 1197013, name = "CHALLENGE_FAIL_197013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_197013", trigger_count = 0 },
	{ config_id = 1197014, name = "GADGET_STATE_CHANGE_197014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197014", action = "action_EVENT_GADGET_STATE_CHANGE_197014", trigger_count = 0 },
	{ config_id = 1197015, name = "ANY_GADGET_DIE_197015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1197016, name = "GADGET_CREATE_197016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_197016", action = "action_EVENT_GADGET_CREATE_197016", trigger_count = 0 },
	{ config_id = 1197017, name = "SELECT_OPTION_197017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_197017", action = "action_EVENT_SELECT_OPTION_197017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1197018, name = "GROUP_LOAD_197018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_197018", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 197002, 197003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_197012", "CHALLENGE_FAIL_197013", "GADGET_STATE_CHANGE_197014", "ANY_GADGET_DIE_197015", "GADGET_CREATE_197016", "SELECT_OPTION_197017", "GROUP_LOAD_197018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 197004, 197005, 197006, 197007, 197008, 197009, 197010, 197011, 197081, 197082, 197083, 197084, 197085, 197086, 197087, 197088, 197090, 197091, 197092, 197093, 197094, 197095, 197096, 197097, 197098, 197099, 197100, 197101, 197102, 197103, 197104, 197105, 197106, 197107, 197108, 197110, 197111, 197112, 197113, 197114 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { 197002, 197055, 197057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 197019, 197020, 197021, 197022, 197023, 197024, 197025, 197026, 197027, 197028, 197029, 197030, 197031, 197032, 197033, 197034, 197035, 197036, 197037, 197038, 197039, 197040, 197041, 197042, 197043, 197044, 197045, 197046, 197047, 197048, 197049, 197050, 197051, 197052, 197053, 197054, 197056, 197058, 197059, 197060, 197061, 197062, 197063, 197064, 197065, 197066, 197067, 197068, 197069, 197070, 197071, 197072, 197073, 197074, 197075, 197076, 197077, 197078, 197079, 197080, 197089, 197109, 197115 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_197012(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133307008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 197002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307197, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133307197, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307197, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为197001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_197013(context, evt)
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为197003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307197, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307197, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197014(context, evt)
	if 197002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_197014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_197016(context, evt)
	if 197003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_197016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307197, 197003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_197017(context, evt)
	-- 判断是gadgetid 197003 option_id 177
	if 197003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_197017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 197003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 197002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1930.896，114.9163，5930.555），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1930.896, y=114.9163, z=5930.555}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_197018(context, evt)
	-- 将configid为 197002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 197002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为197003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307197, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end