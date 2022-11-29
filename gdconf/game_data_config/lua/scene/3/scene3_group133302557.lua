-- 基础信息
local base_info = {
	group_id = 133302557
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
	{ config_id = 557001, gadget_id = 70210101, pos = { x = -727.690, y = 222.784, z = 3001.363 }, rot = { x = 0.000, y = 248.121, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 557002, shape = RegionShape.SPHERE, radius = 60, pos = { x = -727.690, y = 222.784, z = 3001.363 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1557002, name = "ENTER_REGION_557002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 557002 },
		triggers = { "ENTER_REGION_557002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 557001 },
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