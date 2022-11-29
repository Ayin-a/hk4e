-- 基础信息
local base_info = {
	group_id = 133003032
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
	{ config_id = 2636, gadget_id = 70211121, pos = { x = 2693.161, y = 196.103, z = -1789.153 }, rot = { x = 0.000, y = 285.541, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2637, gadget_id = 70211101, pos = { x = 2564.602, y = 235.511, z = -1523.883 }, rot = { x = 0.000, y = 54.628, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2915, gadget_id = 70211101, pos = { x = 2386.092, y = 211.889, z = -1192.622 }, rot = { x = 347.035, y = 192.453, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2916, gadget_id = 70211101, pos = { x = 2508.993, y = 224.476, z = -1440.076 }, rot = { x = 0.000, y = 38.291, z = 12.190 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2917, gadget_id = 70211101, pos = { x = 2566.450, y = 214.347, z = -1403.732 }, rot = { x = 356.398, y = 325.679, z = 359.904 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2919, gadget_id = 70211101, pos = { x = 2495.104, y = 202.894, z = -1094.026 }, rot = { x = 0.000, y = 214.812, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4013, gadget_id = 70211101, pos = { x = 2412.137, y = 208.455, z = -1290.344 }, rot = { x = 0.000, y = 27.567, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4188, gadget_id = 70211101, pos = { x = 2530.708, y = 209.805, z = -1271.498 }, rot = { x = 11.768, y = 323.634, z = 355.102 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4189, gadget_id = 70211101, pos = { x = 2530.606, y = 206.560, z = -1159.925 }, rot = { x = 349.801, y = 41.948, z = 6.105 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4196, gadget_id = 70211101, pos = { x = 2262.936, y = 204.328, z = -1099.877 }, rot = { x = 354.602, y = 64.231, z = 6.300 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4212, gadget_id = 70211131, pos = { x = 2632.948, y = 193.567, z = -2376.348 }, rot = { x = 0.000, y = 191.323, z = 0.000 }, level = 26, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4213, gadget_id = 70211101, pos = { x = 2645.142, y = 202.981, z = -2368.359 }, rot = { x = 0.000, y = 7.849, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 32001, gadget_id = 70211131, pos = { x = 2592.914, y = 175.445, z = -2399.236 }, rot = { x = 14.438, y = 232.271, z = 4.287 }, level = 26, drop_tag = "解谜超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 32002, gadget_id = 70211111, pos = { x = 2678.149, y = 195.769, z = -2338.803 }, rot = { x = 347.634, y = 125.011, z = 350.417 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 32003, gadget_id = 70211121, pos = { x = 2540.784, y = 242.560, z = -1793.504 }, rot = { x = 345.264, y = 285.609, z = 354.595 }, level = 6, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
	regions = {
		{ config_id = 32004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2695.862, y = 194.600, z = -1793.005 }, area_id = 1 }
	},
	triggers = {
		{ config_id = 1032004, name = "ENTER_REGION_32004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_32004", trigger_count = 0 }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 2636, 2637, 2915, 2916, 2917, 2919, 4013, 4188, 4189, 4196, 4212, 4213, 32002 },
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