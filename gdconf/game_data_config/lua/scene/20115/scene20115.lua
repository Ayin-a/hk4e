-- 地图配置
scene_config = {
	begin_pos = { x = -1200.0, z = -1200.0 },
	size = { x = 1900.0, z = 2220.0 },
	born_pos = { x = 0.000, y = 0.147, z = -8.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.000, y = 0.147, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 3.000, y = 0.147, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = -3.000, y = 0.147, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 6.000, y = 0.147, z = -8.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
	},
	die_y = -100,
	city_id = 3,
	vision_anchor = { x = -1200.0, z = -1200.0 }
}

-- 所有的区块
blocks = { 20115 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -1200.0, z = -1200.0 }, max = { x = 700.0, z = 1020.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }