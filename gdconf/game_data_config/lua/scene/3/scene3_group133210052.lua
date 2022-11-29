-- 基础信息
local base_info = {
	group_id = 133210052
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
	{ config_id = 52001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3869.276, y = 148.990, z = -779.990 }, area_id = 17 },
	{ config_id = 52002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3852.610, y = 257.204, z = -469.782 }, area_id = 17 },
	{ config_id = 52003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3663.886, y = 167.535, z = -937.286 }, area_id = 17 },
	{ config_id = 52004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3638.249, y = 206.939, z = -969.363 }, area_id = 17 },
	{ config_id = 52005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3594.517, y = 219.805, z = -625.939 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1052001, name = "ENTER_REGION_52001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1052002, name = "ENTER_REGION_52002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1052003, name = "ENTER_REGION_52003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1052004, name = "ENTER_REGION_52004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1052005, name = "ENTER_REGION_52005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 52001, 52002 },
		triggers = { "ENTER_REGION_52001", "ENTER_REGION_52002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================