-- 地图配置
scene_config = {
	begin_pos = { x = -600.0, z = -600.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = -378.301, y = 18.683, z = -323.102 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = -378.301, y = 18.683, z = -323.102 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -376.078, y = 18.683, z = -321.260 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -380.284, y = 18.683, z = -321.353 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -378.301, y = 18.683, z = -319.707 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -40,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 47024 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -600.0, z = -600.0 }, max = { x = 424.0, z = 424.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }