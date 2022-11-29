-- 基础信息
local base_info = {
	group_id = 133105094
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
		{ config_id = 240, gadget_id = 70900009, pos = { x = 546.040, y = 239.627, z = -98.487 }, rot = { x = 0.000, y = 56.243, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
		{ config_id = 241, gadget_id = 70900201, pos = { x = 556.009, y = 272.275, z = -109.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
		{ config_id = 242, gadget_id = 70211111, pos = { x = 561.576, y = 272.289, z = -110.182 }, rot = { x = 359.428, y = 230.280, z = 359.311 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
		{ config_id = 94001, gadget_id = 70360025, pos = { x = 555.777, y = 273.653, z = -108.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
	},
	regions = {
		{ config_id = 142, shape = RegionShape.SPHERE, radius = 3, pos = { x = 557.890, y = 273.111, z = -110.008 }, area_id = 9 }
	},
	triggers = {
		{ config_id = 1000142, name = "ENTER_REGION_142", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_142", action = "action_EVENT_ENTER_REGION_142", trigger_count = 0, tag = "9" },
		{ config_id = 1000143, name = "GADGET_STATE_CHANGE_143", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_143", action = "action_EVENT_GADGET_STATE_CHANGE_143", trigger_count = 0 },
		{ config_id = 1000144, name = "CHALLENGE_SUCCESS_144", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "667", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144" },
		{ config_id = 1000145, name = "CHALLENGE_FAIL_145", event = EventType.EVENT_CHALLENGE_FAIL, source = "667", condition = "", action = "action_EVENT_CHALLENGE_FAIL_145", trigger_count = 0 }
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