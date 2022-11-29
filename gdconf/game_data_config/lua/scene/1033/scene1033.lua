-- 地图配置
scene_config = {
	begin_pos = { x = -200.0, z = -200.0 },
	size = { x = 400.0, z = 400.0 },
	born_pos = { x = 0.000, y = 0.000, z = 8.000 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	die_y = -100,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -583.000,
			y = 244.000,
			z = 347.000
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
blocks = { 1033 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -200.0, z = -200.0 }, max = { x = 200.0, z = 200.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }