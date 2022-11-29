-- 基础信息
local base_info = {
	group_id = 133002146
}

-- Trigger变量
local defs = {
	gallery_id = 27001,
	region = 146002,
	leave_region = 146005
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
	{ config_id = 146003, npc_id = 30245, pos = { x = 1808.963, y = 234.886, z = -841.889 }, rot = { x = 0.000, y = 21.700, z = 0.000 }, area_id = 3 }
}

-- 装置
gadgets = {
	{ config_id = 146001, gadget_id = 70360001, pos = { x = 1782.988, y = 246.674, z = -774.770 }, rot = { x = 0.000, y = 163.223, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 146002, shape = RegionShape.SPHERE, radius = 100, pos = { x = 1759.876, y = 251.962, z = -799.353 }, area_id = 3 },
	{ config_id = 146005, shape = RegionShape.CUBIC, size = { x = 64.000, y = 30.000, z = 100.000 }, pos = { x = 1762.634, y = 251.287, z = -812.989 }, area_id = 3 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1146004, name = "GALLERY_START_146004", event = EventType.EVENT_GALLERY_START, source = "", condition = "condition_EVENT_GALLERY_START_146004", action = "action_EVENT_GALLERY_START_146004", trigger_count = 0 }
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
		gadgets = { 146001 },
		regions = { 146002, 146005 },
		triggers = { },
		npcs = { 146003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_1/Activity_Hunt_Stage_1"