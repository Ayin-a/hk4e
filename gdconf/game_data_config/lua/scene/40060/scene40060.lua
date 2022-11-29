-- 地图配置
scene_config = {
	begin_pos = { x = -32.0, z = -32.0 },
	size = { x = 256.0, z = 256.0 },
	born_pos = { x = 0.187, y = 0.000, z = 14.504 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.191, y = 0.000, z = 14.518 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.191, y = 0.000, z = 20.374 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 3.175, y = 0.000, z = 17.418 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -2.686, y = 0.000, z = 17.488 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 40060 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -32.0, z = -32.0 }, max = { x = 224.0, z = 224.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }