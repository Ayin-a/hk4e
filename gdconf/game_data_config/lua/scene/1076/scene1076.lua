-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 0.195, y = 0.000, z = 7.002 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = -1.750, y = 0.000, z = 5.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = -1.592, y = 0.000, z = 8.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 0.000, y = 0.000, z = 8.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 0.000, y = 0.000, z = 6.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
	},
	die_y = -20,
	room_safe_pos = {
		scene_id = 3,
		safe_pos = {
			x = 2300.000,
			y = 214.000,
			z = -922.000
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
blocks = { 1076 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }