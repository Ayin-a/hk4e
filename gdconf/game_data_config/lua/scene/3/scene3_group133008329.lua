-- 基础信息
local base_info = {
	group_id = 133008329
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
	{ config_id = 329001, gadget_id = 70211101, pos = { x = 960.800, y = 291.736, z = -413.422 }, rot = { x = 0.502, y = 259.944, z = 353.124 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 329002, gadget_id = 70210101, pos = { x = 957.519, y = 292.096, z = -411.157 }, rot = { x = 0.000, y = 75.787, z = 6.894 }, level = 26, drop_tag = "搜刮点解谜人文蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 329003, gadget_id = 70210101, pos = { x = 952.712, y = 292.568, z = -411.723 }, rot = { x = 0.000, y = 75.787, z = 6.894 }, level = 26, drop_tag = "搜刮点解谜人文蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 329004, gadget_id = 70210101, pos = { x = 948.018, y = 287.844, z = -394.611 }, rot = { x = 0.000, y = 75.787, z = 6.894 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 329005, gadget_id = 70210101, pos = { x = 955.988, y = 281.470, z = -368.617 }, rot = { x = 0.000, y = 75.787, z = 6.894 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 329006, gadget_id = 70500000, pos = { x = 956.117, y = 291.983, z = -411.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9227, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 329001, 329002, 329003, 329004, 329005, 329006 },
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