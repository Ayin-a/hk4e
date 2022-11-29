-- 地图配置
scene_config = {
	begin_pos = { x = 0.0, z = -2500.0 },
	size = { x = 2048.0, z = 2048.0 },
	born_pos = { x = 498.000, y = 609.000, z = -1650.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 427.939, y = 615.224, z = -1632.580 }, rot = { x = 0.000, y = 244.214, z = 0.000 } },
		{ pos = { x = 424.275, y = 615.224, z = -1627.914 }, rot = { x = 0.000, y = 240.875, z = 0.000 } },
		{ pos = { x = 430.926, y = 615.039, z = -1630.760 }, rot = { x = 0.000, y = 253.876, z = 0.000 } },
		{ pos = { x = 427.935, y = 615.039, z = -1626.457 }, rot = { x = 0.000, y = 243.657, z = 0.000 } }
	},
	die_y = -50,
	city_id = 1,
	vision_anchor = { x = 0.0, z = -3000.0 }
}

-- 所有的区块
blocks = { 35852 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 0.0, z = -2500.0 }, max = { x = 2048.0, z = -452.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }