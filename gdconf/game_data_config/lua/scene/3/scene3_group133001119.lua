-- 基础信息
local base_info = {
	group_id = 133001119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 559, monster_id = 28030301, pos = { x = 1260.236, y = 263.761, z = -1683.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 696, monster_id = 28030401, pos = { x = 1974.456, y = 222.045, z = -1507.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 698, monster_id = 28030401, pos = { x = 1974.967, y = 222.158, z = -1504.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 700, monster_id = 28030401, pos = { x = 2011.865, y = 222.082, z = -1463.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 707, monster_id = 28030401, pos = { x = 2017.381, y = 222.281, z = -1463.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 709, monster_id = 28030401, pos = { x = 2012.367, y = 222.494, z = -1468.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1158, monster_id = 28030402, pos = { x = 1268.297, y = 259.054, z = -1685.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 },
	{ config_id = 1160, monster_id = 28030402, pos = { x = 1267.193, y = 258.921, z = -1680.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1965, gadget_id = 70211101, pos = { x = 1997.105, y = 219.884, z = -1486.037 }, rot = { x = 9.176, y = 335.253, z = 358.708 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 1974, gadget_id = 70211101, pos = { x = 1969.767, y = 220.751, z = -1577.839 }, rot = { x = 0.000, y = 190.447, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
	rand_suite = true
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
		monsters = { 559, 696, 698, 700, 707, 709, 1158, 1160 },
		gadgets = { 1965, 1974 },
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