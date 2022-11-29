-- 基础信息
local base_info = {
	group_id = 133301600
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
	{ config_id = 600006, gadget_id = 70211150, pos = { x = -792.301, y = 14.017, z = 3188.995 }, rot = { x = 2.167, y = 281.057, z = 1.933 }, level = 26, chest_drop_id = 21910055, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 600008, gadget_id = 70211150, pos = { x = -630.617, y = -40.549, z = 3740.532 }, rot = { x = 5.482, y = 14.814, z = 4.759 }, level = 26, chest_drop_id = 21910057, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 600009, gadget_id = 70211150, pos = { x = -529.805, y = -42.785, z = 3825.800 }, rot = { x = 13.447, y = 294.776, z = 359.518 }, level = 26, chest_drop_id = 21910058, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 600002, gadget_id = 70211150, pos = { x = -354.349, y = 216.575, z = 3368.124 }, rot = { x = 0.467, y = 168.239, z = 2.254 }, level = 26, chest_drop_id = 21910051, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
	}
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
		gadgets = { 600006, 600008, 600009 },
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