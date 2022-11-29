-- 基础信息
local base_info = {
	group_id = 133301270
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
	{ config_id = 270002, gadget_id = 70210101, pos = { x = -972.347, y = 397.920, z = 3183.034 }, rot = { x = 1.067, y = 257.493, z = 3.682 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 270001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -972.427, y = 397.900, z = 3183.128 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1270001, name = "ENTER_REGION_270001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 270001 },
		triggers = { "ENTER_REGION_270001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 270002 },
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