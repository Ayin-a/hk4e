-- 地图配置
scene_config = {
	begin_pos = { x = -285.0, z = -285.0 },
	size = { x = 571.0, z = 571.0 },
	born_pos = { x = 0.000, y = 0.000, z = 12.000 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.000, y = 0.000, z = 12.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.000, y = 0.000, z = 16.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 4.000, y = 0.000, z = 14.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -4.000, y = 0.000, z = 14.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -30,
	city_id = 2,
	vision_anchor = { x = -285.0, z = -285.0 }
}

-- 所有的区块
blocks = { 40041 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -285.0, z = -285.0 }, max = { x = 286.0, z = 286.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }