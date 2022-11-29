-- 基础信息
local base_info = {
	group_id = 133220186
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
	{ config_id = 186002, gadget_id = 70310004, pos = { x = -1835.682, y = 200.388, z = -4258.646 }, rot = { x = 0.000, y = 13.111, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 186005, gadget_id = 70220015, pos = { x = -1836.195, y = 200.072, z = -4277.777 }, rot = { x = 276.394, y = 2.459, z = 103.147 }, level = 27, area_id = 11 },
	{ config_id = 186006, gadget_id = 70220015, pos = { x = -1832.079, y = 200.297, z = -4272.688 }, rot = { x = 276.394, y = 2.459, z = 69.546 }, level = 27, area_id = 11 },
	{ config_id = 186007, gadget_id = 70220015, pos = { x = -1831.835, y = 200.980, z = -4274.194 }, rot = { x = 276.394, y = 2.459, z = 81.452 }, level = 27, area_id = 11 },
	{ config_id = 186008, gadget_id = 70220015, pos = { x = -1831.716, y = 200.195, z = -4274.179 }, rot = { x = 276.394, y = 2.459, z = 81.452 }, level = 27, area_id = 11 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 186001, gadget_id = 70211112, pos = { x = -1836.252, y = 200.061, z = -4277.839 }, rot = { x = 3.868, y = 14.519, z = 359.616 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 186003, gadget_id = 70211001, pos = { x = -1834.747, y = 200.431, z = -4273.267 }, rot = { x = 4.709, y = 259.919, z = 359.673 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 186004, gadget_id = 70220015, pos = { x = -1836.140, y = 200.031, z = -4277.823 }, rot = { x = 276.394, y = 2.459, z = 101.832 }, level = 27, area_id = 11 },
		{ config_id = 186009, gadget_id = 70211112, pos = { x = -1831.723, y = 200.043, z = -4274.226 }, rot = { x = 356.962, y = 355.165, z = 0.662 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
		gadgets = { 186002, 186005, 186006, 186007, 186008 },
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