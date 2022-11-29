-- 基础信息
local base_info = {
	group_id = 133220623
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
	{ config_id = 623001, gadget_id = 70360001, pos = { x = -2346.081, y = 200.690, z = -4176.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 623003, gadget_id = 70500000, pos = { x = -2346.216, y = 200.142, z = -4176.719 }, rot = { x = 0.000, y = 268.742, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 623004, gadget_id = 70500000, pos = { x = -2351.628, y = 199.698, z = -4181.330 }, rot = { x = 358.643, y = 33.542, z = 2.047 }, level = 1, point_type = 1008, persistent = true, area_id = 11 }
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
		gadgets = { 623001, 623003, 623004 },
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