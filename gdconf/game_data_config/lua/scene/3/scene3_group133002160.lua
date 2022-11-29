-- 基础信息
local base_info = {
	group_id = 133002160
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
	{ config_id = 1433, gadget_id = 70211101, pos = { x = 1784.836, y = 247.145, z = -604.709 }, rot = { x = 17.879, y = 274.166, z = 354.742 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1434, gadget_id = 70211101, pos = { x = 1790.927, y = 255.025, z = -516.370 }, rot = { x = 0.000, y = 119.432, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1435, gadget_id = 70211101, pos = { x = 1850.668, y = 226.701, z = -391.480 }, rot = { x = 0.000, y = 282.997, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1436, gadget_id = 70211101, pos = { x = 1807.533, y = 204.825, z = -274.083 }, rot = { x = 357.608, y = 124.822, z = 359.043 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1437, gadget_id = 70211101, pos = { x = 1756.202, y = 216.783, z = -358.749 }, rot = { x = 359.350, y = 124.509, z = 4.874 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1438, gadget_id = 70211101, pos = { x = 1738.834, y = 219.721, z = -393.546 }, rot = { x = 359.009, y = 188.396, z = 352.237 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1441, gadget_id = 70211101, pos = { x = 1746.940, y = 238.538, z = -628.412 }, rot = { x = 14.513, y = 282.850, z = 358.848 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 2128, gadget_id = 70211101, pos = { x = 1811.539, y = 217.898, z = -442.797 }, rot = { x = 0.000, y = 37.054, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
	rand_suite = true
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
		gadgets = { 1433, 1434, 1435, 1436, 1437, 1438, 1441, 2128 },
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