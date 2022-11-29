-- 地图配置
scene_config = {
	begin_pos = { x = -400.0, z = -300.0 },
	size = { x = 1024.0, z = 1800.0 },
	born_pos = { x = 0.000, y = 0.000, z = 0.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = -60,
	city_id = 1,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 50085 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -400.0, z = -300.0 }, max = { x = 624.0, z = 1500.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }