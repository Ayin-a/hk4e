-- 基础信息
local base_info = {
	group_id = 133221058
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
	{ config_id = 58001, gadget_id = 70210101, pos = { x = -3105.194, y = 251.829, z = -4423.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58002, gadget_id = 70210101, pos = { x = -3106.415, y = 251.619, z = -4423.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58004, gadget_id = 70211101, pos = { x = -3317.663, y = 268.416, z = -4457.600 }, rot = { x = 0.000, y = 51.496, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58005, gadget_id = 70211101, pos = { x = -3390.570, y = 282.140, z = -4510.966 }, rot = { x = 0.000, y = 232.283, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58006, gadget_id = 70211101, pos = { x = -3275.268, y = 267.686, z = -4517.187 }, rot = { x = 0.000, y = 287.815, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58007, gadget_id = 70211101, pos = { x = -3244.431, y = 271.034, z = -4562.308 }, rot = { x = 0.000, y = 140.088, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58008, gadget_id = 70211111, pos = { x = -3280.333, y = 294.567, z = -4600.416 }, rot = { x = 0.000, y = 52.129, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58009, gadget_id = 70211111, pos = { x = -3355.147, y = 293.915, z = -4530.826 }, rot = { x = 0.000, y = 229.621, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58010, gadget_id = 70211121, pos = { x = -3424.428, y = 340.366, z = -4610.887 }, rot = { x = 0.000, y = 320.779, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58012, gadget_id = 70211101, pos = { x = -3114.242, y = 226.389, z = -4365.070 }, rot = { x = 0.000, y = 176.072, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58013, gadget_id = 70211101, pos = { x = -3033.126, y = 218.887, z = -4427.732 }, rot = { x = 0.000, y = 54.570, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58014, gadget_id = 70211111, pos = { x = -3056.723, y = 237.201, z = -4440.504 }, rot = { x = 0.000, y = 306.190, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58021, gadget_id = 70211111, pos = { x = -3096.863, y = 243.648, z = -4377.707 }, rot = { x = 0.000, y = 301.312, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58022, gadget_id = 70211101, pos = { x = -3154.207, y = 248.401, z = -4402.928 }, rot = { x = 0.000, y = 140.465, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58023, gadget_id = 70211111, pos = { x = -3098.893, y = 247.878, z = -4450.629 }, rot = { x = 0.000, y = 311.065, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 58025, gadget_id = 70210101, pos = { x = -3107.774, y = 252.277, z = -4409.521 }, rot = { x = 0.000, y = 323.171, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58026, gadget_id = 70210101, pos = { x = -3028.121, y = 214.140, z = -4331.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58027, gadget_id = 70210101, pos = { x = -3135.266, y = 254.320, z = -4463.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58028, gadget_id = 70210101, pos = { x = -3022.323, y = 220.987, z = -4360.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58030, gadget_id = 70210101, pos = { x = -3114.627, y = 237.443, z = -4365.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58031, gadget_id = 70210101, pos = { x = -3065.281, y = 226.202, z = -4371.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 58032, gadget_id = 70210101, pos = { x = -3129.156, y = 253.212, z = -4459.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		gadgets = { 58001, 58002, 58004, 58005, 58006, 58007, 58008, 58009, 58010, 58012, 58013, 58014, 58021, 58022, 58023, 58025, 58026, 58027, 58028, 58030, 58031, 58032 },
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