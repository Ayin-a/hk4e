-- 基础信息
local base_info = {
	group_id = 133103371
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
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 371004, gadget_id = 70900039, pos = { x = 993.283, y = 329.360, z = 1509.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
		{ config_id = 371005, gadget_id = 70360025, pos = { x = 851.380, y = 352.105, z = 1763.392 }, rot = { x = 0.000, y = 110.999, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 371008, gadget_id = 70211111, pos = { x = 849.704, y = 352.493, z = 1762.233 }, rot = { x = 4.132, y = 132.239, z = 0.407 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
	},
	regions = {
		{ config_id = 371026, shape = RegionShape.SPHERE, radius = 3, pos = { x = 851.326, y = 352.126, z = 1763.428 }, area_id = 6 },
		{ config_id = 371036, shape = RegionShape.SPHERE, radius = 3, pos = { x = 851.326, y = 352.126, z = 1763.428 }, area_id = 6 }
	},
	triggers = {
		{ config_id = 1371026, name = "ENTER_REGION_371026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371026", action = "", tag = "666" },
		{ config_id = 1371027, name = "CHALLENGE_SUCCESS_371027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_371027", trigger_count = 0 },
		{ config_id = 1371028, name = "CHALLENGE_FAIL_371028", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_371028", trigger_count = 0 },
		{ config_id = 1371029, name = "GADGET_STATE_CHANGE_371029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371029", action = "action_EVENT_GADGET_STATE_CHANGE_371029", trigger_count = 0 },
		{ config_id = 1371035, name = "GADGET_STATE_CHANGE_371035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371035", action = "action_EVENT_GADGET_STATE_CHANGE_371035", trigger_count = 0 },
		{ config_id = 1371036, name = "ENTER_REGION_371036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371036", action = "action_EVENT_ENTER_REGION_371036" }
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
	},
	{
		-- suite_id = 4,
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