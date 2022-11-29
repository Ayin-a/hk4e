-- 地图配置
scene_config = {
	begin_pos = { x = -320.0, z = -400.0 },
	size = { x = 700.0, z = 800.0 },
	born_pos = { x = -54.200, y = 82.125, z = 23.320 },
	born_rot = { x = 0.000, y = 90.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = -54.200, y = 82.125, z = 23.320 }, rot = { x = 0.000, y = 96.562, z = 0.000 } },
		{ pos = { x = -54.200, y = 82.125, z = 25.320 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
		{ pos = { x = -54.200, y = 82.125, z = 21.320 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
		{ pos = { x = -54.200, y = 82.125, z = 27.320 }, rot = { x = 0.000, y = 90.000, z = 0.000 } }
	},
	die_y = -10,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 35850 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -320.0, z = -400.0 }, max = { x = 380.0, z = 400.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }