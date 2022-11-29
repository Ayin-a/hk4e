-- 地图配置
scene_config = {
	begin_pos = { x = -109.8, z = -101.6 },
	size = { x = 153.6, z = 187.6 },
	born_pos = { x = 0.000, y = 0.100, z = 2.700 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	die_y = -50,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = 1772.000,
			y = 222.000,
			z = -392.000
		},
		safe_rot = {
			x = 0.000,
			y = 0.000,
			z = 0.000
		}
	},
	vision_anchor = { x = -109.8, z = -101.6 }
}

-- 所有的区块
blocks = { 1018 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -109.8, z = -101.6 }, max = { x = 43.8, z = 86.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }