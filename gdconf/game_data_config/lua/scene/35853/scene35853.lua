-- 地图配置
scene_config = {
	begin_pos = { x = 0.0, z = -2500.0 },
	size = { x = 2048.0, z = 2048.0 },
	born_pos = { x = 498.000, y = 609.000, z = -1650.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 178.110, y = 647.230, z = -1823.659 }, rot = { x = 0.000, y = 242.044, z = 0.000 } },
		{ pos = { x = 177.275, y = 647.230, z = -1821.034 }, rot = { x = 0.000, y = 240.628, z = 0.000 } },
		{ pos = { x = 181.967, y = 647.230, z = -1821.578 }, rot = { x = 0.000, y = 238.620, z = 0.000 } },
		{ pos = { x = 180.629, y = 647.230, z = -1819.149 }, rot = { x = 0.000, y = 243.692, z = 0.000 } }
	},
	die_y = -50,
	city_id = 1,
	vision_anchor = { x = 0.0, z = -3000.0 }
}

-- 所有的区块
blocks = { 35853 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 0.0, z = -2500.0 }, max = { x = 2048.0, z = -452.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }