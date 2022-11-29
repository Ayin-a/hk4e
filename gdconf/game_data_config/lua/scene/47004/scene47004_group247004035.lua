-- 基础信息
local base_info = {
	group_id = 247004035
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
	{ config_id = 35001, gadget_id = 70210101, pos = { x = 7.803, y = 1.731, z = 118.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35002, gadget_id = 70210101, pos = { x = -72.359, y = 1.679, z = 197.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35003, gadget_id = 70210101, pos = { x = -77.762, y = 1.042, z = 293.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35004, gadget_id = 70210101, pos = { x = -79.279, y = 0.357, z = 319.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35005, gadget_id = 70210101, pos = { x = 29.478, y = 1.133, z = 392.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35010, gadget_id = 70210101, pos = { x = -5.881, y = 1.395, z = 132.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true },
	{ config_id = 35011, gadget_id = 70310146, pos = { x = 7.675, y = 4.588, z = 189.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35012, gadget_id = 70310146, pos = { x = 2.472, y = -8.564, z = 199.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35013, gadget_id = 70310146, pos = { x = -11.923, y = 0.709, z = 293.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35014, gadget_id = 70310146, pos = { x = 2.043, y = 0.983, z = 293.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35015, gadget_id = 70310146, pos = { x = 41.749, y = 1.829, z = 247.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35016, gadget_id = 70310146, pos = { x = -84.915, y = 1.462, z = 191.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35017, gadget_id = 70310146, pos = { x = -36.192, y = -8.461, z = 317.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35018, gadget_id = 70310146, pos = { x = -64.524, y = 0.666, z = 303.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35019, gadget_id = 70310146, pos = { x = 81.756, y = -8.421, z = 444.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 35020, gadget_id = 70310146, pos = { x = 87.678, y = 4.634, z = 429.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600007, drop_count = 1, isOneoff = true, persistent = true }
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
		gadgets = { 35001, 35002, 35003, 35004, 35005, 35010, 35011, 35012, 35013, 35014, 35015, 35016, 35017, 35018, 35019, 35020 },
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