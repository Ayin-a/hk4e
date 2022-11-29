-- 地图配置
scene_config = {
	begin_pos = { x = -700.0, z = -600.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = -559.530, y = 89.698, z = -267.732 },
	born_rot = { x = 0.000, y = 315.437, z = 0.000 },
	born_point_list = {
		{ pos = { x = -561.469, y = 89.698, z = -269.641 }, rot = { x = 0.000, y = 315.437, z = 0.000 } },
		{ pos = { x = -559.530, y = 89.698, z = -267.732 }, rot = { x = 0.000, y = 315.437, z = 0.000 } },
		{ pos = { x = -557.204, y = 89.698, z = -265.442 }, rot = { x = 0.000, y = 315.437, z = 0.000 } },
		{ pos = { x = -558.015, y = 89.698, z = -269.270 }, rot = { x = 0.000, y = 315.437, z = 0.000 } }
	},
	die_y = -20,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 47025 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -700.0, z = -600.0 }, max = { x = 324.0, z = 424.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }