-- 基础信息
local base_info = {
	group_id = 155003016
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
		{ config_id = 16001, gadget_id = 70900007, pos = { x = 1245.485, y = 213.627, z = -711.864 }, rot = { x = 17.739, y = 333.738, z = 4.598 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
		{ config_id = 16002, gadget_id = 70900007, pos = { x = 1272.953, y = 226.911, z = -707.749 }, rot = { x = 3.311, y = 329.154, z = 357.649 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
		{ config_id = 16003, gadget_id = 70900007, pos = { x = 1312.843, y = 262.766, z = -726.948 }, rot = { x = 357.884, y = 59.215, z = 1.430 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 },
		{ config_id = 16004, gadget_id = 70211111, pos = { x = 1294.972, y = 245.770, z = -748.691 }, rot = { x = 354.613, y = 346.507, z = 12.585 }, level = 26, drop_tag = "解谜中级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
		{ config_id = 16005, gadget_id = 70900007, pos = { x = 1349.941, y = 263.034, z = -721.874 }, rot = { x = 357.614, y = 359.901, z = 2.123 }, level = 36, state = GadgetState.Action01, persistent = true, area_id = 200 }
	},
	triggers = {
		{ config_id = 1016006, name = "GADGET_STATE_CHANGE_16006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16006", action = "action_EVENT_GADGET_STATE_CHANGE_16006", trigger_count = 0 },
		{ config_id = 1016007, name = "TIMER_EVENT_16007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_16007", action = "action_EVENT_TIMER_EVENT_16007", trigger_count = 0 },
		{ config_id = 1016008, name = "VARIABLE_CHANGE_16008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_16008", action = "action_EVENT_VARIABLE_CHANGE_16008", trigger_count = 0 },
		{ config_id = 1016009, name = "GROUP_LOAD_16009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_16009", trigger_count = 0 },
		{ config_id = 1016010, name = "VARIABLE_CHANGE_16010", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_16010", trigger_count = 0 }
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
		-- description = suite_1,
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