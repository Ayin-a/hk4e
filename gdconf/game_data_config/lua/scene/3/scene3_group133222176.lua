-- 基础信息
local base_info = {
	group_id = 133222176
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
	{ config_id = 176001, gadget_id = 70500000, pos = { x = -4987.374, y = 204.830, z = -4336.636 }, rot = { x = 335.228, y = 359.403, z = 2.719 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 176002, gadget_id = 70500000, pos = { x = -4986.043, y = 204.101, z = -4339.634 }, rot = { x = 8.436, y = 63.525, z = 331.119 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 176003, gadget_id = 70500000, pos = { x = -5004.440, y = 203.432, z = -4340.687 }, rot = { x = 3.679, y = 359.583, z = 347.075 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 176004, gadget_id = 70500000, pos = { x = -4980.395, y = 202.070, z = -4344.293 }, rot = { x = 13.698, y = 293.896, z = 335.517 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 176005, gadget_id = 70360001, pos = { x = -4981.935, y = 202.719, z = -4339.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 }
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
		gadgets = { 176001, 176002, 176003, 176004, 176005 },
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