-- 基础信息
local base_info = {
	group_id = 133220397
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
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 397001, monster_id = 20011401, pos = { x = -2139.327, y = 201.366, z = -4461.575 }, rot = { x = 355.980, y = 150.656, z = 6.449 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
		{ config_id = 397002, monster_id = 20011503, pos = { x = -2140.757, y = 202.230, z = -4462.740 }, rot = { x = 0.000, y = 127.350, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 },
		{ config_id = 397003, monster_id = 20011401, pos = { x = -2140.488, y = 201.132, z = -4464.817 }, rot = { x = 4.172, y = 85.686, z = 6.352 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
	},
	gadgets = {
		{ config_id = 397004, gadget_id = 70220008, pos = { x = -2140.886, y = 200.101, z = -4464.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 397005, gadget_id = 70220008, pos = { x = -2139.789, y = 199.551, z = -4461.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 397008, gadget_id = 70211001, pos = { x = -2140.912, y = 199.618, z = -4462.926 }, rot = { x = 0.000, y = 116.870, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1397006, name = "ANY_GADGET_DIE_397006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_397006", action = "action_EVENT_ANY_GADGET_DIE_397006", trigger_count = 0 },
		{ config_id = 1397007, name = "ANY_GADGET_DIE_397007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_397007", action = "action_EVENT_ANY_GADGET_DIE_397007", trigger_count = 0 },
		{ config_id = 1397009, name = "VARIABLE_CHANGE_397009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_397009", action = "action_EVENT_VARIABLE_CHANGE_397009", trigger_count = 0 }
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