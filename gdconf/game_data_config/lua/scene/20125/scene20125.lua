-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 0.000, y = 0.000, z = 0.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = -0.056, y = 0.000, z = -11.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = -1.735, y = 0.000, z = -11.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = 1.755, y = 0.000, z = -11.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
		{ pos = { x = -0.020, y = 0.000, z = -13.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 3,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 20125 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }