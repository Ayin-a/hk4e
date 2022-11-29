-- 基础信息
local base_info = {
	group_id = 133102190
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 345, monster_id = 21010501, pos = { x = 1396.522, y = 206.188, z = 422.152 }, rot = { x = 0.000, y = 129.048, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 347, monster_id = 21010101, pos = { x = 1387.628, y = 206.680, z = 431.246 }, rot = { x = 0.000, y = 124.277, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 348, monster_id = 21010101, pos = { x = 1387.760, y = 206.569, z = 428.857 }, rot = { x = 0.000, y = 63.863, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 5 },
	{ config_id = 190001, monster_id = 21010501, pos = { x = 1399.380, y = 207.702, z = 426.759 }, rot = { x = 0.000, y = 155.761, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 687, gadget_id = 70211101, pos = { x = 1390.944, y = 206.103, z = 429.410 }, rot = { x = 351.728, y = 275.654, z = 350.256 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 190002, gadget_id = 70211101, pos = { x = 1395.697, y = 206.979, z = 432.959 }, rot = { x = 0.000, y = 133.878, z = 3.227 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		-- description = suite_1,
		monsters = { 345, 347, 348, 190001 },
		gadgets = { 687, 190002 },
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