-- 地图配置
scene_config = {
	begin_pos = { x = -50.0, z = -50.0 },
	size = { x = 100.0, z = 100.0 },
	born_pos = { x = 11.513, y = -0.067, z = 5.489 },
	born_rot = { x = 0.000, y = 179.340, z = 0.000 },
	die_y = -50,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -3114.180,
			y = 246.655,
			z = -4384.910
		},
		safe_rot = {
			x = 0.000,
			y = 73.330,
			z = 0.000
		}
	},
	vision_anchor = { x = -50.0, z = -50.0 }
}

-- 所有的区块
blocks = { 1060 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -50.0, z = -50.0 }, max = { x = 50.0, z = 50.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }