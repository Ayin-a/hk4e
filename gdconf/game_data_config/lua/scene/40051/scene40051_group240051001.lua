-- 基础信息
local base_info = {
	group_id = 240051001
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
	{ config_id = 1001, gadget_id = 70210101, pos = { x = 538.362, y = 95.539, z = 540.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1002, gadget_id = 70210101, pos = { x = 505.288, y = 98.883, z = 523.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1003, gadget_id = 70290487, pos = { x = 465.772, y = 68.553, z = 504.351 }, rot = { x = 0.000, y = 30.214, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1004, gadget_id = 70290487, pos = { x = 466.097, y = 68.553, z = 492.134 }, rot = { x = 0.000, y = 144.629, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1005, gadget_id = 70290487, pos = { x = 454.715, y = 68.553, z = 498.880 }, rot = { x = 0.000, y = 89.727, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1006, gadget_id = 70290578, pos = { x = 460.787, y = 70.001, z = 473.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70290577, pos = { x = 448.714, y = 84.685, z = 480.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70210101, pos = { x = 430.926, y = 116.202, z = 533.312 }, rot = { x = 0.000, y = 131.694, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true },
	{ config_id = 1009, gadget_id = 70211001, pos = { x = 494.566, y = 118.557, z = 497.189 }, rot = { x = 0.000, y = 296.401, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true },
	{ config_id = 1010, gadget_id = 70290482, pos = { x = 489.777, y = 120.561, z = 499.536 }, rot = { x = 0.000, y = 109.833, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70290577, pos = { x = 469.429, y = 98.409, z = 483.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70290578, pos = { x = 485.432, y = 96.824, z = 508.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70290578, pos = { x = 432.163, y = 87.713, z = 494.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70950047, pos = { x = 429.337, y = 102.249, z = 454.446 }, rot = { x = 0.000, y = 334.938, z = 0.000 }, level = 1 }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================