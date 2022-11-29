-- 基础信息
local base_info = {
	group_id = 199001238
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
	-- popo1下半
	{ config_id = 238001, shape = RegionShape.CUBIC, size = { x = 140.000, y = 45.000, z = 120.000 }, pos = { x = 306.009, y = 124.295, z = 159.052 }, area_id = 402, vision_type_list = { 90010001 } },
	-- popo1上半
	{ config_id = 238002, shape = RegionShape.CUBIC, size = { x = 120.000, y = 100.000, z = 120.000 }, pos = { x = 329.468, y = 210.395, z = 185.664 }, area_id = 402, vision_type_list = { 90010002 } },
	-- popo1上半的怪物营地
	{ config_id = 238003, shape = RegionShape.CUBIC, size = { x = 40.000, y = 30.000, z = 40.000 }, pos = { x = 324.369, y = 211.428, z = 186.445 }, area_id = 402, vision_type_list = { 90010003 } },
	-- popo3前山传音花
	{ config_id = 238004, shape = RegionShape.CUBIC, size = { x = 60.000, y = 40.000, z = 60.000 }, pos = { x = 234.505, y = 133.024, z = 307.544 }, area_id = 402, vision_type_list = { 90010004 } },
	-- popo5礁石传音花
	{ config_id = 238005, shape = RegionShape.CUBIC, size = { x = 90.000, y = 80.000, z = 90.000 }, pos = { x = 401.031, y = 120.693, z = 427.187 }, area_id = 402, vision_type_list = { 90010005 } },
	-- popo3 地下洞穴内容
	{ config_id = 238006, shape = RegionShape.CUBIC, size = { x = 100.000, y = 50.000, z = 100.000 }, pos = { x = 207.895, y = 74.581, z = 387.620 }, area_id = 402, vision_type_list = { 90010006 } },
	-- popo4 山顶内容
	{ config_id = 238007, shape = RegionShape.CUBIC, size = { x = 60.000, y = 30.000, z = 60.000 }, pos = { x = 222.181, y = 191.255, z = 441.872 }, area_id = 402, vision_type_list = { 90010007 } },
	-- popo2 山脚
	{ config_id = 238008, shape = RegionShape.CUBIC, size = { x = 60.000, y = 50.000, z = 80.000 }, pos = { x = 189.062, y = 130.106, z = 136.021 }, area_id = 402, vision_type_list = { 90010008 } },
	-- popo3 后滩
	{ config_id = 238009, shape = RegionShape.CUBIC, size = { x = 120.000, y = 40.000, z = 200.000 }, pos = { x = 171.340, y = 137.139, z = 281.856 }, area_id = 402, vision_type_list = { 90010009 } },
	-- popo3 后滩xiaoguai
	{ config_id = 238010, shape = RegionShape.CUBIC, size = { x = 160.000, y = 80.000, z = 140.930 }, pos = { x = 170.240, y = 151.439, z = 390.527 }, area_id = 402, vision_type_list = { 90010010 } },
	-- popo1 waiceguai
	{ config_id = 238011, shape = RegionShape.CUBIC, size = { x = 150.000, y = 120.000, z = 220.000 }, pos = { x = 384.313, y = 155.180, z = 176.778 }, area_id = 402, vision_type_list = { 90010011 } },
	-- popo1 waiceguai
	{ config_id = 238012, shape = RegionShape.CUBIC, size = { x = 160.000, y = 69.000, z = 160.000 }, pos = { x = 248.138, y = 128.185, z = 411.920 }, area_id = 402, vision_type_list = { 90010012 } }
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
		regions = { 238001, 238002, 238003, 238004, 238005, 238006, 238007, 238008, 238009, 238010, 238011, 238012 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================