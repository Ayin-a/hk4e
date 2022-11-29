-- 基础信息
local base_info = {
	group_id = 199004204
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
		{ config_id = 204001, gadget_id = 70950084, pos = { x = -295.954, y = 133.219, z = -657.135 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 204002, gadget_id = 70950084, pos = { x = -309.482, y = 135.190, z = -654.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 204003, gadget_id = 70950085, pos = { x = -295.954, y = 133.219, z = -657.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 204004, gadget_id = 70950085, pos = { x = -309.482, y = 135.190, z = -654.424 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 204007, gadget_id = 70950084, pos = { x = -297.131, y = 134.636, z = -672.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 204008, gadget_id = 70950085, pos = { x = -297.131, y = 134.636, z = -672.030 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1204006, name = "VARIABLE_CHANGE_204006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_204006", action = "" }
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