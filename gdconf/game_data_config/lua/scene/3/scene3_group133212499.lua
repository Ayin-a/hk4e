-- 基础信息
local base_info = {
	group_id = 133212499
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
	{ config_id = 499001, gadget_id = 70500000, pos = { x = -3558.102, y = 200.166, z = -2743.544 }, rot = { x = 0.000, y = 131.166, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 499002, gadget_id = 70500000, pos = { x = -3551.855, y = 200.270, z = -2757.917 }, rot = { x = 0.000, y = 131.166, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 499003, gadget_id = 70500000, pos = { x = -3551.641, y = 200.231, z = -2751.294 }, rot = { x = 0.000, y = 41.585, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 499004, gadget_id = 70500000, pos = { x = -3559.493, y = 199.735, z = -2754.356 }, rot = { x = 0.000, y = 290.749, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 499005, gadget_id = 70360001, pos = { x = -3551.575, y = 200.467, z = -2757.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 499001, 499002, 499003, 499004, 499005 },
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