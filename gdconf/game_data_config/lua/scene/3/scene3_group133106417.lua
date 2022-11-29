-- 基础信息
local base_info = {
	group_id = 133106417
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
	{ config_id = 417001, gadget_id = 70211012, pos = { x = -814.853, y = 126.395, z = 1663.491 }, rot = { x = 1.165, y = 332.164, z = 358.373 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 417002, gadget_id = 70290200, pos = { x = -834.167, y = 125.986, z = 1675.389 }, rot = { x = 2.054, y = 0.071, z = 355.907 }, level = 36, area_id = 19 },
	{ config_id = 417003, gadget_id = 70310010, pos = { x = -815.260, y = 126.433, z = 1675.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 417004, gadget_id = 70310010, pos = { x = -820.782, y = 126.459, z = 1666.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 19 },
	{ config_id = 417005, gadget_id = 70290200, pos = { x = -871.093, y = 138.646, z = 1702.262 }, rot = { x = 357.086, y = 294.003, z = 356.467 }, level = 36, area_id = 19 },
	{ config_id = 417006, gadget_id = 70220024, pos = { x = -878.994, y = 127.723, z = 1743.285 }, rot = { x = 0.642, y = 239.894, z = 0.365 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 417007, gadget_id = 70290200, pos = { x = -875.290, y = 128.098, z = 1740.415 }, rot = { x = 356.794, y = 294.023, z = 355.764 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417008, name = "ANY_GADGET_DIE_417008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417008", action = "action_EVENT_ANY_GADGET_DIE_417008" }
}

-- 变量
variables = {
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
		gadgets = { 417001, 417002, 417003, 417004, 417005, 417006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_417008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 417007 },
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417008(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106417, 2)
	
	return 0
end