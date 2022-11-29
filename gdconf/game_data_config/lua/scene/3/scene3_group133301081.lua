-- 基础信息
local base_info = {
	group_id = 133301081
}

-- Trigger变量
local defs = {
	operator_1 = 81007,
	operator_2 = 81008,
	chest = 81009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 81001, monster_id = 26090701, pos = { x = -669.214, y = 214.648, z = 3384.754 }, rot = { x = 0.000, y = 54.691, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81002, monster_id = 26090701, pos = { x = -666.773, y = 213.523, z = 3393.926 }, rot = { x = 0.000, y = 153.626, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81003, monster_id = 26090401, pos = { x = -664.520, y = 213.755, z = 3383.030 }, rot = { x = 0.000, y = 353.541, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81004, monster_id = 26090701, pos = { x = -669.869, y = 214.277, z = 3390.825 }, rot = { x = 0.000, y = 110.885, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81005, monster_id = 26090701, pos = { x = -661.742, y = 212.929, z = 3394.100 }, rot = { x = 0.000, y = 175.470, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81006, monster_id = 26090401, pos = { x = -659.291, y = 212.366, z = 3388.141 }, rot = { x = 0.000, y = 278.315, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81010, monster_id = 20011301, pos = { x = -659.578, y = 212.680, z = 3383.534 }, rot = { x = 0.000, y = 307.594, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 22 },
	{ config_id = 81011, monster_id = 26090701, pos = { x = -662.471, y = 213.187, z = 3383.899 }, rot = { x = 0.000, y = 318.247, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 81012, monster_id = 26090701, pos = { x = -660.297, y = 212.569, z = 3386.000 }, rot = { x = 0.000, y = 303.330, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 81007, gadget_id = 70360056, pos = { x = -663.959, y = 213.188, z = 3387.080 }, rot = { x = 3.525, y = 359.699, z = 350.247 }, level = 1, area_id = 22 },
	{ config_id = 81008, gadget_id = 70360057, pos = { x = -663.731, y = 213.153, z = 3387.023 }, rot = { x = 3.525, y = 359.699, z = 350.247 }, level = 1, area_id = 22 },
	{ config_id = 81009, gadget_id = 70210106, pos = { x = -664.222, y = 213.255, z = 3386.856 }, rot = { x = 3.505, y = 359.648, z = 348.517 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 22 },
	{ config_id = 81013, gadget_id = 70220010, pos = { x = -659.992, y = 212.660, z = 3391.870 }, rot = { x = 354.848, y = 187.999, z = 10.851 }, level = 1, area_id = 22 },
	{ config_id = 81014, gadget_id = 70220010, pos = { x = -667.364, y = 214.447, z = 3382.914 }, rot = { x = 18.193, y = 76.345, z = 8.715 }, level = 1, area_id = 22 }
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
		gadgets = { 81013, 81014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 81001, 81002, 81004, 81005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 81003, 81006, 81010, 81011, 81012 },
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

require "V2_0/BlossomGroup"