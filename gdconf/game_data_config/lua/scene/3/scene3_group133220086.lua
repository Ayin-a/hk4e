-- 基础信息
local base_info = {
	group_id = 133220086
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
	{ config_id = 86005, gadget_id = 71700288, pos = { x = -2410.125, y = 246.103, z = -4461.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
	npcs = {
		{ config_id = 86004, npc_id = 20229, pos = { x = -2410.049, y = 246.115, z = -4460.741 }, rot = { x = 0.000, y = 24.399, z = 0.000 }, area_id = 11 }
	},
	gadgets = {
		{ config_id = 86002, gadget_id = 70210104, pos = { x = -2409.972, y = 244.506, z = -4459.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 11 }
	},
	regions = {
		{ config_id = 86001, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2411.310, y = 246.369, z = -4463.326 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1086001, name = "ENTER_REGION_86001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86001", action = "action_EVENT_ENTER_REGION_86001", trigger_count = 0 },
		{ config_id = 1086003, name = "GADGET_STATE_CHANGE_86003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_86003", action = "action_EVENT_GADGET_STATE_CHANGE_86003", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 86005 },
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