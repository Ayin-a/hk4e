-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 3.470, y = -0.102, z = 15.908 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.000, y = -0.102, z = 15.252 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -3.267, y = -0.102, z = 14.987 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 3.746, y = -0.102, z = 14.772 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -0.011, y = -0.102, z = 17.820 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 2,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 44011 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }