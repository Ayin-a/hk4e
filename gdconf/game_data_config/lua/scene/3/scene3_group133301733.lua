-- 基础信息
local base_info = {
	group_id = 133301733
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
	{ config_id = 733001, gadget_id = 70210101, pos = { x = -387.536, y = 288.622, z = 4018.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 733002, gadget_id = 70210101, pos = { x = -379.515, y = 283.344, z = 4018.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 733003, gadget_id = 70210101, pos = { x = -387.876, y = 283.228, z = 4020.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 733004, gadget_id = 70210101, pos = { x = -408.082, y = 277.401, z = 4013.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 733005, gadget_id = 70210101, pos = { x = -394.212, y = 282.872, z = 4018.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 733006, gadget_id = 70210101, pos = { x = -417.125, y = 272.796, z = 4011.214 }, rot = { x = 0.721, y = 0.013, z = 2.051 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 733007, gadget_id = 70210101, pos = { x = -418.510, y = 273.477, z = 3997.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 733008, gadget_id = 70210101, pos = { x = -425.051, y = 272.350, z = 4007.375 }, rot = { x = 0.721, y = 0.013, z = 2.051 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 733009, gadget_id = 70210101, pos = { x = -388.885, y = 277.883, z = 3996.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 }
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
		{ config_id = 733010, gadget_id = 70210101, pos = { x = -370.328, y = 282.905, z = 4002.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 22 }
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
		gadgets = { 733001, 733002, 733003, 733004, 733005, 733006, 733007, 733008, 733009 },
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