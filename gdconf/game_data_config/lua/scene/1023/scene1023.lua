-- 地图配置
scene_config = {
	begin_pos = { x = -250.0, z = -250.0 },
	size = { x = 500.0, z = 500.0 },
	born_pos = { x = -80.955, y = 1.796, z = -42.649 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = -30,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = 2246.000,
			y = 236.000,
			z = -786.000
		},
		safe_rot = {
			x = 0.000,
			y = 0.000,
			z = 0.000
		}
	},
	vision_anchor = { x = -250.0, z = -250.0 }
}

-- 所有的区块
blocks = { 1023 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -250.0, z = -250.0 }, max = { x = 250.0, z = 250.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }