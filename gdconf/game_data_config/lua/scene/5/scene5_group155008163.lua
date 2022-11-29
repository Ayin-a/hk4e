-- 基础信息
local base_info = {
	group_id = 155008163
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
	{ config_id = 163003, gadget_id = 70217012, pos = { x = -218.983, y = 205.680, z = 210.598 }, rot = { x = 355.242, y = 179.993, z = 10.608 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163004, gadget_id = 70217012, pos = { x = -33.900, y = 229.271, z = 263.706 }, rot = { x = 359.792, y = 343.277, z = 355.339 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163005, gadget_id = 70217012, pos = { x = -155.582, y = 242.694, z = 338.374 }, rot = { x = 358.658, y = 0.005, z = 359.544 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163007, gadget_id = 70217012, pos = { x = -159.691, y = 254.906, z = 464.984 }, rot = { x = 0.000, y = 4.842, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163009, gadget_id = 70217012, pos = { x = -155.450, y = 193.680, z = 396.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163010, gadget_id = 70217012, pos = { x = -217.085, y = 237.533, z = 336.160 }, rot = { x = 1.987, y = 48.772, z = 0.461 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163012, gadget_id = 70217012, pos = { x = -545.861, y = 218.519, z = 507.068 }, rot = { x = 0.000, y = 18.120, z = 0.000 }, level = 21, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163013, gadget_id = 70217012, pos = { x = -507.622, y = 249.177, z = 485.193 }, rot = { x = 351.856, y = 48.529, z = 14.098 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 163014, gadget_id = 70217012, pos = { x = -468.480, y = 210.317, z = 466.597 }, rot = { x = 354.923, y = 224.671, z = 13.427 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 163001, gadget_id = 70217012, pos = { x = -193.609, y = 177.411, z = 128.794 }, rot = { x = 22.027, y = 27.946, z = 334.523 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 163002, gadget_id = 70217012, pos = { x = -256.632, y = 217.257, z = 188.210 }, rot = { x = 0.874, y = 178.639, z = 359.084 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 163006, gadget_id = 70217012, pos = { x = -218.083, y = 242.241, z = 427.262 }, rot = { x = 357.324, y = 44.224, z = 4.580 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 163008, gadget_id = 70217012, pos = { x = -163.178, y = 186.912, z = 465.880 }, rot = { x = 357.150, y = 75.750, z = 8.442 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 163011, gadget_id = 70217012, pos = { x = -355.186, y = 257.427, z = 419.317 }, rot = { x = 12.679, y = 37.702, z = 0.331 }, level = 16, drop_tag = "摩拉石箱稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	}
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
		gadgets = { 163003, 163004, 163005, 163007, 163009, 163010, 163012, 163013, 163014 },
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