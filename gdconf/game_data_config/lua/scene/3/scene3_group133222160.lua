-- 基础信息
local base_info = {
	group_id = 133222160
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
	{ config_id = 1, name = "count1", value = 0, no_refresh = false },
	{ config_id = 2, name = "count2", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 160001, gadget_id = 70300093, pos = { x = -5195.385, y = 200.063, z = -4305.507 }, rot = { x = 0.001, y = 0.057, z = 359.105 }, level = 30, area_id = 14 },
		{ config_id = 160002, gadget_id = 70211002, pos = { x = -5197.918, y = 199.769, z = -4305.287 }, rot = { x = 317.120, y = 272.155, z = 35.745 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 160005, gadget_id = 70950138, pos = { x = -5196.755, y = 199.768, z = -4307.924 }, rot = { x = 0.000, y = 89.339, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 160006, gadget_id = 70950138, pos = { x = -5200.984, y = 199.702, z = -4307.963 }, rot = { x = 0.000, y = 270.579, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 160007, gadget_id = 70950138, pos = { x = -5192.797, y = 199.768, z = -4307.851 }, rot = { x = 0.000, y = 89.339, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 160008, gadget_id = 70950138, pos = { x = -5196.755, y = 199.768, z = -4303.187 }, rot = { x = 0.000, y = 89.339, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 160009, gadget_id = 70950138, pos = { x = -5200.984, y = 199.702, z = -4303.226 }, rot = { x = 0.000, y = 270.579, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 160010, gadget_id = 70950138, pos = { x = -5192.797, y = 199.768, z = -4303.114 }, rot = { x = 0.000, y = 89.339, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1160003, name = "VARIABLE_CHANGE_160003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_160003", action = "action_EVENT_VARIABLE_CHANGE_160003" },
		{ config_id = 1160004, name = "GROUP_LOAD_160004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_160004", action = "action_EVENT_GROUP_LOAD_160004" },
		{ config_id = 1160011, name = "GADGET_STATE_CHANGE_160011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160011", action = "action_EVENT_GADGET_STATE_CHANGE_160011" }
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