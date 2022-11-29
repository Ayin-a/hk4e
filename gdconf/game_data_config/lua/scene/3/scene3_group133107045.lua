-- 基础信息
local base_info = {
	group_id = 133107045
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
	{ config_id = 45001, gadget_id = 70900051, pos = { x = -452.774, y = 419.434, z = 601.756 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45002, gadget_id = 70310013, pos = { x = -446.571, y = 419.146, z = 600.140 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45003, gadget_id = 70310013, pos = { x = -440.787, y = 419.196, z = 598.644 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45004, gadget_id = 70310013, pos = { x = -434.981, y = 419.196, z = 597.129 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45005, gadget_id = 70310013, pos = { x = -429.176, y = 419.196, z = 595.613 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45006, gadget_id = 70310013, pos = { x = -423.371, y = 419.196, z = 594.097 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45007, gadget_id = 70211111, pos = { x = -411.988, y = 419.683, z = 591.273 }, rot = { x = 0.000, y = 286.922, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 45009, gadget_id = 70310013, pos = { x = -417.849, y = 419.200, z = 592.661 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 45010, gadget_id = 70310013, pos = { x = -412.273, y = 419.200, z = 591.454 }, rot = { x = 0.000, y = 301.752, z = 0.000 }, level = 24, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045008, name = "GADGET_STATE_CHANGE_45008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_45008", action = "action_EVENT_GADGET_STATE_CHANGE_45008" }
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
		gadgets = { 45001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_45008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45002, 45003, 45004, 45005, 45006, 45007, 45009, 45010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	if 45001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_45008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133107045, 2)
	
	return 0
end