-- 地图配置
scene_config = {
	begin_pos = { x = -5000.0, z = -5000.0 },
	size = { x = 10000.0, z = 10000.0 },
	born_pos = { x = 0.072, y = -0.102, z = 14.067 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.072, y = -0.102, z = 14.067 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 2.014, y = -0.102, z = 15.945 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -2.047, y = -0.102, z = 15.976 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.015, y = -0.102, z = 17.975 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -25,
	city_id = 3,
	vision_anchor = { x = -5000.0, z = -5000.0 }
}

-- 所有的区块
blocks = { 46001 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -5000.0, z = -5000.0 }, max = { x = 5000.0, z = 5000.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }