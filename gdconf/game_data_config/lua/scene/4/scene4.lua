-- 地图配置
scene_config = {
	begin_pos = { x = -2048.0, z = -2048.0 },
	size = { x = 4096.0, z = 4096.0 },
	born_pos = { x = -338.492, y = 227.892, z = -665.085 },
	born_rot = { x = 0.000, y = 55.174, z = 0.000 },
	die_y = 0,
	vision_anchor = { x = -2048.0, z = -2048.0 }
}

-- 所有的区块
blocks = { 4001, 4002, 4003, 4004, 4005 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 0.0, z = 0.0 }, max = { x = 1024.0, z = 1024.0 } },
	{ min = { x = 0.0, z = -1024.0 }, max = { x = 1024.0, z = 0.0 } },
	{ min = { x = -1024.0, z = 0.0 }, max = { x = 0.0, z = 1024.0 } },
	{ min = { x = -1024.0, z = -1024.0 }, max = { x = 0.0, z = 0.0 } },
	{ min = { x = 1024.0, z = -1024.0 }, max = { x = 2048.0, z = 0.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { "routes" }