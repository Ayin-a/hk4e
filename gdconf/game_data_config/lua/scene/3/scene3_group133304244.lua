-- 基础信息
local base_info = {
	group_id = 133304244
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
		{ config_id = 244002, gadget_id = 70360001, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 21 }
	},
	regions = {
		{ config_id = 244001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, area_id = 21 },
		{ config_id = 244003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, area_id = 21 },
		{ config_id = 244004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1494.356, y = 173.018, z = 2431.802 }, area_id = 21 }
	},
	triggers = {
		{ config_id = 1244001, name = "ENTER_REGION_244001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244001", action = "action_EVENT_ENTER_REGION_244001", trigger_count = 0 },
		{ config_id = 1244003, name = "LEAVE_REGION_244003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_244003", action = "action_EVENT_LEAVE_REGION_244003", trigger_count = 0 },
		{ config_id = 1244004, name = "ENTER_REGION_244004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244004", action = "action_EVENT_ENTER_REGION_244004", trigger_count = 0 },
		{ config_id = 1244005, name = "GADGET_STATE_CHANGE_244005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244005", action = "action_EVENT_GADGET_STATE_CHANGE_244005", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================