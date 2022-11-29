-- 基础信息
local base_info = {
	group_id = 133104571
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
	{ config_id = 571001, gadget_id = 70210107, pos = { x = 738.926, y = 222.001, z = 845.886 }, rot = { x = 352.330, y = 280.740, z = 359.671 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571002, gadget_id = 70210107, pos = { x = 625.905, y = 207.403, z = 852.676 }, rot = { x = 351.814, y = 211.374, z = 7.618 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571003, gadget_id = 70210107, pos = { x = 744.891, y = 221.731, z = 679.909 }, rot = { x = 0.184, y = 232.267, z = 5.647 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571004, gadget_id = 70210107, pos = { x = 645.448, y = 226.107, z = 770.101 }, rot = { x = 331.647, y = 168.959, z = 9.204 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571005, gadget_id = 70210107, pos = { x = 571.888, y = 206.686, z = 964.048 }, rot = { x = 22.348, y = 223.378, z = 353.143 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571006, gadget_id = 70210063, pos = { x = 571.356, y = 205.251, z = 963.241 }, rot = { x = 0.000, y = 248.307, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestRock, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 571007, gadget_id = 70210107, pos = { x = 966.939, y = 223.396, z = 849.346 }, rot = { x = 325.724, y = 185.297, z = 299.627 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571008, gadget_id = 70210107, pos = { x = 843.659, y = 270.531, z = 854.904 }, rot = { x = 323.947, y = 80.383, z = 350.377 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571009, gadget_id = 70210107, pos = { x = 848.630, y = 270.002, z = 852.394 }, rot = { x = 2.094, y = 30.817, z = 14.568 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571010, gadget_id = 70210107, pos = { x = 845.804, y = 270.940, z = 856.382 }, rot = { x = 350.736, y = 0.170, z = 12.053 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 571011, gadget_id = 70210107, pos = { x = 856.070, y = 223.217, z = 696.392 }, rot = { x = 13.110, y = 330.314, z = 15.547 }, level = 16, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 }
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
		gadgets = { 571001, 571002, 571003, 571004, 571005, 571006, 571007, 571008, 571009, 571010, 571011 },
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