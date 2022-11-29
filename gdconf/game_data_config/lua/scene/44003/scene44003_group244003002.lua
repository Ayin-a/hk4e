-- 基础信息
local base_info = {
	group_id = 244003002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20010801, pos = { x = -192.638, y = 21.612, z = 58.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 2002, monster_id = 20010801, pos = { x = -189.111, y = 21.722, z = 61.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 2003, monster_id = 20010801, pos = { x = -193.304, y = 21.686, z = 67.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 2004, monster_id = 20010801, pos = { x = -198.968, y = 21.711, z = 80.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } },
	{ config_id = 2005, monster_id = 20010801, pos = { x = -191.383, y = 21.717, z = 92.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 4116 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2006, gadget_id = 70350019, pos = { x = -194.594, y = 21.637, z = 45.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2007, gadget_id = 70350019, pos = { x = -190.613, y = 21.711, z = 57.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2008, gadget_id = 70350019, pos = { x = -195.970, y = 21.723, z = 71.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2009, gadget_id = 70350019, pos = { x = -197.767, y = 21.710, z = 81.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2010, gadget_id = 70350019, pos = { x = -191.355, y = 21.691, z = 90.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2011, gadget_id = 70350019, pos = { x = -195.608, y = 21.715, z = 100.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2012, gadget_id = 70350019, pos = { x = -197.014, y = 25.540, z = 129.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2013, gadget_id = 70350019, pos = { x = -190.346, y = 25.495, z = 121.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2014, gadget_id = 70350019, pos = { x = -183.195, y = 25.498, z = 128.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2015, gadget_id = 70350019, pos = { x = -197.120, y = 25.542, z = 117.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		monsters = { 2001, 2002, 2003, 2004, 2005 },
		gadgets = { 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015 },
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