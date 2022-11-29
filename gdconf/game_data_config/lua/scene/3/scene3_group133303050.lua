-- 基础信息
local base_info = {
	group_id = 133303050
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
	{ config_id = 50001, gadget_id = 70211150, pos = { x = -1238.502, y = 187.451, z = 3439.254 }, rot = { x = 0.000, y = 80.481, z = 0.000 }, level = 26, chest_drop_id = 21910060, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 50006, gadget_id = 70211150, pos = { x = -1196.684, y = 88.501, z = 3796.003 }, rot = { x = 4.044, y = 162.560, z = 356.966 }, level = 26, chest_drop_id = 21910064, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 50007, gadget_id = 70211150, pos = { x = -1919.604, y = 200.371, z = 3127.397 }, rot = { x = 0.000, y = 251.206, z = 0.000 }, level = 26, chest_drop_id = 21910065, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
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
		{ config_id = 50002, gadget_id = 70211150, pos = { x = -1579.056, y = 220.341, z = 3289.158 }, rot = { x = 0.000, y = 345.465, z = 0.000 }, level = 26, chest_drop_id = 21910061, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
		{ config_id = 50003, gadget_id = 70211150, pos = { x = -1900.097, y = 269.016, z = 3226.256 }, rot = { x = 0.000, y = 294.211, z = 0.000 }, level = 26, chest_drop_id = 21910062, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
		{ config_id = 50005, gadget_id = 70211150, pos = { x = -1728.618, y = 229.013, z = 3376.098 }, rot = { x = 0.000, y = 348.536, z = 0.000 }, level = 26, chest_drop_id = 21910063, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
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
		gadgets = { 50001, 50006, 50007 },
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