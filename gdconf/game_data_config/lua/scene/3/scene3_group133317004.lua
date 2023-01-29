-- 基础信息
local base_info = {
	group_id = 133317004
}

-- DEFS_MISCS
local defs = {
 reset_region = 4004, --玩法的限制区域
 gadget_id_bright = 70310498,
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
	{ config_id = 4001, gadget_id = 70220135, pos = { x = 799.371, y = 246.065, z = 6039.457 }, rot = { x = 0.000, y = 33.872, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 4002, gadget_id = 70310498, pos = { x = 772.506, y = 243.018, z = 6049.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 },
	{ config_id = 4003, gadget_id = 70350467, pos = { x = 789.012, y = 249.786, z = 6060.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
}

-- 区域
regions = {
	{ config_id = 4004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 788.245, y = 244.268, z = 6044.016 }, area_id = 30, team_ability_group_list = { "TMHY_Bright_Play_AbilityGroup" } }
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "ENTER_REGION_4004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 }
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
		gadgets = { 4001, 4002, 4003 },
		regions = { 4004 },
		triggers = { "ENTER_REGION_4004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_6/ResidualBright"