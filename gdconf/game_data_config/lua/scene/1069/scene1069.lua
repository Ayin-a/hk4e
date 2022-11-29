-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = -1.676, y = 5.723, z = -54.763 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = -20,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = -1.676,
			y = 5.733,
			z = -54.958
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
blocks = { 1069 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }