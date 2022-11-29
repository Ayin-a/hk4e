-- 基础信息
local base_info = {
	group_id = 133001370
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
	{ config_id = 370001, gadget_id = 70211111, pos = { x = 1927.015, y = 216.562, z = -1130.539 }, rot = { x = 0.000, y = 335.234, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 370002, gadget_id = 70211101, pos = { x = 1964.507, y = 221.980, z = -1490.951 }, rot = { x = 357.207, y = 191.173, z = 357.479 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 370003, gadget_id = 70211101, pos = { x = 1699.142, y = 233.152, z = -1345.763 }, rot = { x = 0.000, y = 181.995, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370004, gadget_id = 70211101, pos = { x = 1680.844, y = 244.344, z = -1327.409 }, rot = { x = 0.335, y = 218.123, z = 10.749 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370005, gadget_id = 70211101, pos = { x = 1614.799, y = 261.211, z = -1282.759 }, rot = { x = 13.708, y = 148.039, z = 352.829 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370006, gadget_id = 70211101, pos = { x = 1807.251, y = 194.874, z = -1507.600 }, rot = { x = 0.000, y = 225.111, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370007, gadget_id = 70210101, pos = { x = 1722.773, y = 194.695, z = -1550.999 }, rot = { x = 0.000, y = 190.255, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用蒙德", area_id = 2 },
	{ config_id = 370008, gadget_id = 70210101, pos = { x = 1796.897, y = 232.659, z = -1093.420 }, rot = { x = 0.000, y = 292.769, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用蒙德", area_id = 3 },
	{ config_id = 370009, gadget_id = 70211101, pos = { x = 1803.922, y = 241.042, z = -1196.380 }, rot = { x = 15.273, y = 101.846, z = 0.357 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370010, gadget_id = 70211101, pos = { x = 1679.405, y = 267.664, z = -1187.904 }, rot = { x = 345.828, y = 302.900, z = 354.236 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370011, gadget_id = 70211101, pos = { x = 1710.455, y = 262.274, z = -1274.053 }, rot = { x = 12.220, y = 100.817, z = 0.086 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370012, gadget_id = 70211011, pos = { x = 1576.026, y = 294.191, z = -1199.781 }, rot = { x = 0.000, y = 144.268, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 370013, gadget_id = 70211101, pos = { x = 1974.699, y = 236.984, z = -1534.025 }, rot = { x = 358.700, y = 3.264, z = 1.407 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 370014, gadget_id = 70211101, pos = { x = 1662.515, y = 248.645, z = -1203.899 }, rot = { x = 0.632, y = 182.097, z = 1.655 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
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
		gadgets = { 370001, 370002, 370003, 370004, 370005, 370006, 370007, 370008, 370009, 370010, 370011, 370012, 370013, 370014 },
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