-- 地图配置
scene_config = {
	begin_pos = { x = -500.0, z = -500.0 },
	size = { x = 1000.0, z = 1000.0 },
	born_pos = { x = -0.469, y = 0.000, z = 0.295 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = -50,
	city_id = 1,
	vision_anchor = { x = -500.0, z = -500.0 }
}

-- 所有的区块
blocks = { 1001 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -500.0, z = -500.0 }, max = { x = 500.0, z = 500.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { "routes" }