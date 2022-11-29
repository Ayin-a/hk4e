-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 0.000, y = 0.000, z = 0.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.013, y = 0.000, z = 12.041 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -4.015, y = 0.000, z = 12.065 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 4.033, y = 0.000, z = 12.113 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.005, y = 0.000, z = 16.092 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 44013 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }