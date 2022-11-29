-- 基础信息
local base_info = {
	group_id = 155005307
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
		{ config_id = 307001, gadget_id = 70290216, pos = { x = 236.315, y = 326.169, z = 205.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307002, gadget_id = 70290216, pos = { x = 240.259, y = 327.651, z = 204.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307003, gadget_id = 70290216, pos = { x = 241.382, y = 329.905, z = 206.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307004, gadget_id = 70290216, pos = { x = 241.353, y = 333.216, z = 206.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307005, gadget_id = 70290216, pos = { x = 241.543, y = 337.509, z = 205.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307006, gadget_id = 70290216, pos = { x = 246.273, y = 337.697, z = 204.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307007, gadget_id = 70290216, pos = { x = 252.000, y = 337.850, z = 205.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307008, gadget_id = 70290216, pos = { x = 256.188, y = 337.953, z = 203.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307009, gadget_id = 70290216, pos = { x = 257.519, y = 338.007, z = 199.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307010, gadget_id = 70290150, pos = { x = 236.315, y = 326.169, z = 205.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307011, gadget_id = 70290150, pos = { x = 240.259, y = 327.651, z = 204.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307012, gadget_id = 70290150, pos = { x = 241.382, y = 329.905, z = 206.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307013, gadget_id = 70290150, pos = { x = 241.353, y = 333.216, z = 206.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307014, gadget_id = 70290150, pos = { x = 241.543, y = 337.509, z = 205.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307015, gadget_id = 70290150, pos = { x = 246.273, y = 337.697, z = 204.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307016, gadget_id = 70290150, pos = { x = 252.000, y = 337.850, z = 205.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307017, gadget_id = 70290150, pos = { x = 256.188, y = 337.953, z = 203.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307018, gadget_id = 70290150, pos = { x = 257.519, y = 338.007, z = 199.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 307019, gadget_id = 70211111, pos = { x = 258.489, y = 337.008, z = 196.957 }, rot = { x = 0.000, y = 340.532, z = 0.000 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1307020, name = "GROUP_LOAD_307020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_307020", trigger_count = 0 },
		{ config_id = 1307021, name = "VARIABLE_CHANGE_307021", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_307021", trigger_count = 0 },
		{ config_id = 1307022, name = "ANY_GADGET_DIE_307022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_307022", action = "action_EVENT_ANY_GADGET_DIE_307022", trigger_count = 0 },
		{ config_id = 1307023, name = "VARIABLE_CHANGE_307023", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_307023", action = "action_EVENT_VARIABLE_CHANGE_307023", trigger_count = 0 },
		{ config_id = 1307024, name = "LEVEL_TAG_CHANGE_307024", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_307024", action = "action_EVENT_LEVEL_TAG_CHANGE_307024", trigger_count = 0 }
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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