-- 基础信息
local base_info = {
	group_id = 133304337
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
	{ config_id = 337001, gadget_id = 70500000, pos = { x = -1534.432, y = 133.669, z = 2221.955 }, rot = { x = 347.894, y = 335.254, z = 15.002 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 337002, gadget_id = 70500000, pos = { x = -1524.095, y = 135.986, z = 2218.852 }, rot = { x = 23.148, y = 285.709, z = 353.860 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 337003, gadget_id = 70500000, pos = { x = -1524.717, y = 136.195, z = 2214.683 }, rot = { x = 13.744, y = 232.268, z = 346.069 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 337004, gadget_id = 70500000, pos = { x = -1537.661, y = 133.926, z = 2224.579 }, rot = { x = 18.578, y = 215.962, z = 1.711 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 337005, gadget_id = 70360001, pos = { x = -1544.764, y = 126.146, z = 2185.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		-- description = ,
		monsters = { },
		gadgets = { 337001, 337002, 337003, 337004, 337005 },
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