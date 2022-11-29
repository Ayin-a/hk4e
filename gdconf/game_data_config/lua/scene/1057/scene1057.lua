-- 地图配置
scene_config = {
	begin_pos = { x = -200.0, z = -200.0 },
	size = { x = 500.0, z = 500.0 },
	born_pos = { x = 0.268, y = 0.319, z = 22.740 },
	born_rot = { x = 0.000, y = 180.210, z = 0.000 },
	die_y = -300,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -817.000,
			y = 464.000,
			z = 437.000
		},
		safe_rot = {
			x = 0.000,
			y = 0.000,
			z = 0.000
		}
	},
	vision_anchor = { x = -200.0, z = -200.0 }
}

-- 所有的区块
blocks = { 1057 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -200.0, z = -200.0 }, max = { x = 300.0, z = 300.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }