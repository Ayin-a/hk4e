-- 基础信息
local base_info = {
	group_id = 133302558
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
	{ config_id = 558001, gadget_id = 70210101, pos = { x = -620.133, y = 159.344, z = 2722.312 }, rot = { x = 352.720, y = 208.415, z = 1.643 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 558002, shape = RegionShape.SPHERE, radius = 30, pos = { x = -620.179, y = 159.359, z = 2722.295 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1558002, name = "ENTER_REGION_558002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		regions = { 558002 },
		triggers = { "ENTER_REGION_558002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 558001 },
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