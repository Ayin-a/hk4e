-- 地图配置
scene_config = {
	begin_pos = { x = -268.9, z = -256.2 },
	size = { x = 1588.2, z = 1545.9 },
	born_pos = { x = 400.000, y = 0.000, z = 400.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 400.000, y = 0.000, z = 400.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 398.000, y = 0.000, z = 398.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 398.000, y = 0.000, z = 402.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 402.000, y = 0.000, z = 402.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 2,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 51008 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -268.9, z = -256.2 }, max = { x = 1319.3, z = 1289.7 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }