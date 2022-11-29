-- 基础信息
local base_info = {
	group_id = 133102505
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
	{ config_id = 505001, gadget_id = 70211101, pos = { x = 1523.105, y = 255.058, z = 389.387 }, rot = { x = 355.655, y = 55.249, z = 6.247 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 505002, gadget_id = 70211101, pos = { x = 1559.605, y = 255.623, z = 413.100 }, rot = { x = 12.746, y = 297.453, z = 350.900 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 505003, gadget_id = 70310001, pos = { x = 1525.945, y = 250.714, z = 427.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 5 },
	{ config_id = 505004, gadget_id = 70310001, pos = { x = 1527.746, y = 255.653, z = 390.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 5 },
	{ config_id = 505005, gadget_id = 70211101, pos = { x = 1521.952, y = 249.221, z = 439.312 }, rot = { x = 345.798, y = 205.590, z = 355.204 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 505006, gadget_id = 70310001, pos = { x = 1547.880, y = 250.835, z = 426.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 505001, 505002, 505003, 505004, 505005, 505006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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