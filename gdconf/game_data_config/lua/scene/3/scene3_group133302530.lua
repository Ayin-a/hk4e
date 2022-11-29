-- 基础信息
local base_info = {
	group_id = 133302530
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
	{ config_id = 530001, gadget_id = 70310479, pos = { x = -377.794, y = 240.170, z = 2704.021 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 530002, gadget_id = 70310479, pos = { x = -383.409, y = 240.166, z = 2697.061 }, rot = { x = 0.000, y = 44.727, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 530003, gadget_id = 70310479, pos = { x = -392.813, y = 240.075, z = 2694.851 }, rot = { x = 0.000, y = 93.396, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 530004, gadget_id = 70310479, pos = { x = -396.188, y = 240.067, z = 2701.406 }, rot = { x = 0.000, y = 127.318, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 530005, gadget_id = 70310479, pos = { x = -384.983, y = 240.067, z = 2715.466 }, rot = { x = 0.000, y = 130.536, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 530006, gadget_id = 70310479, pos = { x = -378.058, y = 240.067, z = 2713.783 }, rot = { x = 0.000, y = 162.999, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
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
		gadgets = { 530001, 530002, 530003, 530004, 530005, 530006 },
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