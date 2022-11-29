-- 基础信息
local base_info = {
	group_id = 166001147
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
		{ config_id = 147002, gadget_id = 70290204, pos = { x = 743.872, y = 761.386, z = 290.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
		{ config_id = 147003, gadget_id = 70290233, pos = { x = 743.422, y = 761.636, z = 291.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 }
	},
	triggers = {
		{ config_id = 1147004, name = "ANY_GADGET_DIE_147004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147004", action = "action_EVENT_ANY_GADGET_DIE_147004" }
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

require "V2_6/DropRockAbyssBulletTrigger"