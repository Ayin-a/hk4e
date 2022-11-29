-- 基础信息
local base_info = {
	group_id = 133303543
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
	{ config_id = 543001, gadget_id = 70210101, pos = { x = -1713.861, y = 225.047, z = 3145.021 }, rot = { x = 0.000, y = 185.330, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 543002, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1713.851, y = 225.050, z = 3145.032 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1543002, name = "ENTER_REGION_543002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 543002 },
		triggers = { "ENTER_REGION_543002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 543001 },
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