-- 基础信息
local base_info = {
	group_id = 133102037
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
	{ config_id = 165, gadget_id = 70210101, pos = { x = 1769.796, y = 200.928, z = 36.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 222, gadget_id = 70211101, pos = { x = 1616.336, y = 229.791, z = 145.897 }, rot = { x = 0.000, y = 72.743, z = 0.000 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 223, gadget_id = 70211103, pos = { x = 1605.146, y = 232.367, z = 132.590 }, rot = { x = 345.452, y = 1.132, z = 351.151 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 344, gadget_id = 70211103, pos = { x = 1604.590, y = 251.157, z = 172.449 }, rot = { x = 10.397, y = 99.186, z = 10.936 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 769, gadget_id = 70211104, pos = { x = 1689.301, y = 201.047, z = 84.698 }, rot = { x = 5.839, y = 87.846, z = 17.290 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 37001, gadget_id = 70211101, pos = { x = 1762.686, y = 202.320, z = 45.893 }, rot = { x = 2.461, y = 59.070, z = 350.278 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 37002, gadget_id = 70210101, pos = { x = 1537.468, y = 218.756, z = 269.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 5 },
	{ config_id = 37006, gadget_id = 70210101, pos = { x = 1568.969, y = 218.756, z = 258.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", area_id = 5 },
	{ config_id = 37007, gadget_id = 70210101, pos = { x = 1538.765, y = 218.756, z = 270.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜矿石璃月", area_id = 5 },
	{ config_id = 37010, gadget_id = 70210101, pos = { x = 1556.819, y = 218.756, z = 262.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", area_id = 5 },
	{ config_id = 37013, gadget_id = 70211001, pos = { x = 1563.084, y = 218.756, z = 265.245 }, rot = { x = 0.000, y = 127.801, z = 0.000 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		gadgets = { 165, 222, 223, 344, 769, 37001, 37002, 37006, 37007, 37010, 37013 },
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