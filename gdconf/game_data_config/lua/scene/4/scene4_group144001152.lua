-- 基础信息
local base_info = {
	group_id = 144001152
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
	{ config_id = 152001, gadget_id = 70380275, pos = { x = -654.639, y = 120.214, z = -12.980 }, rot = { x = 0.041, y = 0.522, z = 355.533 }, level = 1, state = GadgetState.GearStop, isOneoff = true, area_id = 103, talk_state = 6800233 }
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
	triggers = {
		{ config_id = 1152002, name = "GADGETTALK_DONE_152002", event = EventType.EVENT_GADGETTALK_DONE, source = "6800219", condition = "", action = "action_EVENT_GADGETTALK_DONE_152002" }
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
		gadgets = { 152001 },
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