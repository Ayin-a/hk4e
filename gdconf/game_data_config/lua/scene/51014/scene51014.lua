-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 0.000, y = 16.679, z = 83.907 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.000, y = 16.679, z = 81.881 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 2.000, y = 16.679, z = 83.907 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -2.000, y = 16.679, z = 83.907 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.000, y = 16.679, z = 86.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -20,
	city_id = 4,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 51014 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { }