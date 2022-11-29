-- 地图配置
scene_config = {
	begin_pos = { x = -50.0, z = -80.0 },
	size = { x = 200.0, z = 300.0 },
	born_pos = { x = 0.000, y = -7.233, z = 90.181 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.153, y = -7.233, z = 89.149 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 2.350, y = -7.233, z = 91.652 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -2.196, y = -7.233, z = 91.554 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.050, y = -7.233, z = 93.777 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -10,
	city_id = 3,
	vision_anchor = { x = -50.0, z = -80.0 }
}

-- 所有的区块
blocks = { 40900 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -50.0, z = -80.0 }, max = { x = 150.0, z = 220.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }