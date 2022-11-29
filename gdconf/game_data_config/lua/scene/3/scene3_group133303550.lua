-- 基础信息
local base_info = {
	group_id = 133303550
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
		{ config_id = 550001, gadget_id = 70210101, pos = { x = -1403.661, y = 236.561, z = 3680.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550002, gadget_id = 70330199, pos = { x = -1403.330, y = 236.236, z = 3679.917 }, rot = { x = 7.605, y = 300.386, z = 359.484 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550003, gadget_id = 70210101, pos = { x = -1428.111, y = 231.334, z = 3681.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550004, gadget_id = 70330199, pos = { x = -1402.181, y = 234.201, z = 3694.386 }, rot = { x = 0.000, y = 0.000, z = 26.324 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550005, gadget_id = 70330199, pos = { x = -1413.124, y = 232.253, z = 3674.992 }, rot = { x = 356.168, y = 175.229, z = 2.102 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550007, gadget_id = 70330199, pos = { x = -1427.887, y = 231.051, z = 3681.500 }, rot = { x = 352.247, y = 219.678, z = 359.517 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550008, gadget_id = 70210101, pos = { x = -1402.248, y = 234.401, z = 3694.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 550012, gadget_id = 70210101, pos = { x = -1413.255, y = 232.659, z = 3674.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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