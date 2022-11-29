-- 基础信息
local base_info = {
	group_id = 133301439
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
		{ config_id = 439001, monster_id = 26010301, pos = { x = -507.345, y = 200.565, z = 3474.395 }, rot = { x = 0.000, y = 36.430, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 22 }
	},
	gadgets = {
		{ config_id = 439007, gadget_id = 70900388, pos = { x = -504.039, y = 199.697, z = 3478.799 }, rot = { x = 11.763, y = 35.995, z = 1.324 }, level = 33, area_id = 22 },
		{ config_id = 439008, gadget_id = 70900388, pos = { x = -503.353, y = 202.255, z = 3470.223 }, rot = { x = 10.670, y = 37.243, z = 358.082 }, level = 33, area_id = 22 },
		{ config_id = 439009, gadget_id = 70900388, pos = { x = -512.639, y = 201.125, z = 3472.146 }, rot = { x = 3.316, y = 33.479, z = 33.576 }, level = 33, area_id = 22 }
	},
	triggers = {
		{ config_id = 1439003, name = "GADGET_STATE_CHANGE_439003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_439003", action = "action_EVENT_GADGET_STATE_CHANGE_439003", trigger_count = 0 }
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