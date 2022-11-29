-- 基础信息
local base_info = {
	group_id = 133304440
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
	{ config_id = 440001, gadget_id = 70210101, pos = { x = -1996.158, y = 239.609, z = 2722.455 }, rot = { x = 2.379, y = 145.347, z = 359.930 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 440002, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1996.158, y = 239.609, z = 2722.455 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1440002, name = "ENTER_REGION_440002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
	end_suite = 2,
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
		regions = { 440002 },
		triggers = { "ENTER_REGION_440002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 440001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================