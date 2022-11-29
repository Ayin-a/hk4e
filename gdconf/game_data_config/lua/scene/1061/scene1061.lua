-- 地图配置
scene_config = {
	begin_pos = { x = -50.0, z = -50.0 },
	size = { x = 100.0, z = 100.0 },
	born_pos = { x = -0.232, y = 0.200, z = 12.753 },
	born_rot = { x = 0.000, y = 179.700, z = 0.000 },
	die_y = -50,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -2536.753,
			y = 275.883,
			z = -4621.155
		},
		safe_rot = {
			x = 0.000,
			y = 277.000,
			z = 0.000
		}
	},
	vision_anchor = { x = -50.0, z = -50.0 }
}

-- 所有的区块
blocks = { 1061 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -50.0, z = -50.0 }, max = { x = 50.0, z = 50.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }