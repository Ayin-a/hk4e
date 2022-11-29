-- 基础信息
local base_info = {
	group_id = 144002077
}

-- DEFS_MISCS
local vision_def = {
	[11] = { enter = 77003, leave = 77003 },
	[12] = { enter = 77004, leave = 77004 },
      [13] = { enter = 77005, leave = 77005 },
      [14] = { enter = 77025, leave = 77025 },
      [31] = { enter = 77002, leave = 77002 },
      [32] = { enter = 77018, leave = 77018 },
      [33] = { enter = 77019, leave = 77019 },
      [34] = { enter = 77020, leave = 77020 },
      [35] = { enter = 77021, leave = 77021 },
      [36] = { enter = 77022, leave = 77022 },
	[71] = { enter = 77006, leave = 77006 },
	[72] = { enter = 77008, leave = 77008 },
	[73] = { enter = 77007, leave = 77007 },
	[74] = { enter = 77009, leave = 77009 },
	[75] = { enter = 77010, leave = 77010 },
	[76] = { enter = 77011, leave = 77011 },
	[77] = { enter = 77012, leave = 77012 },
	[61] = { enter = 77013, leave = 77013 },
	[62] = { enter = 77014, leave = 77014 },
	[63] = { enter = 77015, leave = 77015 },
	[64] = { enter = 77016, leave = 77016 },
	[65] = { enter = 77017, leave = 77017 },
	[78] = { enter = 77023, leave = 77023 },
	[66] = { enter = 77024, leave = 77024 },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	[77001] = { config_id = 77001, shape = RegionShape.CUBIC, size = { x = 2048.000, y = 400.000, z = 2048.000 }, pos = { x = 338.660, y = 200.000, z = -145.006 }, area_id = 102 },
	-- vision 31 高
	[77002] = { config_id = 77002, shape = RegionShape.CUBIC, size = { x = 350.000, y = 180.000, z = 400.000 }, pos = { x = 506.507, y = 236.450, z = -591.713 }, area_id = 101 },
	-- vision 11 高
	[77003] = { config_id = 77003, shape = RegionShape.CUBIC, size = { x = 250.000, y = 100.000, z = 250.000 }, pos = { x = -704.430, y = 215.000, z = 14.930 }, area_id = 103 },
	-- vision 12 低
	[77004] = { config_id = 77004, shape = RegionShape.CUBIC, size = { x = 250.000, y = 100.000, z = 250.000 }, pos = { x = -704.430, y = 115.000, z = 14.930 }, area_id = 103 },
	-- vision 13 高
	[77005] = { config_id = 77005, shape = RegionShape.CUBIC, size = { x = 150.000, y = 100.000, z = 200.000 }, pos = { x = -704.430, y = 197.167, z = -119.109 }, area_id = 103 },
	-- vision 71 高
	[77006] = { config_id = 77006, shape = RegionShape.CUBIC, size = { x = 300.000, y = 70.000, z = 350.000 }, pos = { x = 244.409, y = 214.238, z = 291.752 }, area_id = 102 },
	-- vision 73 高
	[77007] = { config_id = 77007, shape = RegionShape.CUBIC, size = { x = 300.000, y = 170.000, z = 150.000 }, pos = { x = 139.865, y = 196.616, z = 399.639 }, area_id = 102 },
	-- vision 72 高
	[77008] = { config_id = 77008, shape = RegionShape.CUBIC, size = { x = 40.000, y = 30.000, z = 70.000 }, pos = { x = 199.924, y = 144.289, z = 322.134 }, area_id = 102 },
	-- vision 74 高
	[77009] = { config_id = 77009, shape = RegionShape.CUBIC, size = { x = 230.000, y = 50.000, z = 150.000 }, pos = { x = 196.393, y = 122.647, z = 313.639 }, area_id = 102 },
	-- vision 75 高
	[77010] = { config_id = 77010, shape = RegionShape.CUBIC, size = { x = 170.000, y = 50.000, z = 230.000 }, pos = { x = 188.470, y = 122.647, z = 181.451 }, area_id = 102 },
	-- vision 76 高
	[77011] = { config_id = 77011, shape = RegionShape.CUBIC, size = { x = 170.000, y = 50.000, z = 230.000 }, pos = { x = 384.308, y = 122.647, z = 135.583 }, area_id = 102 },
	-- vision 77 高
	[77012] = { config_id = 77012, shape = RegionShape.CUBIC, size = { x = 220.000, y = 50.000, z = 170.000 }, pos = { x = 172.198, y = 122.647, z = 550.880 }, area_id = 102 },
	-- vision 61 高
	[77013] = { config_id = 77013, shape = RegionShape.CUBIC, size = { x = 100.000, y = 50.000, z = 100.000 }, pos = { x = 784.475, y = 254.795, z = 297.688 }, area_id = 102 },
	-- vision 62 高
	[77014] = { config_id = 77014, shape = RegionShape.CUBIC, size = { x = 100.000, y = 50.000, z = 100.000 }, pos = { x = 784.475, y = 235.507, z = 336.115 }, area_id = 102 },
	-- vision 63 高
	[77015] = { config_id = 77015, shape = RegionShape.CUBIC, size = { x = 100.000, y = 70.000, z = 100.000 }, pos = { x = 784.475, y = 219.663, z = 252.715 }, area_id = 102 },
	-- vision 64 高
	[77016] = { config_id = 77016, shape = RegionShape.CUBIC, size = { x = 110.000, y = 90.000, z = 130.000 }, pos = { x = 730.761, y = 204.145, z = 267.972 }, area_id = 102 },
	-- vision 65 高
	[77017] = { config_id = 77017, shape = RegionShape.CUBIC, size = { x = 120.000, y = 60.000, z = 120.000 }, pos = { x = 683.746, y = 197.615, z = 326.559 }, area_id = 102 },
	-- vision 32 低
	[77018] = { config_id = 77018, shape = RegionShape.CUBIC, size = { x = 200.000, y = 120.000, z = 200.000 }, pos = { x = 448.390, y = 171.167, z = -372.516 }, area_id = 101 },
	-- vision 33 低
	[77019] = { config_id = 77019, shape = RegionShape.CUBIC, size = { x = 250.000, y = 120.000, z = 200.000 }, pos = { x = 565.326, y = 171.167, z = -372.177 }, area_id = 101 },
	-- vision 34 低
	[77020] = { config_id = 77020, shape = RegionShape.CUBIC, size = { x = 300.000, y = 120.000, z = 250.000 }, pos = { x = 605.712, y = 171.167, z = -587.585 }, area_id = 101 },
	-- vision 35 低
	[77021] = { config_id = 77021, shape = RegionShape.CUBIC, size = { x = 200.000, y = 120.000, z = 200.000 }, pos = { x = 368.012, y = 171.167, z = -511.226 }, area_id = 101 },
	-- vision 36 低
	[77022] = { config_id = 77022, shape = RegionShape.CUBIC, size = { x = 250.000, y = 120.000, z = 350.000 }, pos = { x = 451.887, y = 171.167, z = -666.000 }, area_id = 101 },
	-- vision 78 高
	[77023] = { config_id = 77023, shape = RegionShape.CUBIC, size = { x = 170.000, y = 70.000, z = 220.000 }, pos = { x = 133.804, y = 145.663, z = 347.722 }, area_id = 102 },
	-- vision 66 高
	[77024] = { config_id = 77024, shape = RegionShape.CUBIC, size = { x = 240.000, y = 40.000, z = 240.000 }, pos = { x = 733.212, y = 137.062, z = 288.271 }, area_id = 102 },
	-- vision 14 高
	[77025] = { config_id = 77025, shape = RegionShape.CUBIC, size = { x = 100.000, y = 100.000, z = 100.000 }, pos = { x = -723.558, y = 192.090, z = -2.476 }, area_id = 103 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 77001, 77002, 77003, 77004, 77005, 77006, 77007, 77008, 77009, 77010, 77011, 77012, 77013, 77014, 77015, 77016, 77017, 77018, 77019, 77020, 77021, 77022, 77023, 77024, 77025 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V1_6/Optimization"