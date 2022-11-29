-- 基础信息
local base_info = {
	group_id = 220133023
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
		{ config_id = 23001, gadget_id = 70310242, pos = { x = 2249.159, y = 539.757, z = 537.828 }, rot = { x = 0.000, y = 285.174, z = 0.000 }, level = 1, interact_id = 64 },
		{ config_id = 23002, gadget_id = 70310020, pos = { x = 2245.104, y = 538.660, z = 537.642 }, rot = { x = 0.000, y = 17.393, z = 0.000 }, level = 1, route_id = 2 },
		{ config_id = 23003, gadget_id = 70360046, pos = { x = 2200.870, y = 557.459, z = 582.763 }, rot = { x = 0.000, y = 17.393, z = 0.000 }, level = 1 },
		{ config_id = 23004, gadget_id = 70310242, pos = { x = 2196.355, y = 559.139, z = 584.877 }, rot = { x = 0.000, y = 285.174, z = 0.000 }, level = 1, interact_id = 64 }
	},
	triggers = {
		{ config_id = 1023005, name = "GADGET_STATE_CHANGE_23005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23005", action = "action_EVENT_GADGET_STATE_CHANGE_23005" }
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