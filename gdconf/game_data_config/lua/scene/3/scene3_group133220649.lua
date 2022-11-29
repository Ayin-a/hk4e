-- 基础信息
local base_info = {
	group_id = 133220649
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
	{ config_id = 649001, gadget_id = 70710480, pos = { x = -2387.616, y = 246.785, z = -4297.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1050139, drop_count = 1, area_id = 11 },
	{ config_id = 649002, gadget_id = 70710480, pos = { x = -2398.346, y = 247.439, z = -4296.572 }, rot = { x = 0.000, y = 237.580, z = 0.000 }, level = 1, drop_id = 1050139, drop_count = 1, area_id = 11 },
	{ config_id = 649003, gadget_id = 70710480, pos = { x = -2399.274, y = 247.160, z = -4252.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1050139, drop_count = 1, area_id = 11 },
	{ config_id = 649004, gadget_id = 70710480, pos = { x = -2410.664, y = 246.553, z = -4287.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1050139, drop_count = 1, area_id = 11 },
	{ config_id = 649005, gadget_id = 70710480, pos = { x = -2402.914, y = 246.752, z = -4291.922 }, rot = { x = 0.000, y = 235.592, z = 0.000 }, level = 1, drop_id = 1050139, drop_count = 1, area_id = 11 },
	{ config_id = 649007, gadget_id = 70520003, pos = { x = -2388.624, y = 246.962, z = -4297.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 649008, gadget_id = 70520003, pos = { x = -2410.537, y = 246.293, z = -4289.046 }, rot = { x = 0.000, y = 322.034, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 649009, gadget_id = 70520003, pos = { x = -2401.914, y = 246.904, z = -4291.352 }, rot = { x = 0.000, y = 303.765, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 649010, gadget_id = 70520003, pos = { x = -2409.748, y = 246.094, z = -4288.273 }, rot = { x = 0.000, y = 285.170, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 649011, gadget_id = 70520003, pos = { x = -2388.339, y = 246.644, z = -4296.663 }, rot = { x = 0.001, y = 92.559, z = 15.759 }, level = 1, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 649012, gadget_id = 70520003, pos = { x = -2397.857, y = 247.241, z = -4253.387 }, rot = { x = 0.000, y = 274.530, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 11 }
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
		gadgets = { 649001, 649002, 649003, 649004, 649005, 649007, 649008, 649009, 649010, 649011, 649012 },
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