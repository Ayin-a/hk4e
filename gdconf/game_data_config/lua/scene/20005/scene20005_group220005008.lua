-- 基础信息
local base_info = {
	group_id = 220005008
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
	{ config_id = 8001, gadget_id = 70290008, pos = { x = -198.801, y = 25.309, z = 186.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8002, gadget_id = 70500000, pos = { x = -198.801, y = 25.309, z = 186.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8001 },
	{ config_id = 8003, gadget_id = 70290008, pos = { x = -238.289, y = 25.284, z = 152.546 }, rot = { x = 0.000, y = 51.809, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8004, gadget_id = 70500000, pos = { x = -238.289, y = 25.284, z = 152.546 }, rot = { x = 0.000, y = 51.802, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8003 },
	{ config_id = 8005, gadget_id = 70290008, pos = { x = -243.934, y = 25.279, z = 158.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8006, gadget_id = 70500000, pos = { x = -243.934, y = 25.279, z = 158.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8005 },
	{ config_id = 8009, gadget_id = 70290008, pos = { x = -212.397, y = 25.314, z = 181.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8010, gadget_id = 70500000, pos = { x = -212.397, y = 25.314, z = 181.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8009 },
	{ config_id = 8011, gadget_id = 70290008, pos = { x = -234.102, y = 25.265, z = 187.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8012, gadget_id = 70500000, pos = { x = -234.102, y = 25.265, z = 187.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8011 },
	{ config_id = 8013, gadget_id = 70290008, pos = { x = -172.886, y = 25.533, z = 134.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8014, gadget_id = 70500000, pos = { x = -172.886, y = 25.533, z = 134.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8013 },
	{ config_id = 8015, gadget_id = 70290008, pos = { x = -198.469, y = 21.461, z = 68.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8016, gadget_id = 70500000, pos = { x = -198.469, y = 21.461, z = 68.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8015 },
	{ config_id = 8017, gadget_id = 70290008, pos = { x = -186.825, y = 21.535, z = 88.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8018, gadget_id = 70500000, pos = { x = -186.825, y = 21.535, z = 88.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8017 },
	{ config_id = 8023, gadget_id = 70290008, pos = { x = -280.562, y = 31.559, z = 179.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8024, gadget_id = 70500000, pos = { x = -280.562, y = 31.559, z = 179.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8023 },
	{ config_id = 8025, gadget_id = 70290008, pos = { x = -295.160, y = 31.486, z = 178.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8026, gadget_id = 70500000, pos = { x = -295.160, y = 31.486, z = 178.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8025 },
	{ config_id = 8027, gadget_id = 70290008, pos = { x = -296.583, y = 31.470, z = 167.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8028, gadget_id = 70500000, pos = { x = -296.583, y = 31.470, z = 167.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8027 },
	{ config_id = 8029, gadget_id = 70290008, pos = { x = -282.523, y = 31.517, z = 164.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 8030, gadget_id = 70500000, pos = { x = -282.523, y = 31.517, z = 164.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, isOneoff = true, owner = 8029 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8016, 8017, 8018, 8023, 8024, 8025, 8026, 8027, 8028, 8029, 8030 },
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