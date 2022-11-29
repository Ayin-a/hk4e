-- 基础信息
local base_info = {
	group_id = 247005027
}

-- DEFS_MISCS
local GroupId = 247005027
local ChestConfigID = 27001
local RegionID = 27004

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
	{ config_id = 27002, gadget_id = 70310125, pos = { x = -80.000, y = 0.114, z = 220.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 27003, gadget_id = 70310125, pos = { x = -100.000, y = 0.114, z = 240.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 27005, gadget_id = 70360283, pos = { x = -75.915, y = 10.151, z = 236.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27006, gadget_id = 70360283, pos = { x = -80.865, y = 10.132, z = 241.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 27009, gadget_id = 70310125, pos = { x = -80.000, y = 0.114, z = 260.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27010, gadget_id = 70310125, pos = { x = -60.000, y = 0.164, z = 240.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 27004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = -80.000, y = 0.050, z = 240.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1027004, name = "ENTER_REGION_27004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 27007, shape = RegionShape.SPHERE, radius = 2, pos = { x = -75.915, y = 0.016, z = 236.021 } },
		{ config_id = 27008, shape = RegionShape.SPHERE, radius = 2, pos = { x = -80.592, y = 0.071, z = 240.632 } }
	},
	triggers = {
		{ config_id = 1027007, name = "ENTER_REGION_27007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27007", action = "action_EVENT_ENTER_REGION_27007" },
		{ config_id = 1027008, name = "ENTER_REGION_27008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_27008", action = "action_EVENT_ENTER_REGION_27008" }
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
		gadgets = { 27002, 27003, 27005, 27006, 27009, 27010 },
		regions = { 27004 },
		triggers = { "ENTER_REGION_27004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================