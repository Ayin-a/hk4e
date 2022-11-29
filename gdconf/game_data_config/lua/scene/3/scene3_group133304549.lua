-- 基础信息
local base_info = {
	group_id = 133304549
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
	{ config_id = 549001, gadget_id = 70230113, pos = { x = -1334.938, y = 187.041, z = 2883.164 }, rot = { x = 46.175, y = 140.768, z = 10.162 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549002, gadget_id = 70230113, pos = { x = -1334.408, y = 187.305, z = 2883.002 }, rot = { x = 17.837, y = 121.590, z = 356.625 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549003, gadget_id = 70230113, pos = { x = -1333.992, y = 187.042, z = 2882.703 }, rot = { x = 347.550, y = 109.655, z = 353.056 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549004, gadget_id = 70230113, pos = { x = -1334.938, y = 187.041, z = 2883.164 }, rot = { x = 46.175, y = 140.768, z = 10.162 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549005, gadget_id = 70230113, pos = { x = -1334.440, y = 187.313, z = 2882.948 }, rot = { x = 17.837, y = 121.590, z = 356.625 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549006, gadget_id = 70230113, pos = { x = -1333.992, y = 187.042, z = 2882.703 }, rot = { x = 347.550, y = 109.655, z = 353.056 }, level = 30, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 549007, gadget_id = 70360001, pos = { x = -1336.135, y = 182.997, z = 2881.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 549001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 549002, 549003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 549004, 549005, 549006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 549007 },
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