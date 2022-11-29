-- 基础信息
local base_info = {
	group_id = 199002121
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
		{ config_id = 121001, gadget_id = 70360001, pos = { x = -276.976, y = 120.485, z = 486.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
		{ config_id = 121007, gadget_id = 70211101, pos = { x = -276.976, y = 120.485, z = 486.819 }, rot = { x = 0.000, y = 66.053, z = 14.929 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
	},
	triggers = {
		{ config_id = 1121002, name = "GADGET_CREATE_121002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121002", action = "action_EVENT_GADGET_CREATE_121002" },
		{ config_id = 1121003, name = "SELECT_OPTION_121003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121003", action = "action_EVENT_SELECT_OPTION_121003" }
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