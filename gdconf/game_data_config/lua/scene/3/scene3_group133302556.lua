-- 基础信息
local base_info = {
	group_id = 133302556
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
	{ config_id = 556001, gadget_id = 70210101, pos = { x = -581.729, y = 108.172, z = 2222.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 556002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -581.697, y = 108.182, z = 2222.060 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1556002, name = "ENTER_REGION_556002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 556002 },
		triggers = { "ENTER_REGION_556002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 556001 },
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