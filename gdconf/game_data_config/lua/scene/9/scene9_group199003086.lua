-- 基础信息
local base_info = {
	group_id = 199003086
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
	-- 里-遗迹顶端
	{ config_id = 86001, shape = RegionShape.CUBIC, size = { x = 200.000, y = 200.000, z = 300.000 }, pos = { x = -731.937, y = 331.042, z = -18.494 }, area_id = 403, vision_type_list = { 90030001 } },
	-- 表-颠倒山顶端
	{ config_id = 86002, shape = RegionShape.CUBIC, size = { x = 200.000, y = 40.000, z = 200.000 }, pos = { x = -703.357, y = 201.231, z = -18.494 }, area_id = 403, vision_type_list = { 90030002, 90030003, 90030006 } },
	-- 表-小山顶端
	{ config_id = 86003, shape = RegionShape.CUBIC, size = { x = 100.000, y = 100.000, z = 100.000 }, pos = { x = -703.357, y = 200.515, z = -161.833 }, area_id = 403, vision_type_list = { 90030003, 90030005 } },
	-- 表-中层遗迹
	{ config_id = 86004, shape = RegionShape.CUBIC, size = { x = 60.000, y = 50.000, z = 60.000 }, pos = { x = -718.619, y = 167.862, z = -4.621 }, area_id = 403, vision_type_list = { 90030004 } },
	-- 表-颠倒山下层
	{ config_id = 86005, shape = RegionShape.CUBIC, size = { x = 300.000, y = 50.000, z = 300.000 }, pos = { x = -700.620, y = 135.358, z = -39.025 }, area_id = 403, vision_type_list = { 90030005 } },
	-- 表-小山下层
	{ config_id = 86006, shape = RegionShape.CUBIC, size = { x = 300.000, y = 60.000, z = 250.000 }, pos = { x = -700.620, y = 139.179, z = -180.555 }, area_id = 403, vision_type_list = { 90030006 } },
	-- 里-遗迹内部
	{ config_id = 86007, shape = RegionShape.CUBIC, size = { x = 60.000, y = 60.000, z = 60.000 }, pos = { x = -723.435, y = 208.825, z = -29.088 }, area_id = 403, vision_type_list = { 90030007 } },
	-- 里-遗迹山坡侧
	{ config_id = 86008, shape = RegionShape.CUBIC, size = { x = 200.000, y = 80.000, z = 200.000 }, pos = { x = -747.950, y = 150.258, z = 109.061 }, area_id = 403, vision_type_list = { 90030008 } },
	-- 表-透明砖块专门
	{ config_id = 86009, shape = RegionShape.CUBIC, size = { x = 170.000, y = 120.000, z = 120.000 }, pos = { x = -718.619, y = 163.425, z = -4.621 }, area_id = 403, vision_type_list = { 90030009 } },
	-- 表-最高处看星星
	{ config_id = 86010, shape = RegionShape.CUBIC, size = { x = 170.000, y = 150.000, z = 150.000 }, pos = { x = -701.163, y = 289.989, z = 15.574 }, area_id = 403, vision_type_list = { 90030010 } },
	-- 全-方碑WQ最终
	{ config_id = 86011, shape = RegionShape.CUBIC, size = { x = 170.000, y = 70.000, z = 120.000 }, pos = { x = -933.472, y = 389.624, z = -114.822 }, area_id = 403, vision_type_list = { 90030011 } },
	-- 表-遗失
	{ config_id = 86012, shape = RegionShape.CUBIC, size = { x = 150.000, y = 100.000, z = 150.000 }, pos = { x = -736.297, y = 99.050, z = 406.085 }, area_id = 403, vision_type_list = { 90030012 } },
	-- 里-小山下层
	{ config_id = 86013, shape = RegionShape.CUBIC, size = { x = 200.000, y = 120.000, z = 260.000 }, pos = { x = -701.771, y = 134.713, z = -159.500 }, area_id = 403, vision_type_list = { 90030013 } },
	-- 里-遗迹下层
	{ config_id = 86014, shape = RegionShape.CUBIC, size = { x = 100.000, y = 60.000, z = 160.000 }, pos = { x = -732.024, y = 149.101, z = -31.170 }, area_id = 403, vision_type_list = { 90030014 } },
	-- 里-遗迹边透明砖块
	{ config_id = 86015, shape = RegionShape.CUBIC, size = { x = 40.000, y = 40.000, z = 40.000 }, pos = { x = -731.937, y = 241.140, z = 23.534 }, area_id = 403, vision_type_list = { 90030016 } },
	-- 里-天空遗迹
	{ config_id = 86016, shape = RegionShape.CUBIC, size = { x = 120.000, y = 60.000, z = 120.000 }, pos = { x = -737.908, y = 328.716, z = -79.288 }, area_id = 403, vision_type_list = { 90030015 } },
	-- 里-山洞
	{ config_id = 86017, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 40.000 }, pos = { x = -690.769, y = 135.923, z = 30.844 }, area_id = 403, vision_type_list = { 90030017 } },
	-- 里-桥洞
	{ config_id = 86018, shape = RegionShape.CUBIC, size = { x = 150.000, y = 30.000, z = 100.000 }, pos = { x = -736.485, y = 120.000, z = 66.225 }, area_id = 403, vision_type_list = { 90030018 } },
	-- 里-山坡左
	{ config_id = 86019, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 80.000 }, pos = { x = -660.497, y = 120.000, z = 55.988 }, area_id = 403, vision_type_list = { 90030019 } },
	-- 里-山坡右
	{ config_id = 86020, shape = RegionShape.CUBIC, size = { x = 100.000, y = 90.000, z = 150.000 }, pos = { x = -792.274, y = 120.000, z = 22.465 }, area_id = 403, vision_type_list = { 90030020 } },
	-- 里-山坡左
	{ config_id = 86021, shape = RegionShape.CUBIC, size = { x = 120.000, y = 80.000, z = 180.000 }, pos = { x = -660.372, y = 120.000, z = -55.575 }, area_id = 403, vision_type_list = { 90030021 } }
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
		regions = { 86001, 86002, 86003, 86004, 86005, 86006, 86007, 86008, 86009, 86010, 86011, 86012, 86013, 86014, 86015, 86016, 86017, 86018, 86019, 86020, 86021 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================