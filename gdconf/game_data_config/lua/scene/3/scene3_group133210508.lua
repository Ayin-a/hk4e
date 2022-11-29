-- 基础信息
local base_info = {
	group_id = 133210508
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
	{ config_id = 508001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -4046.155, y = 200.921, z = -682.372 }, area_id = 17, vision_type_list = { 32100001 } },
	{ config_id = 508002, shape = RegionShape.CUBIC, size = { x = 150.000, y = 50.000, z = 150.000 }, pos = { x = -3784.335, y = 216.365, z = -478.796 }, area_id = 17, vision_type_list = { 32100002 } }
}

-- 触发器
triggers = {
	{ config_id = 1508001, name = "ENTER_REGION_508001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1508002, name = "ENTER_REGION_508002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 508001, 508002 },
		triggers = { "ENTER_REGION_508001", "ENTER_REGION_508002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================