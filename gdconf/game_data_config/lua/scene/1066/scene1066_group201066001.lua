-- 基础信息
local base_info = {
	group_id = 201066001
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
	{ config_id = 1001, gadget_id = 70710453, pos = { x = -2.655, y = 1.006, z = 1.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1002, gadget_id = 70710456, pos = { x = -2.805, y = 1.006, z = 1.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1003, gadget_id = 70710452, pos = { x = -2.435, y = 1.006, z = 0.952 }, rot = { x = 0.000, y = 289.340, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1004, gadget_id = 70710460, pos = { x = -2.742, y = 1.006, z = 0.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1005, gadget_id = 70710454, pos = { x = -2.337, y = 1.006, z = 1.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1006, gadget_id = 70710453, pos = { x = -2.484, y = 1.006, z = 0.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1007, gadget_id = 70710456, pos = { x = -2.650, y = 1.006, z = -0.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1008, gadget_id = 70710458, pos = { x = -2.680, y = 1.006, z = 1.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1009, gadget_id = 70710454, pos = { x = -2.337, y = 1.006, z = 1.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1010, gadget_id = 70710458, pos = { x = -2.743, y = 1.006, z = 0.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1011, gadget_id = 70710454, pos = { x = -2.400, y = 1.006, z = 0.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1012, gadget_id = 70710453, pos = { x = -2.838, y = 1.006, z = -0.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1013, gadget_id = 70710456, pos = { x = -2.682, y = 1.006, z = 0.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1014, gadget_id = 70710496, pos = { x = -2.465, y = 1.006, z = 1.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1015, gadget_id = 70710676, pos = { x = -2.294, y = 1.006, z = 1.514 }, rot = { x = 0.000, y = 183.520, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1016, gadget_id = 70710454, pos = { x = -2.310, y = 1.006, z = -0.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1017, gadget_id = 70710676, pos = { x = -2.263, y = 1.006, z = 0.258 }, rot = { x = 0.000, y = 172.070, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1018, gadget_id = 70710496, pos = { x = -2.677, y = 1.006, z = 0.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1019, gadget_id = 70710676, pos = { x = -2.266, y = 1.006, z = -0.808 }, rot = { x = 0.000, y = 199.180, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1020, gadget_id = 70710451, pos = { x = -2.873, y = 1.010, z = 1.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1021, gadget_id = 70710726, pos = { x = -1.436, y = 0.000, z = -0.507 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1, room = 1 }
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
		gadgets = { 1006, 1007, 1008, 1009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002, 1003, 1004, 1005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1010, 1011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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