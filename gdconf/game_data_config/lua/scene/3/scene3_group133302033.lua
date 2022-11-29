-- 基础信息
local base_info = {
	group_id = 133302033
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
	{ config_id = 33001, gadget_id = 70500000, pos = { x = -630.168, y = 132.064, z = 2524.418 }, rot = { x = 0.000, y = 247.530, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33003, gadget_id = 70500000, pos = { x = -595.995, y = 132.000, z = 2529.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33004, gadget_id = 70500000, pos = { x = -561.698, y = 133.123, z = 2539.918 }, rot = { x = 0.000, y = 167.470, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33005, gadget_id = 70500000, pos = { x = -535.843, y = 132.093, z = 2523.259 }, rot = { x = 0.000, y = 227.510, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33006, gadget_id = 70500000, pos = { x = -560.121, y = 133.479, z = 2508.795 }, rot = { x = 0.000, y = 91.680, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33007, gadget_id = 70500000, pos = { x = -459.180, y = 132.613, z = 2517.047 }, rot = { x = 0.000, y = 239.800, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
	{ config_id = 33008, gadget_id = 70500000, pos = { x = -446.054, y = 132.576, z = 2486.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
	{ config_id = 33010, gadget_id = 70500000, pos = { x = -394.387, y = 132.645, z = 2506.844 }, rot = { x = 0.000, y = 252.200, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
	{ config_id = 33013, gadget_id = 70500000, pos = { x = -380.102, y = 132.023, z = 2482.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
	{ config_id = 33016, gadget_id = 70500000, pos = { x = -513.849, y = 132.497, z = 2499.954 }, rot = { x = 0.000, y = 321.010, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033011, name = "QUEST_FINISH_33011", event = EventType.EVENT_QUEST_FINISH, source = "1300105", condition = "", action = "", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 33002, gadget_id = 70500000, pos = { x = -622.566, y = 132.245, z = 2518.307 }, rot = { x = 0.000, y = 298.470, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 },
		{ config_id = 33009, gadget_id = 70500000, pos = { x = -410.798, y = 132.812, z = 2503.180 }, rot = { x = 0.000, y = 134.720, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
		{ config_id = 33012, gadget_id = 70500000, pos = { x = -391.573, y = 136.418, z = 2500.758 }, rot = { x = 0.000, y = 325.260, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
		{ config_id = 33014, gadget_id = 70500000, pos = { x = -356.321, y = 132.425, z = 2484.079 }, rot = { x = 0.000, y = 144.570, z = 0.000 }, level = 1, point_type = 9314, area_id = 24 },
		{ config_id = 33015, gadget_id = 70500000, pos = { x = -650.320, y = 132.130, z = 2563.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9313, area_id = 24 }
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
		gadgets = { 33001, 33003, 33004, 33005, 33006, 33007, 33008, 33010, 33013, 33016 },
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

require "V3_0/DeathFieldStandard"