-- 基础信息
local base_info = {
	group_id = 247006030
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
	{ config_id = 30001, gadget_id = 70310146, pos = { x = -178.107, y = 1.186, z = 331.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30002, gadget_id = 70310146, pos = { x = -62.259, y = 1.524, z = 67.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30003, gadget_id = 70210101, pos = { x = -77.193, y = 2.740, z = 115.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30004, gadget_id = 70210101, pos = { x = -157.964, y = 1.149, z = 216.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30005, gadget_id = 70310146, pos = { x = -142.613, y = 1.364, z = 312.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30006, gadget_id = 70210101, pos = { x = -58.111, y = 2.069, z = 306.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30007, gadget_id = 70210101, pos = { x = -27.431, y = 0.442, z = 313.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30008, gadget_id = 70310146, pos = { x = 44.667, y = 1.843, z = 323.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30009, gadget_id = 70310146, pos = { x = 61.912, y = 1.284, z = 228.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30013, gadget_id = 70210101, pos = { x = 44.304, y = 2.521, z = 82.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30014, gadget_id = 70310146, pos = { x = 98.351, y = 1.045, z = 149.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30016, gadget_id = 70210101, pos = { x = 39.811, y = -0.683, z = 396.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 30017, gadget_id = 70310146, pos = { x = -0.492, y = 1.125, z = 79.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30018, gadget_id = 70310146, pos = { x = -3.075, y = 0.735, z = 129.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30019, gadget_id = 70310146, pos = { x = -40.557, y = -1.042, z = 158.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 30020, gadget_id = 70310146, pos = { x = -134.463, y = 0.771, z = 162.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30013, 30014, 30016, 30017, 30018, 30019, 30020 },
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