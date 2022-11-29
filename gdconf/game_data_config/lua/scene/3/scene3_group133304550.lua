-- 基础信息
local base_info = {
	group_id = 133304550
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
	{ config_id = 550001, gadget_id = 70230113, pos = { x = -1349.211, y = 189.204, z = 2906.022 }, rot = { x = 13.473, y = 101.979, z = 346.484 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550002, gadget_id = 70230113, pos = { x = -1348.826, y = 189.151, z = 2905.977 }, rot = { x = 41.694, y = 104.241, z = 352.756 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550003, gadget_id = 70230113, pos = { x = -1349.202, y = 189.192, z = 2906.020 }, rot = { x = 13.473, y = 101.979, z = 346.484 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550004, gadget_id = 70230113, pos = { x = -1349.211, y = 189.204, z = 2906.022 }, rot = { x = 13.473, y = 101.979, z = 346.484 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550005, gadget_id = 70230113, pos = { x = -1348.807, y = 189.139, z = 2905.977 }, rot = { x = 41.694, y = 104.241, z = 352.756 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550006, gadget_id = 70230113, pos = { x = -1348.568, y = 189.588, z = 2905.768 }, rot = { x = 56.682, y = 105.412, z = 356.347 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 550007, gadget_id = 70360001, pos = { x = -1349.198, y = 185.177, z = 2905.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
	suite = 4,
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
		gadgets = { 550001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 550002, 550003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 550004, 550005, 550006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 550007 },
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