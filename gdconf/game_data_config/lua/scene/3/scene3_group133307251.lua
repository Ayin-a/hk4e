-- 基础信息
local base_info = {
	group_id = 133307251
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
	monsters = {
		{ config_id = 251007, monster_id = 25210301, pos = { x = -1406.086, y = 36.969, z = 5223.265 }, rot = { x = 0.000, y = 121.980, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
		{ config_id = 251008, monster_id = 25210501, pos = { x = -1407.010, y = 37.509, z = 5221.865 }, rot = { x = 0.000, y = 118.868, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
		{ config_id = 251009, monster_id = 28060511, pos = { x = -1403.384, y = 37.001, z = 5215.615 }, rot = { x = 0.000, y = 110.741, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 32 },
		{ config_id = 251013, monster_id = 25110401, pos = { x = -1406.275, y = 36.453, z = 5229.078 }, rot = { x = 0.000, y = 257.597, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 32 }
	},
	gadgets = {
		{ config_id = 251001, gadget_id = 70310009, pos = { x = -1403.997, y = 35.143, z = 5229.494 }, rot = { x = 340.885, y = 268.951, z = 351.936 }, level = 32, area_id = 32 },
		{ config_id = 251002, gadget_id = 71700226, pos = { x = -1407.813, y = 36.678, z = 5230.455 }, rot = { x = 0.000, y = 205.118, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 251003, gadget_id = 71700487, pos = { x = -1406.964, y = 36.390, z = 5229.296 }, rot = { x = 0.000, y = 351.167, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 251004, gadget_id = 71700487, pos = { x = -1406.582, y = 36.304, z = 5228.694 }, rot = { x = 0.000, y = 351.167, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 251005, gadget_id = 70300104, pos = { x = -1407.913, y = 37.021, z = 5226.544 }, rot = { x = 15.958, y = 91.515, z = 0.000 }, level = 32, area_id = 32 },
		{ config_id = 251006, gadget_id = 70220128, pos = { x = -1406.850, y = 37.269, z = 5223.261 }, rot = { x = 352.727, y = 174.428, z = 20.275 }, level = 32, area_id = 32 },
		{ config_id = 251010, gadget_id = 70210101, pos = { x = -1406.274, y = 36.462, z = 5229.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 32 },
		{ config_id = 251011, gadget_id = 71700487, pos = { x = -1406.190, y = 36.112, z = 5228.828 }, rot = { x = 81.239, y = 351.168, z = 5.933 }, level = 32, area_id = 32 }
	},
	triggers = {
		{ config_id = 1251012, name = "GADGET_STATE_CHANGE_251012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "" }
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