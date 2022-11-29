-- 基础信息
local base_info = {
	group_id = 199002186
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
	-- 一岛山洞腹地
	{ config_id = 186001, shape = RegionShape.SPHERE, radius = 40, pos = { x = 441.262, y = 144.787, z = -473.658 }, area_id = 401, vision_type_list = { 90020001 } },
	-- 一岛王城内部
	{ config_id = 186002, shape = RegionShape.SPHERE, radius = 55, pos = { x = 426.886, y = 244.652, z = -480.433 }, area_id = 401, vision_type_list = { 90020002 } },
	-- 一岛王城山麓
	{ config_id = 186003, shape = RegionShape.SPHERE, radius = 60, pos = { x = 475.115, y = 222.994, z = -451.418 }, area_id = 401, vision_type_list = { 90020003 } },
	-- 一岛绑匪营地
	{ config_id = 186004, shape = RegionShape.SPHERE, radius = 25, pos = { x = 417.240, y = 170.566, z = -481.323 }, area_id = 401, vision_type_list = { 90020004 } },
	-- 一岛王城地窖
	{ config_id = 186005, shape = RegionShape.SPHERE, radius = 30, pos = { x = 463.452, y = 104.606, z = -476.226 }, area_id = 401, vision_type_list = { 90020005 } },
	-- 一岛喷泉广场
	{ config_id = 186006, shape = RegionShape.SPHERE, radius = 40, pos = { x = 466.709, y = 135.467, z = -410.759 }, area_id = 401, vision_type_list = { 90020006 } },
	-- 一岛间幕1剧场
	{ config_id = 186007, shape = RegionShape.SPHERE, radius = 45, pos = { x = 373.342, y = 122.351, z = -459.513 }, area_id = 401, vision_type_list = { 90020007 } },
	-- 一岛终幕剧场
	{ config_id = 186008, shape = RegionShape.SPHERE, radius = 35, pos = { x = 503.053, y = 124.307, z = -449.262 }, area_id = 401, vision_type_list = { 90020008 } },
	-- 一岛南侧沙滩片场
	{ config_id = 186009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 437.030, y = 120.389, z = -378.872 }, area_id = 401, vision_type_list = { 90020009 } },
	-- 一岛大门口怪物营地
	{ config_id = 186010, shape = RegionShape.SPHERE, radius = 70, pos = { x = 420.266, y = 127.852, z = -423.470 }, area_id = 401, vision_type_list = { 90020010 } },
	-- 一岛卫兵营地
	{ config_id = 186011, shape = RegionShape.SPHERE, radius = 70, pos = { x = 391.612, y = 122.859, z = -552.508 }, area_id = 401, vision_type_list = { 90020011 } },
	-- 一岛八卦夜鸦+洗澡夜鸦
	{ config_id = 186012, shape = RegionShape.SPHERE, radius = 70, pos = { x = 467.899, y = 121.529, z = -505.902 }, area_id = 401, vision_type_list = { 90020012 } },
	-- 一岛高崖
	{ config_id = 186013, shape = RegionShape.SPHERE, radius = 50, pos = { x = 476.927, y = 145.635, z = -370.734 }, area_id = 401, vision_type_list = { 90020013 } },
	-- 二岛王城内部
	{ config_id = 186014, shape = RegionShape.SPHERE, radius = 40, pos = { x = 615.986, y = 242.711, z = -429.270 }, area_id = 401, vision_type_list = { 90020014 } },
	-- 二岛麻匪营地
	{ config_id = 186015, shape = RegionShape.SPHERE, radius = 40, pos = { x = 565.456, y = 121.281, z = -382.635 }, area_id = 401, vision_type_list = { 90020015 } },
	-- 二岛上门要挟怪物营地
	{ config_id = 186016, shape = RegionShape.SPHERE, radius = 50, pos = { x = 679.896, y = 116.478, z = -374.730 }, area_id = 401, vision_type_list = { 90020016 } },
	-- 三岛守卫营地
	{ config_id = 186017, shape = RegionShape.SPHERE, radius = 50, pos = { x = 622.666, y = 121.882, z = -541.224 }, area_id = 401, vision_type_list = { 90020017 } },
	-- 三岛间幕1剧场
	{ config_id = 186018, shape = RegionShape.SPHERE, radius = 35, pos = { x = 558.756, y = 126.798, z = -562.864 }, area_id = 401, vision_type_list = { 90020018 } },
	-- 三岛间幕3剧场
	{ config_id = 186019, shape = RegionShape.SPHERE, radius = 60, pos = { x = 466.305, y = 113.531, z = -710.730 }, area_id = 401, vision_type_list = { 90020019 } },
	-- 三岛王城/初幕剧场
	{ config_id = 186020, shape = RegionShape.SPHERE, radius = 50, pos = { x = 583.893, y = 290.542, z = -524.694 }, area_id = 401, vision_type_list = { 90020020 } }
}

-- 触发器
triggers = {
	-- 一岛山洞腹地
	{ config_id = 1186001, name = "ENTER_REGION_186001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛王城内部
	{ config_id = 1186002, name = "ENTER_REGION_186002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛王城山麓
	{ config_id = 1186003, name = "ENTER_REGION_186003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛绑匪营地
	{ config_id = 1186004, name = "ENTER_REGION_186004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛王城地窖
	{ config_id = 1186005, name = "ENTER_REGION_186005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛喷泉广场
	{ config_id = 1186006, name = "ENTER_REGION_186006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛间幕1剧场
	{ config_id = 1186007, name = "ENTER_REGION_186007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛终幕剧场
	{ config_id = 1186008, name = "ENTER_REGION_186008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛南侧沙滩片场
	{ config_id = 1186009, name = "ENTER_REGION_186009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛大门口怪物营地
	{ config_id = 1186010, name = "ENTER_REGION_186010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛卫兵营地
	{ config_id = 1186011, name = "ENTER_REGION_186011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛八卦夜鸦+洗澡夜鸦
	{ config_id = 1186012, name = "ENTER_REGION_186012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 一岛高崖
	{ config_id = 1186013, name = "ENTER_REGION_186013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 二岛王城内部
	{ config_id = 1186014, name = "ENTER_REGION_186014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 二岛麻匪营地
	{ config_id = 1186015, name = "ENTER_REGION_186015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 二岛上门要挟怪物营地
	{ config_id = 1186016, name = "ENTER_REGION_186016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 三岛守卫营地
	{ config_id = 1186017, name = "ENTER_REGION_186017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 三岛间幕1剧场
	{ config_id = 1186018, name = "ENTER_REGION_186018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 三岛间幕3剧场
	{ config_id = 1186019, name = "ENTER_REGION_186019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 三岛王城/初幕剧场
	{ config_id = 1186020, name = "ENTER_REGION_186020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 186001, 186002, 186003, 186004, 186005, 186006, 186007, 186008, 186009, 186010, 186011, 186012, 186013, 186014, 186015, 186016, 186017, 186018, 186019, 186020 },
		triggers = { "ENTER_REGION_186001", "ENTER_REGION_186002", "ENTER_REGION_186003", "ENTER_REGION_186004", "ENTER_REGION_186005", "ENTER_REGION_186006", "ENTER_REGION_186007", "ENTER_REGION_186008", "ENTER_REGION_186009", "ENTER_REGION_186010", "ENTER_REGION_186011", "ENTER_REGION_186012", "ENTER_REGION_186013", "ENTER_REGION_186014", "ENTER_REGION_186015", "ENTER_REGION_186016", "ENTER_REGION_186017", "ENTER_REGION_186018", "ENTER_REGION_186019", "ENTER_REGION_186020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================