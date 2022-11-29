-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 2.752, y = -0.155, z = -2.643 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = -20,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -560.000,
			y = 228.000,
			z = 333.000
		},
		safe_rot = {
			x = 0.000,
			y = 0.000,
			z = 0.000
		}
	},
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 1077 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }