-- 基础信息
local base_info = {
	group_id = 133212445
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
	{ config_id = 445004, gadget_id = 70950109, pos = { x = -3995.774, y = 200.961, z = -2274.919 }, rot = { x = 271.907, y = 255.376, z = 229.290 }, level = 27, area_id = 13 }
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
		{ config_id = 445007, gadget_id = 70330083, pos = { x = -4218.415, y = 198.118, z = -2497.066 }, rot = { x = 0.000, y = 281.342, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 445008, gadget_id = 70330083, pos = { x = -4208.390, y = 198.971, z = -2490.965 }, rot = { x = 0.000, y = 47.582, z = 351.935 }, level = 27, area_id = 13 },
		{ config_id = 445010, gadget_id = 70330083, pos = { x = -4217.227, y = 199.681, z = -2507.248 }, rot = { x = 0.000, y = 195.795, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 445011, gadget_id = 70350292, pos = { x = -4217.305, y = 201.257, z = -2507.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
	},
	triggers = {
		{ config_id = 1445006, name = "GADGET_STATE_CHANGE_445006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_445006", action = "", trigger_count = 0 }
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
		gadgets = { 445004 },
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