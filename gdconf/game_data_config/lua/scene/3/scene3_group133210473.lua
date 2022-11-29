-- 基础信息
local base_info = {
	group_id = 133210473
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
	{ config_id = 473002, gadget_id = 70500000, pos = { x = -3804.031, y = 169.296, z = -607.194 }, rot = { x = 344.803, y = 31.868, z = 348.052 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 473004, gadget_id = 70360001, pos = { x = -3816.570, y = 168.741, z = -611.422 }, rot = { x = 0.000, y = 249.947, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 473005, gadget_id = 70500000, pos = { x = -3814.655, y = 168.961, z = -610.471 }, rot = { x = 5.666, y = 244.179, z = 21.176 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 473001, gadget_id = 70500000, pos = { x = -3806.742, y = 169.319, z = -607.989 }, rot = { x = 25.386, y = 187.092, z = 5.138 }, level = 1, point_type = 1008, area_id = 17 },
		{ config_id = 473003, gadget_id = 70500000, pos = { x = -3819.683, y = 169.270, z = -610.527 }, rot = { x = 337.544, y = 0.492, z = 357.524 }, level = 1, point_type = 1008, area_id = 17 }
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
		gadgets = { },
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
	},
	{
		-- suite_id = 3,
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 473002, 473004, 473005 },
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

require "V2_0/OreBlossomGroup"