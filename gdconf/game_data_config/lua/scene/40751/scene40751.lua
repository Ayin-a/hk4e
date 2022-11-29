-- 地图配置
scene_config = {
	begin_pos = { x = -50.0, z = -80.0 },
	size = { x = 200.0, z = 300.0 },
	born_pos = { x = 0.101, y = 16.500, z = 82.500 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.101, y = 16.500, z = 82.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 2.883, y = 16.500, z = 84.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -2.481, y = 16.500, z = 84.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.252, y = 16.500, z = 86.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = 0,
	city_id = 4,
	vision_anchor = { x = -50.0, z = -80.0 }
}

-- 所有的区块
blocks = { 40751 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -50.0, z = -80.0 }, max = { x = 150.0, z = 220.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }