-- 基础信息
local base_info = {
	group_id = 133303546
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
	{ config_id = 546001, gadget_id = 70210101, pos = { x = -1381.060, y = 201.204, z = 3298.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 546002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -1381.027, y = 201.206, z = 3298.102 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1546002, name = "ENTER_REGION_546002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 546002 },
		triggers = { "ENTER_REGION_546002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 546001 },
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