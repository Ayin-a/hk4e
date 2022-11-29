-- 基础信息
local base_info = {
	group_id = 133102247
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487, monster_id = 21010401, pos = { x = 1249.347, y = 200.000, z = -32.104 }, rot = { x = 0.000, y = 20.666, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 488, monster_id = 21010601, pos = { x = 1235.057, y = 199.501, z = -29.100 }, rot = { x = 0.000, y = 319.148, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 489, monster_id = 21010101, pos = { x = 1249.908, y = 199.389, z = -18.279 }, rot = { x = 0.000, y = 77.344, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 490, monster_id = 21010101, pos = { x = 1239.363, y = 199.692, z = -32.174 }, rot = { x = 0.000, y = 204.072, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1054, gadget_id = 70220013, pos = { x = 1254.849, y = 200.271, z = -47.740 }, rot = { x = 1.027, y = 162.992, z = 15.230 }, level = 16, area_id = 5 },
	{ config_id = 1055, gadget_id = 70220013, pos = { x = 1254.221, y = 200.153, z = -45.345 }, rot = { x = 354.002, y = 159.832, z = 6.908 }, level = 16, area_id = 5 },
	{ config_id = 1056, gadget_id = 70220005, pos = { x = 1241.511, y = 199.794, z = -32.478 }, rot = { x = 0.000, y = 212.675, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 1057, gadget_id = 70220005, pos = { x = 1242.141, y = 199.770, z = -33.167 }, rot = { x = 0.000, y = 212.675, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 1058, gadget_id = 70211001, pos = { x = 1250.437, y = 198.906, z = -17.888 }, rot = { x = 325.716, y = 212.675, z = 12.200 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 1059, gadget_id = 70211001, pos = { x = 1239.002, y = 199.404, z = -33.155 }, rot = { x = 325.716, y = 34.658, z = 12.200 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		monsters = { 487, 488, 489, 490 },
		gadgets = { 1054, 1055, 1056, 1057, 1058, 1059 },
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