-- 基础信息
local base_info = {
	group_id = 133108008
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
	{ config_id = 8001, gadget_id = 70710392, pos = { x = -321.530, y = 201.058, z = -629.258 }, rot = { x = 0.000, y = 166.682, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 8002, gadget_id = 70710388, pos = { x = -321.530, y = 201.058, z = -629.258 }, rot = { x = 0.000, y = 166.682, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 8003, gadget_id = 70710389, pos = { x = -321.530, y = 201.058, z = -629.258 }, rot = { x = 0.000, y = 166.682, z = 0.000 }, level = 1, area_id = 7 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = 有神之眼的盒子,
		monsters = { },
		gadgets = { 8001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = 关闭的盒子,
		monsters = { },
		gadgets = { 8002 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = 打开的空盒子,
		monsters = { },
		gadgets = { 8003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================