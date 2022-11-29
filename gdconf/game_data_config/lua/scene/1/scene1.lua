-- 地图配置
scene_config = {
	begin_pos = { x = -2048.0, z = -3072.0 },
	size = { x = 5120.0, z = 5120.0 },
	born_pos = { x = 2563.000, y = 366.000, z = -1331.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = 0,
	vision_anchor = { x = -2048.0, z = -3072.0 }
}

-- 所有的区块
blocks = { 1101, 1102, 1103 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 2048.0, z = -2048.0 }, max = { x = 3072.0, z = -1024.0 } },
	{ min = { x = 1024.0, z = -2048.0 }, max = { x = 2048.0, z = -1024.0 } },
	{ min = { x = 2048.0, z = -3072.0 }, max = { x = 3072.0, z = -2048.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { "routes" }