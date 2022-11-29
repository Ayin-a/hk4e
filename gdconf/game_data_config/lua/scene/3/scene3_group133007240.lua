-- 基础信息
local base_info = {
	group_id = 133007240
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
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 240001, gadget_id = 70211111, pos = { x = 2694.183, y = 238.486, z = 233.256 }, rot = { x = 0.000, y = 14.574, z = 0.000 }, level = 21, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
		{ config_id = 240005, gadget_id = 70360025, pos = { x = 2694.230, y = 239.566, z = 233.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
		{ config_id = 240006, gadget_id = 70900201, pos = { x = 2694.230, y = 239.566, z = 233.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
		{ config_id = 240015, gadget_id = 70900039, pos = { x = 2761.627, y = 239.062, z = 399.631 }, rot = { x = 0.000, y = 277.759, z = 0.000 }, level = 23, persistent = true, area_id = 4 }
	},
	regions = {
		{ config_id = 240008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2694.118, y = 238.457, z = 233.866 }, area_id = 4 }
	},
	triggers = {
		{ config_id = 1240008, name = "ENTER_REGION_240008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_240008", action = "action_EVENT_ENTER_REGION_240008", tag = "666" },
		{ config_id = 1240009, name = "CHALLENGE_SUCCESS_240009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_240009", trigger_count = 0 },
		{ config_id = 1240010, name = "CHALLENGE_FAIL_240010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_240010", trigger_count = 0 },
		{ config_id = 1240011, name = "GADGET_STATE_CHANGE_240011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_240011", action = "action_EVENT_GADGET_STATE_CHANGE_240011", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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